DROP VIEW CSMRT_OWNER.UM_D_ACAD_SPLAN_VW
/

--
-- UM_D_ACAD_SPLAN_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_ACAD_SPLAN_VW
BEQUEATH DEFINER
AS 
SELECT 
           ACAD_SPLAN_SID,
           EFFDT,
           INSTITUTION_CD,
           ACAD_PLAN_CD,
           ACAD_SPLAN_CD,
           SRC_SYS_ID,
           EFFDT_START,
           EFFDT_END,
           EFFDT_ORDER,
           EFF_STAT_CD,
           ACAD_SPLAN_SD,
           ACAD_SPLAN_LD,
           ACAD_SPLAN_CD_DESC,
           ACAD_PLAN_SID,
           INSTITUTION_SID,
           ACAD_SPLAN_TYPE_CD,
           ACAD_SPLAN_TYPE_SD,
           ACAD_SPLAN_TYPE_LD,
           ACAD_SPLAN_TYPE_CD_DESC,
           CIP_CD,
           CIP_LD,
           DIPLOMA_LD,
           DIPLOMA_PRINT_FLG,
           EVALUATE_SPLAN_FLG,
           SEV_VALID_CIP_FLG,
           SPLAN_REQTRM_DFLT,
           SPLAN_REQTRM_DFLT_SD,
           SPLAN_REQTRM_DFLT_LD,
           TRNSCR_DESCR,
           TRNSCR_PRINT_FLG,
           UM_STEM_FLG,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM UM_D_ACAD_SPLAN
/
