DROP VIEW CSMRT_OWNER.UM_D_ACAD_PROG_VW
/

--
-- UM_D_ACAD_PROG_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_ACAD_PROG_VW
BEQUEATH DEFINER
AS 
SELECT 
           ACAD_PROG_SID,
           EFFDT,
           INSTITUTION_CD,
           ACAD_PROG_CD,
           SRC_SYS_ID,
           EFFDT_START,
           EFFDT_END,
           EFFDT_ORDER,
           EFF_STAT_CD,
           ACAD_PROG_SD,
           ACAD_PROG_LD,
           ACAD_PROG_CD_DESC,
           ACAD_CAR_SID,
           ACAD_GRP_SID,
           ACAD_ORG_SID,
           --       ACAD_PLAN_SID,
           CAMPUS_SID,
           INSTITUTION_SID,
           --       ACAD_CAL_ID, ACAD_CAL_SD, ACAD_CAL_LD,
           ACAD_STDNG_RULE,
           CALC_AS_BATCH_ONLY_FLG,
           CAR_PTR_EXC_FLG,
           CAR_PTR_EXC_RULE,
           CIP_CD,
           CIP_LD,
           --       EXCL_TRM_CAT_AS_1, EXCL_TRM_CAT_AS_2,
           FA_ELIG_FLG,
           FA_PRIMACY_NBR,
           GRADE_TRANSFER,
           GRADING_SCHEME,
           GRADING_BASIS,
           INCOMPLETE_GRADE,
           LAPSE_GRADE_FLG,
           LAPSE_TO_GRADE,
           LAPSE_DAYS,
           LEVEL_LOAD_RULE,
           OEE_IND,
           REPEAT_ENRL_CTL_FLG,
           REPEAT_ENRL_SUSP_FLG,
           REPEAT_GRD_CK,
           REPEAT_GRD_CK_SD,
           REPEAT_GRD_CK_LD,
           REPEAT_GRD_SUSP_FLG,
           REPEAT_CRSE_ERROR,
           REPEAT_CRSE_ERROR_SD,
           REPEAT_CRSE_ERROR_LD,
           REPEAT_RULE,
           RES_REQ_FLG,
           SEV_VALID_CIP_FLG,
           UM_STEM_FLG,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM UM_D_ACAD_PROG
/
