CREATE OR REPLACE VIEW UM_D_STDNT_ATTR_VAL_VW
BEQUEATH DEFINER
AS 
SELECT PERSON_ID,
           ACAD_CAR_CD,
           STDNT_CAR_NUM,
           STDNT_ATTR,
           STDNT_ATTR_VALUE,
           SRC_SYS_ID,
           INSTITUTION_CD,
           EFFDT,
           EFFSEQ,
           INSTITUTION_SID,
           ACAD_CAR_SID,
           PERSON_SID,
           STDNT_ATTR_SD,
           STDNT_ATTR_LD,
           STDNT_ATTR_VAL_SD,
           STDNT_ATTR_VAL_LD,
           UMBOS_UGRD_SECOND_DEGR_FLG,
           ATTR_ORDER,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM UM_D_STDNT_ATTR_VAL
     where DATA_ORIGIN <> 'D';
