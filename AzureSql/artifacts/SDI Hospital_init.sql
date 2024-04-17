

CREATE SCHEMA [Audit] AUTHORIZATION dbo;
GO


CREATE SCHEMA [Master] AUTHORIZATION dbo;
GO
 


CREATE SCHEMA [Raw] AUTHORIZATION dbo;
GO

CREATE SCHEMA [Storage] AUTHORIZATION dbo;
GO

DROP TABLE IF EXISTS [Audit].[Batch];

GO

CREATE TABLE [Audit].[Batch](
	[DIML_Batch_ID] [int] IDENTITY(1,1) NOT NULL,
	[DIML_ExecutionLog_ID] [bigint] NOT NULL,
	[DIML_BimlSource_ID] [smallint] NOT NULL,
	[SourceSystemName] [varchar](50) NOT NULL,
	[SourceServer] [varchar](50) NOT NULL,
	[SourceInstance] [varchar](50) NOT NULL,
	[SourceDatabase] [varchar](50) NOT NULL,
	[TableOrFileName] [varchar](400) NOT NULL,
	[StagingTable] [varchar](400) NOT NULL,
	[StorageTable] [varchar](400) NOT NULL,
	[ChangeTrackingVersion] [bigint] NOT NULL,
	[IsRejected] [bit] NOT NULL,
	[IsMasterPackageCompleted] [bit] NOT NULL,
	[IsAvailableForStaging] [bit] NOT NULL,
	[IsAvailableForStorage] [bit] NOT NULL,
	[IsStorageCompleted] [bit] NOT NULL,
	[IsSourceTableDefinitionChanged] [bit] NOT NULL,
	[IsSourceUsedColumnDefinitionChanged] [bit] NOT NULL,
	[IsReported] [bit] NOT NULL,
	[Server] [varchar](50) NOT NULL,
	[Instance] [varchar](50) NOT NULL,
	[Database] [varchar](50) NOT NULL,
	[SourceDateTime]  AS (CONVERT([datetime2](0),(([SourceDateTimeUTC] AT TIME ZONE 'UTC') AT TIME ZONE 'Central European Standard Time'))),
	[SourceDateTimeUTC] [datetime2](0) NOT NULL,
	[SourceRowCount] [bigint] NOT NULL,
	[TimeWindowStart] [datetime2](0) NOT NULL,
	[TimeWindowEnd] [datetime2](0) NOT NULL,
	[LoadType] [tinyint] NOT NULL,
	[NumberOfRows] [bigint] NOT NULL,
	CONSTRAINT [PK_Batch] PRIMARY KEY CLUSTERED 
	(
		[DIML_Batch_ID] ASC
	)
)

GO

DROP TABLE IF EXISTS [Audit].[BimlSource];

GO

CREATE TABLE [Audit].[BimlSource](
	[DIML_BimlSource_ID] [smallint] IDENTITY(1,1) NOT NULL,
	[BimlSource] [varchar](50) NOT NULL
	CONSTRAINT [PK_BimlSource] PRIMARY KEY CLUSTERED 
	(
		[DIML_BimlSource_ID] ASC
	)
)

GO

DROP TABLE IF EXISTS [Audit].[ExecutionError];

GO

CREATE TABLE [Audit].[ExecutionError](
	[DIML_ExecutionError_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DIML_ExecutionLog_ID] [bigint] NOT NULL,
	[ErrorDateTime] AS (CAST([ErrorDateTimeUTC] AT TIME ZONE 'UTC' AT TIME ZONE 'Central European Standard Time' AS DATETIME2(0))),
	[ErrorDatetimeUTC] [datetime2](0) NOT NULL,
	[ErrorNumber] [int] NULL,
	[ErrorSeverity] [int] NULL,
	[ErrorState] [int] NULL,
	[ErrorLine] [int] NULL,
	[ErrorProcedure] [varchar](128) NULL,
	[ErrorMessage] [nvarchar](4000) NULL,
	CONSTRAINT [PK_ExecutionDetails] PRIMARY KEY CLUSTERED 
	(
		[DIML_ExecutionError_ID] ASC
	)
)

GO

DROP TABLE IF EXISTS [Audit].[ExecutionLog];

GO

CREATE TABLE [Audit].[ExecutionLog](
	[DIML_ExecutionLog_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ParentExecutionLog_ID] [bigint] NOT NULL,
	[PackageName] [varchar](200) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[Server] [varchar](50) NOT NULL,
	[Instance] [varchar](50) NOT NULL,
	[Database] [varchar](50) NOT NULL,
	[StartTime] AS (CAST([StartTimeUTC] AT TIME ZONE 'UTC' AT TIME ZONE 'Central European Standard Time' AS DATETIME2(0))),
	[StartTimeUTC] [datetime2](0) NOT NULL,
	[EndTime] AS (CAST([EndTimeUTC] AT TIME ZONE 'UTC' AT TIME ZONE 'Central European Standard Time' AS DATETIME2(0))),
	[EndTimeUTC] [datetime2](0) NOT NULL,
	[DurationSeconds] AS (CASE WHEN [EndTimeUTC]<>'9999-12-31 23:59:59' THEN datediff(second,[StartTimeUTC],[EndTimeUTC]) END),
	[Status] [char](1) NOT NULL,
	[NumberOfRows] [bigint] NOT NULL,
	CONSTRAINT [PK_ExecutionLog] PRIMARY KEY CLUSTERED 
	(
		[DIML_ExecutionLog_ID] ASC
	)
)

GO


DROP TABLE IF EXISTS [Audit].[SourceTableDefinition];

GO

CREATE TABLE [Audit].[SourceTableDefinition](
	[DIML_SourceTableDefinition_ID] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](100) NOT NULL,
	[TableDefinition] [varchar](MAX) NULL,
	[TableDefinitionHash] [binary](16) NOT NULL,
	[IsUsedColumnChanged] bit NOT NULL,
	[IsCurrent] [bit] NOT NULL,
	[DIML_BimlSource_ID] [smallint] NOT NULL,
	[DIML_Batch_ID] [int] NOT NULL,
	[DIML_InsertTimeUTC] [datetime2](0) NOT NULL,
	[DIML_InsertTime]  AS (CONVERT([datetime2](0),(([DIML_InsertTimeUTC] AT TIME ZONE 'UTC') AT TIME ZONE 'Central European Standard Time'))),
	CONSTRAINT [PK_SourceTableDefinition] PRIMARY KEY CLUSTERED 
	(
		[DIML_SourceTableDefinition_ID] ASC
	)
)

GO
