DROP VIEW CSMRT_OWNER.UM_R_PERSON_ASSOC_VW
/

--
-- UM_R_PERSON_ASSOC_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_R_PERSON_ASSOC_VW
BEQUEATH DEFINER
AS 
SELECT INSTITUTION_CD,
           PERSON_ID,
           SRC_SYS_ID,
           PERSON_SID,
           CAST ('-' AS VARCHAR2 (1))     ACTIVE_INTL_FLG,
           CURRENT_ATHL_FLG,
           CURRENT_HONORS_FLG,
           BEACON_CARD_ID,
           CAST ('-' AS VARCHAR2 (1))     INIT_SEVIS_FLG,
           ENRLMT_MIN_PERSON_TERM_SID,
           PERSON_ACCOM_SID,
           PERSON_ADDR_SID,
           PERSON_ATHL_SID,
           PERSON_ATTRIBUTE_SID,
           PERSON_CITIZEN_SID,
           PERSON_EMAIL_SID,
           PERSON_ETHNICITY_SID,
           PERSON_HOUSING_SID,      -- Apr 2020
           PERSON_INTL_SID,
           PERSON_NAME_SID,
           PERSON_PHONE_SID,
           PERSON_RSDNCY_SID,
           PERSON_SRVC_IND_SID,
           PERSON_VISA_SID,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM UM_R_PERSON_ASSOC
/
