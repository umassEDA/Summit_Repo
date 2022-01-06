CREATE OR REPLACE VIEW UM_D_PERSON_ETHNICITY_VW
BEQUEATH DEFINER
AS 
SELECT PERSON_SID,
           ETHNIC_GRP_SID,
           SRC_SYS_ID,
           PERSON_ID      EMPLID,
           PERSON_ID,
           ETHNIC_GRP_CD,
           REG_REGION,
           2147483646     ETHNICITY_SID,
           'USA'          SRC_SETID,
           'USA'          SETID,
           PRIMARY_FLAG,
           IPEDS_FLG,
           HISP_LATINO_FLG,
           ETHNIC_PCT_NUMRATR,
           ETHNIC_PCT_DENMRTR,
           LASTUPDDTTM,
           LASTUPDOPRID,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM UM_D_PERSON_ETHNICITY
     WHERE DATA_ORIGIN <> 'D';
