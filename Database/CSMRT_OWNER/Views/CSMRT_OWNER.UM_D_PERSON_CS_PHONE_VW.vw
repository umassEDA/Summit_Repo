CREATE OR REPLACE VIEW UM_D_PERSON_CS_PHONE_VW
BEQUEATH DEFINER
AS 
SELECT PERSON_ID,
           PHONE_TYPE,
           SRC_SYS_ID,
           PERSON_SID,
           PERSON_ID     EMPLID,
           COUNTRY_CODE,
           PHONE,
           EXTENSION,
           PREF_PHONE_FLAG,
           PHONE_ORDER,
           CEL2_PHONE,
           RESH_PHONE,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM UM_D_PERSON_PHONE
     WHERE DATA_ORIGIN <> 'D';