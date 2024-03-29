DROP VIEW CSMRT_OWNER.UM_F_EXT_ACAD_SUMM_VW
/

--
-- UM_F_EXT_ACAD_SUMM_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_F_EXT_ACAD_SUMM_VW
BEQUEATH DEFINER
AS 
SELECT INSTITUTION_CD,
           PERSON_ID,
           EXT_ORG_ID,
           EXT_ACAD_CAR_ID,
           EXT_DATA_NBR,
           EXT_SUMM_TYPE_ID,
           SRC_SYS_ID,
           INSTITUTION_SID,
           PERSON_SID,
           EXT_ORG_SID,
           EXT_ACAD_CAR_SID,
           EXT_SUMM_TYPE_SID,
           ACAD_RANK_TYPE_SID,
           ACAD_UNIT_TYPE_SID,
           EXT_ACAD_LVL_SID,
           EXT_TERM_SID,
           EXT_TERM_YEAR_SID,
           GPA_TYPE_SID,
           D_EXT_ACAD_LVL_SID,
           D_EXT_TERM_YEAR_SID,
           D_EXT_TERM_SID,
           BEST_SUMM_TYPE_GPA_FLG,
           CLASS_RANK,
           CLASS_SIZE,
           CLASS_PERCENTILE,
           FROM_DT,
           TO_DT,
           LS_DATA_SOURCE,
           TRNSCR_FLG,
           TRNSCR_TYPE,
           TRNSCR_STATUS,
           TRNSCR_DT,
           CONVERTED_GPA,
           EXT_GPA,
           UNITS_ATTMPTD,
           UNITS_CMPLTD,
           UM_CONVERT_GPA,
--           UM_CUM_CREDIT,
--           UM_CUM_GPA,
--           UM_CUM_QP,
case when INSTITUTION_CD = 'UMBOS' then UM_CUM_CREDIT else UM_CUM_CREDIT_AGG end UM_CUM_CREDIT,     -- Aug 2022
case when INSTITUTION_CD = 'UMBOS' then UM_CUM_GPA else UM_CUM_GPA_AGG end UM_CUM_GPA,              -- Aug 2022
case when INSTITUTION_CD = 'UMBOS' then UM_CUM_QP else UM_CUM_QP_AGG end UM_CUM_QP,                 -- Aug 2022
           UM_CUM_CREDIT_AGG,   -- Aug 2022
           UM_CUM_GPA_AGG,      -- Aug 2022
           UM_CUM_QP_AGG,       -- Aug 2022
           UM_EXT_ORG_CR,
           UM_EXT_ORG_QP,
           UM_EXT_ORG_GPA,
           UM_EXT_ORG_CNV_CR,
           UM_EXT_ORG_CNV_GPA,
           UM_EXT_ORG_CNV_QP,
           UM_GPA_EXCLUDE_FLG,
           UM_GPA_OVRD_FLG,
           UM_1_OVRD_HSGPA_FLG,
           UM_EXT_OR_MTSC_GPA,
           MS_CONVERT_GPA,
           MAX_DATA_ROW,        -- Aug 2022
           LOAD_ERROR,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM,
           BATCH_SID
      FROM CSMRT_OWNER.PS_F_EXT_ACAD_SUMM
/
