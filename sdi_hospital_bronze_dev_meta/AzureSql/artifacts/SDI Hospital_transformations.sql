

CREATE PROCEDURE [Storage].[SP_healthcare_diagnosis_Transform] AS
BEGIN
    INSERT INTO [Storage].[healthcare_diagnosis]
    (
      [diagnosis_id],
      [diagnosis_category_code],
      [diagnosis_code],
      [diagnosis_full_code],
      [abbreviated_description],
      [full description],
      [category title],
      [create_date],
      [update_date],
      [DIML_healthcare_diagnosis_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    )
    SELECT
      [diagnosis_id],
      [diagnosis_category_code],
      [diagnosis_code],
      [diagnosis_full_code],
      [abbreviated_description],
      [full description],
      [category title],
      [create_date],
      [update_date],
      [DIML_healthcare_diagnosis_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    FROM [Raw].[healthcare_diagnosis]
END

GO

CREATE PROCEDURE [Storage].[SP_healthcare_encounters_Transform] AS
BEGIN
    INSERT INTO [Storage].[healthcare_encounters]
    (
      [encounter_id],
      [patient_id],
      [encounter_status],
      [order_date],
      [required_date],
      [shipped_date],
      [hospital_id],
      [staff_id],
      [create_date],
      [update_date],
      [DIML_healthcare_encounters_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    )
    SELECT
      [encounter_id],
      [patient_id],
      [encounter_status],
      [order_date],
      [required_date],
      [shipped_date],
      [hospital_id],
      [staff_id],
      [create_date],
      [update_date],
      [DIML_healthcare_encounters_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    FROM [Raw].[healthcare_encounters]
END

GO

CREATE PROCEDURE [Storage].[SP_healthcare_encounters_items_Transform] AS
BEGIN
    INSERT INTO [Storage].[healthcare_encounters_items]
    (
      [encounter_id],
      [item_id],
      [drug_id],
      [quantity],
      [list_price],
      [discount],
      [create_date],
      [update_date],
      [DIML_healthcare_encounters_items_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    )
    SELECT
      [encounter_id],
      [item_id],
      [drug_id],
      [quantity],
      [list_price],
      [discount],
      [create_date],
      [update_date],
      [DIML_healthcare_encounters_items_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    FROM [Raw].[healthcare_encounters_items]
END

GO

CREATE PROCEDURE [Storage].[SP_healthcare_hospitals_Transform] AS
BEGIN
    INSERT INTO [Storage].[healthcare_hospitals]
    (
      [hospital_id],
      [hospital_name],
      [phone],
      [email],
      [street],
      [city],
      [state],
      [zip_code],
      [create_date],
      [update_date],
      [DIML_healthcare_hospitals_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    )
    SELECT
      [hospital_id],
      [hospital_name],
      [phone],
      [email],
      [street],
      [city],
      [state],
      [zip_code],
      [create_date],
      [update_date],
      [DIML_healthcare_hospitals_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    FROM [Raw].[healthcare_hospitals]
END

GO

CREATE PROCEDURE [Storage].[SP_healthcare_patient_diagnosis_Transform] AS
BEGIN
    INSERT INTO [Storage].[healthcare_patient_diagnosis]
    (
      [patient_diagnosis_id],
      [patient_id],
      [diagnosis_id],
      [create_date],
      [update_date],
      [DIML_healthcare_patient_diagnosis_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    )
    SELECT
      [patient_diagnosis_id],
      [patient_id],
      [diagnosis_id],
      [create_date],
      [update_date],
      [DIML_healthcare_patient_diagnosis_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    FROM [Raw].[healthcare_patient_diagnosis]
END

GO

CREATE PROCEDURE [Storage].[SP_healthcare_patients_Transform] AS
BEGIN
    INSERT INTO [Storage].[healthcare_patients]
    (
      [patient_id],
      [first_name],
      [last_name],
      [phone],
      [email],
      [street],
      [city],
      [state],
      [zip_code],
      [social_security_number],
      [create_date],
      [update_date],
      [DIML_healthcare_patients_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    )
    SELECT
      [patient_id],
      [first_name],
      [last_name],
      [phone],
      [email],
      [street],
      [city],
      [state],
      [zip_code],
      [social_security_number],
      [create_date],
      [update_date],
      [DIML_healthcare_patients_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    FROM [Raw].[healthcare_patients]
END

GO

CREATE PROCEDURE [Storage].[SP_healthcare_staffs_Transform] AS
BEGIN
    INSERT INTO [Storage].[healthcare_staffs]
    (
      [staff_id],
      [first_name],
      [last_name],
      [email],
      [phone],
      [active],
      [hospital_id],
      [manager_id],
      [social_security_number],
      [create_date],
      [update_date],
      [DIML_healthcare_staffs_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    )
    SELECT
      [staff_id],
      [first_name],
      [last_name],
      [email],
      [phone],
      [active],
      [hospital_id],
      [manager_id],
      [social_security_number],
      [create_date],
      [update_date],
      [DIML_healthcare_staffs_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    FROM [Raw].[healthcare_staffs]
END

GO

CREATE PROCEDURE [Storage].[SP_medication_brands_Transform] AS
BEGIN
    INSERT INTO [Storage].[medication_brands]
    (
      [brand_id],
      [brand_name],
      [create_date],
      [update_date],
      [DIML_medication_brands_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    )
    SELECT
      [brand_id],
      [brand_name],
      [create_date],
      [update_date],
      [DIML_medication_brands_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    FROM [Raw].[medication_brands]
END

GO

CREATE PROCEDURE [Storage].[SP_medication_categories_Transform] AS
BEGIN
    INSERT INTO [Storage].[medication_categories]
    (
      [category_id],
      [category_name],
      [create_date],
      [update_date],
      [DIML_medication_categories_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    )
    SELECT
      [category_id],
      [category_name],
      [create_date],
      [update_date],
      [DIML_medication_categories_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    FROM [Raw].[medication_categories]
END

GO

CREATE PROCEDURE [Storage].[SP_medication_drugs_Transform] AS
BEGIN
    INSERT INTO [Storage].[medication_drugs]
    (
      [drug_id],
      [drug_name],
      [brand_id],
      [category_id],
      [model_year],
      [list_price],
      [create_date],
      [update_date],
      [DIML_medication_drugs_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    )
    SELECT
      [drug_id],
      [drug_name],
      [brand_id],
      [category_id],
      [model_year],
      [list_price],
      [create_date],
      [update_date],
      [DIML_medication_drugs_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    FROM [Raw].[medication_drugs]
END

GO

CREATE PROCEDURE [Storage].[SP_medication_stocks_Transform] AS
BEGIN
    INSERT INTO [Storage].[medication_stocks]
    (
      [hospital_id],
      [drug_id],
      [quantity],
      [create_date],
      [update_date],
      [DIML_medication_stocks_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    )
    SELECT
      [hospital_id],
      [drug_id],
      [quantity],
      [create_date],
      [update_date],
      [DIML_medication_stocks_ID],
      [DIML_ExecutionLog_ID],
      [DIML_Batch_ID],
      [DIML_KeyHash],
      [DIML_RowHash],
      [DIML_CreateTime_UTC],
      [DIML_LastUpdateTime_UTC],
      [DIML_IsDeleted],
      [DIML_CDC_Action],
      [DIML_SCD2_IsCurrent],
      [DIML_SCD2_StartTime],
      [DIML_SCD2_EndTime]
    FROM [Raw].[medication_stocks]
END

GO
