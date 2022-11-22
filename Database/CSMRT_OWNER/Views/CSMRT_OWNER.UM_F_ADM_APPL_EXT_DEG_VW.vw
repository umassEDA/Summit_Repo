CREATE OR REPLACE VIEW UM_F_ADM_APPL_EXT_DEG_VW
BEQUEATH DEFINER
AS 
SELECT APPLCNT_SID,
          INSTITUTION_SID,
          EXT_ORG_SID,
          EXT_ACAD_CAR_SID,
          EXT_DATA_NBR,
          EXT_DEG_NBR,
          SRC_SYS_ID,
          INSTITUTION_CD,
          EMPLID,
          EXT_ORG_ID,
          EXT_ACAD_CAR_ID,
          DESCR,
          EXT_DEG_SID,
          EXT_DATA_SRC_SID,
          EXT_SUBJECT_AREA_SID_1,
          EXT_SUBJECT_AREA_SID_2,
          EXT_CAREER,
          EXT_CAREER_SD,
          EXT_CAREER_LD,
          EXT_DEG_DT,
          EXT_DEG_STAT_ID,
          EXT_DEG_STAT_SD,
          EXT_DEG_STAT_LD,
          FIELD_OF_STUDY_1,
          FIELD_OF_STUDY_2,
          HONORS_CATEGORY,
          HONORS_CATEGORY_SD,
          HONORS_CATEGORY_LD
     FROM CSMRT_OWNER.UM_F_ADM_APPL_EXT_DEG
    where ROWNUM < 1000000000;