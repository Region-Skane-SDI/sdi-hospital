

CREATE TABLE [Raw].[healthcare_diagnosis] (
     [diagnosis_id] bigint NOT NULL,
     [diagnosis_category_code] varchar(50) NULL,
     [diagnosis_code] varchar(50) NULL,
     [diagnosis_full_code] varchar(50) NULL,
     [abbreviated_description] varchar(2000) NULL,
     [full description] varchar(2000) NULL,
     [category title] varchar(2000) NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_healthcare_diagnosis_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Raw].[healthcare_encounters] (
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
     [DIML_healthcare_encounters_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Raw].[healthcare_encounters_items] (
     [encounter_id] int NOT NULL,
     [item_id] int NOT NULL,
     [drug_id] int NOT NULL,
     [quantity] int NOT NULL,
     [list_price] numeric(10, 2) NOT NULL,
     [discount] numeric(4, 2) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_healthcare_encounters_items_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Raw].[healthcare_hospitals] (
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
     [DIML_healthcare_hospitals_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Raw].[healthcare_patient_diagnosis] (
     [patient_diagnosis_id] bigint NOT NULL,
     [patient_id] bigint NULL,
     [diagnosis_id] bigint NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_healthcare_patient_diagnosis_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Raw].[healthcare_patients] (
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
     [DIML_healthcare_patients_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Raw].[healthcare_staffs] (
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
     [DIML_healthcare_staffs_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Raw].[medication_brands] (
     [brand_id] int NOT NULL,
     [brand_name] varchar(255) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_medication_brands_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Raw].[medication_categories] (
     [category_id] int NOT NULL,
     [category_name] varchar(255) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_medication_categories_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Raw].[medication_drugs] (
     [drug_id] int NOT NULL,
     [drug_name] varchar(255) NOT NULL,
     [brand_id] int NOT NULL,
     [category_id] int NOT NULL,
     [model_year] smallint NOT NULL,
     [list_price] numeric(10, 2) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_medication_drugs_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Raw].[medication_stocks] (
     [hospital_id] int NOT NULL,
     [drug_id] int NOT NULL,
     [quantity] int NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_medication_stocks_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Storage].[healthcare_diagnosis] (
     [diagnosis_id] bigint NOT NULL,
     [diagnosis_category_code] varchar(50) NULL,
     [diagnosis_code] varchar(50) NULL,
     [diagnosis_full_code] varchar(50) NULL,
     [abbreviated_description] varchar(2000) NULL,
     [full description] varchar(2000) NULL,
     [category title] varchar(2000) NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_healthcare_diagnosis_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Storage].[healthcare_encounters] (
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
     [DIML_healthcare_encounters_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Storage].[healthcare_encounters_items] (
     [encounter_id] int NOT NULL,
     [item_id] int NOT NULL,
     [drug_id] int NOT NULL,
     [quantity] int NOT NULL,
     [list_price] numeric(10, 2) NOT NULL,
     [discount] numeric(4, 2) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_healthcare_encounters_items_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Storage].[healthcare_hospitals] (
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
     [DIML_healthcare_hospitals_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Storage].[healthcare_patient_diagnosis] (
     [patient_diagnosis_id] bigint NOT NULL,
     [patient_id] bigint NULL,
     [diagnosis_id] bigint NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_healthcare_patient_diagnosis_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Storage].[healthcare_patients] (
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
     [DIML_healthcare_patients_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Storage].[healthcare_staffs] (
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
     [DIML_healthcare_staffs_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Storage].[medication_brands] (
     [brand_id] int NOT NULL,
     [brand_name] varchar(255) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_medication_brands_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Storage].[medication_categories] (
     [category_id] int NOT NULL,
     [category_name] varchar(255) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_medication_categories_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Storage].[medication_drugs] (
     [drug_id] int NOT NULL,
     [drug_name] varchar(255) NOT NULL,
     [brand_id] int NOT NULL,
     [category_id] int NOT NULL,
     [model_year] smallint NOT NULL,
     [list_price] numeric(10, 2) NOT NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_medication_drugs_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO

CREATE TABLE [Storage].[medication_stocks] (
     [hospital_id] int NOT NULL,
     [drug_id] int NOT NULL,
     [quantity] int NULL,
     [create_date] datetime2(7) NULL,
     [update_date] datetime2(7) NULL,
     [DIML_medication_stocks_ID] int NULL,
     [DIML_ExecutionLog_ID] int NULL,
     [DIML_Batch_ID] int NULL,
     [DIML_KeyHash] binary NULL,
     [DIML_RowHash] binary NULL,
     [DIML_CreateTime_UTC] datetime2(0) NULL,
     [DIML_LastUpdateTime_UTC] datetime2(0) NULL,
     [DIML_IsDeleted] bit NULL,
     [DIML_CDC_Action] char(1) NULL,
     [DIML_SCD2_IsCurrent] bit NULL,
     [DIML_SCD2_StartTime] datetime2(0) NULL,
     [DIML_SCD2_EndTime] datetime2(0) NULL
)

GO
