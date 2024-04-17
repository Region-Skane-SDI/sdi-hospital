

CREATE PROCEDURE [Storage].[SP_diagnosis_Transform] AS
BEGIN
    INSERT INTO [Storage].[diagnosis]
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
      [DIML_diagnosis_ID],
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
      [DIML_diagnosis_ID],
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
    FROM [Raw].[diagnosis]
END

GO

CREATE PROCEDURE [Storage].[SP_encounters_Transform] AS
BEGIN
    INSERT INTO [Storage].[encounters]
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
      [DIML_encounters_ID],
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
      [DIML_encounters_ID],
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
    FROM [Raw].[encounters]
END

GO

CREATE PROCEDURE [Storage].[SP_encounters_items_Transform] AS
BEGIN
    INSERT INTO [Storage].[encounters_items]
    (
      [encounter_id],
      [item_id],
      [drug_id],
      [quantity],
      [list_price],
      [discount],
      [create_date],
      [update_date],
      [DIML_encounters_items_ID],
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
      [DIML_encounters_items_ID],
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
    FROM [Raw].[encounters_items]
END

GO

CREATE PROCEDURE [Storage].[SP_hospitals_Transform] AS
BEGIN
    INSERT INTO [Storage].[hospitals]
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
      [DIML_hospitals_ID],
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
      [DIML_hospitals_ID],
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
    FROM [Raw].[hospitals]
END

GO

CREATE PROCEDURE [Storage].[SP_patient_diagnosis_Transform] AS
BEGIN
    INSERT INTO [Storage].[patient_diagnosis]
    (
      [patient_diagnosis_id],
      [patient_id],
      [diagnosis_id],
      [create_date],
      [update_date],
      [DIML_patient_diagnosis_ID],
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
      [DIML_patient_diagnosis_ID],
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
    FROM [Raw].[patient_diagnosis]
END

GO

CREATE PROCEDURE [Storage].[SP_patients_Transform] AS
BEGIN
    INSERT INTO [Storage].[patients]
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
      [DIML_patients_ID],
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
      [DIML_patients_ID],
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
    FROM [Raw].[patients]
END

GO

CREATE PROCEDURE [Storage].[SP_staffs_Transform] AS
BEGIN
    INSERT INTO [Storage].[staffs]
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
      [DIML_staffs_ID],
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
      [DIML_staffs_ID],
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
    FROM [Raw].[staffs]
END

GO

CREATE PROCEDURE [Storage].[SP_brands_Transform] AS
BEGIN
    INSERT INTO [Storage].[brands]
    (
      [brand_id],
      [brand_name],
      [create_date],
      [update_date],
      [DIML_brands_ID],
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
      [DIML_brands_ID],
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
    FROM [Raw].[brands]
END

GO

CREATE PROCEDURE [Storage].[SP_categories_Transform] AS
BEGIN
    INSERT INTO [Storage].[categories]
    (
      [category_id],
      [category_name],
      [create_date],
      [update_date],
      [DIML_categories_ID],
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
      [DIML_categories_ID],
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
    FROM [Raw].[categories]
END

GO

CREATE PROCEDURE [Storage].[SP_drugs_Transform] AS
BEGIN
    INSERT INTO [Storage].[drugs]
    (
      [drug_id],
      [drug_name],
      [brand_id],
      [category_id],
      [model_year],
      [list_price],
      [create_date],
      [update_date],
      [DIML_drugs_ID],
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
      [DIML_drugs_ID],
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
    FROM [Raw].[drugs]
END

GO

CREATE PROCEDURE [Storage].[SP_stocks_Transform] AS
BEGIN
    INSERT INTO [Storage].[stocks]
    (
      [hospital_id],
      [drug_id],
      [quantity],
      [create_date],
      [update_date],
      [DIML_stocks_ID],
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
      [DIML_stocks_ID],
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
    FROM [Raw].[stocks]
END

GO
