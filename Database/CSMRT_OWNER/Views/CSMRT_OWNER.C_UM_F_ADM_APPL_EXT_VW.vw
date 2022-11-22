CREATE OR REPLACE VIEW C_UM_F_ADM_APPL_EXT_VW
BEQUEATH DEFINER
AS 
SELECT APPLCNT_SID,
           INSTITUTION_SID,
           EXT_ORG_SID,
           EXT_ACAD_CAR_SID,
           EXT_DATA_NBR,
           EXT_SUMM_TYPE_SID,
           SRC_SYS_ID,
           PERSON_ID,
           INSTITUTION_CD,
           EXT_ORG_ID,
           EXT_ACAD_CAR_ID,
           EXT_SUMM_TYPE_ID,
           EXT_ACAD_LVL_SID,
           EXT_TERM_YEAR_SID,
           EXT_TERM_SID,
           ACAD_UNIT_TYPE_SID,
           ACAD_RANK_TYPE_SID,
           GPA_TYPE_SID,
           LS_DATA_SOURCE,
           LS_DATA_SOURCE_SD,
           LS_DATA_SOURCE_LD,
           TRNSCR_FLG,
           TRNSCR_FLG_LD,
           TRNSCR_TYPE,
           TRNSCR_TYPE_LD,
           TRNSCR_STATUS,
           TRNSCR_DT,
           FROM_DT,
           TO_DT,
           D_EXT_ACAD_LVL_SID,
           D_EXT_TERM_YEAR_SID,
           D_EXT_TERM_SID,
           UNITS_ATTMPTD,
           UNITS_CMPLTD,
           CLASS_RANK,
           CLASS_SIZE,
           CLASS_PERCENTILE,
           EXT_GPA,
           CONVERTED_GPA,
           UM_CUM_CREDIT,
           UM_CUM_GPA,
           UM_CUM_QP,
           UM_GPA_EXCLUDE_FLG,
           UM_EXT_ORG_CR,
           UM_EXT_ORG_QP,
           UM_EXT_ORG_GPA,
           UM_EXT_ORG_CNV_CR,
           UM_EXT_ORG_CNV_GPA,
           UM_EXT_ORG_CNV_QP,
           UM_GPA_OVRD_FLG,
           UM_1_OVRD_HSGPA_FLG,
           UM_CONVERT_GPA,
           ADM_APPL_EXT_ORDER,
           BEST_SUMM_TYPE_GPA_FLG,
           BEST_HS_GPA
      FROM CSMRT_OWNER.UM_F_ADM_APPL_EXT;