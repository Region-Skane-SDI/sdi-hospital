

CREATE TABLE [Raw].[diagnosis] (
     [diagnosis_id] bigint NOT NULL,
     [diagnosis_category_code] varchar(50) NULL,
     [diagnosis_code] varchar(50) NULL,
     [diagnosis_full_code] varchar(50) NULL,
     [abbreviated_description] varchar(2000) NULL,
     [full description] varchar(2000) NULL,
     [category title] varchar(2000) NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_diagnosis_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Raw].[encounters] (
     [encounter_id] int NOT NULL,
     [patient_id] int NULL,
     [encounter_status] tinyint NOT NULL,
     [order_date] date NOT NULL,
     [required_date] date NOT NULL,
     [shipped_date] date NULL,
     [hospital_id] int NOT NULL,
     [staff_id] int NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_encounters_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Raw].[encounters_items] (
     [encounter_id] int NOT NULL,
     [item_id] int NOT NULL,
     [drug_id] int NOT NULL,
     [quantity] int NOT NULL,
     [list_price] numeric(10, 2) NOT NULL,
     [discount] numeric(4, 2) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_encounters_items_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Raw].[hospitals] (
     [hospital_id] int NOT NULL,
     [hospital_name] varchar(255) NOT NULL,
     [phone] varchar(25) NULL,
     [email] varchar(255) NULL,
     [street] varchar(255) NULL,
     [city] varchar(255) NULL,
     [state] varchar(10) NULL,
     [zip_code] varchar(5) NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_hospitals_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Raw].[patient_diagnosis] (
     [patient_diagnosis_id] bigint NOT NULL,
     [patient_id] bigint NULL,
     [diagnosis_id] bigint NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_patient_diagnosis_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Raw].[patients] (
     [patient_id] int NOT NULL,
     [first_name] varchar(255) NOT NULL,
     [last_name] varchar(255) NOT NULL,
     [phone] varchar(25) NULL,
     [email] varchar(255) NOT NULL,
     [street] varchar(255) NULL,
     [city] varchar(50) NULL,
     [state] varchar(25) NULL,
     [zip_code] varchar(5) NULL,
     [social_security_number] varchar(255) NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_patients_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Raw].[staffs] (
     [staff_id] int NOT NULL,
     [first_name] varchar(50) NOT NULL,
     [last_name] varchar(50) NOT NULL,
     [email] varchar(255) NOT NULL,
     [phone] varchar(25) NULL,
     [active] tinyint NOT NULL,
     [hospital_id] int NOT NULL,
     [manager_id] int NULL,
     [social_security_number] bigint NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_staffs_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Raw].[brands] (
     [brand_id] int NOT NULL,
     [brand_name] varchar(255) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_brands_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Raw].[categories] (
     [category_id] int NOT NULL,
     [category_name] varchar(255) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_categories_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Raw].[drugs] (
     [drug_id] int NOT NULL,
     [drug_name] varchar(255) NOT NULL,
     [brand_id] int NOT NULL,
     [category_id] int NOT NULL,
     [model_year] smallint NOT NULL,
     [list_price] numeric(10, 2) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_drugs_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Raw].[stocks] (
     [hospital_id] int NOT NULL,
     [drug_id] int NOT NULL,
     [quantity] int NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_stocks_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Storage].[diagnosis] (
     [diagnosis_id] bigint NOT NULL,
     [diagnosis_category_code] varchar(50) NULL,
     [diagnosis_code] varchar(50) NULL,
     [diagnosis_full_code] varchar(50) NULL,
     [abbreviated_description] varchar(2000) NULL,
     [full description] varchar(2000) NULL,
     [category title] varchar(2000) NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_diagnosis_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Storage].[encounters] (
     [encounter_id] int NOT NULL,
     [patient_id] int NULL,
     [encounter_status] tinyint NOT NULL,
     [order_date] date NOT NULL,
     [required_date] date NOT NULL,
     [shipped_date] date NULL,
     [hospital_id] int NOT NULL,
     [staff_id] int NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_encounters_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Storage].[encounters_items] (
     [encounter_id] int NOT NULL,
     [item_id] int NOT NULL,
     [drug_id] int NOT NULL,
     [quantity] int NOT NULL,
     [list_price] numeric(10, 2) NOT NULL,
     [discount] numeric(4, 2) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_encounters_items_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Storage].[hospitals] (
     [hospital_id] int NOT NULL,
     [hospital_name] varchar(255) NOT NULL,
     [phone] varchar(25) NULL,
     [email] varchar(255) NULL,
     [street] varchar(255) NULL,
     [city] varchar(255) NULL,
     [state] varchar(10) NULL,
     [zip_code] varchar(5) NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_hospitals_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Storage].[patient_diagnosis] (
     [patient_diagnosis_id] bigint NOT NULL,
     [patient_id] bigint NULL,
     [diagnosis_id] bigint NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_patient_diagnosis_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Storage].[patients] (
     [patient_id] int NOT NULL,
     [first_name] varchar(255) NOT NULL,
     [last_name] varchar(255) NOT NULL,
     [phone] varchar(25) NULL,
     [email] varchar(255) NOT NULL,
     [street] varchar(255) NULL,
     [city] varchar(50) NULL,
     [state] varchar(25) NULL,
     [zip_code] varchar(5) NULL,
     [social_security_number] varchar(255) NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_patients_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Storage].[staffs] (
     [staff_id] int NOT NULL,
     [first_name] varchar(50) NOT NULL,
     [last_name] varchar(50) NOT NULL,
     [email] varchar(255) NOT NULL,
     [phone] varchar(25) NULL,
     [active] tinyint NOT NULL,
     [hospital_id] int NOT NULL,
     [manager_id] int NULL,
     [social_security_number] bigint NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_staffs_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Storage].[brands] (
     [brand_id] int NOT NULL,
     [brand_name] varchar(255) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_brands_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Storage].[categories] (
     [category_id] int NOT NULL,
     [category_name] varchar(255) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_categories_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Storage].[drugs] (
     [drug_id] int NOT NULL,
     [drug_name] varchar(255) NOT NULL,
     [brand_id] int NOT NULL,
     [category_id] int NOT NULL,
     [model_year] smallint NOT NULL,
     [list_price] numeric(10, 2) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_drugs_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO

CREATE TABLE [Storage].[stocks] (
     [hospital_id] int NOT NULL,
     [drug_id] int NOT NULL,
     [quantity] int NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_stocks_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2 NULL,
     [DIML_LastUpdateTime_UTC] datetime2 NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2 NULL,
     [DIML_SCD2_EndTime] datetime2 NULL
)

GO
