CREATE OR REPLACE VIEW UM_R_ACAD_PLAN_OWNER_VW
BEQUEATH DEFINER
AS 
SELECT INSTITUTION_CD,
           ACAD_PLAN_CD,
           EFFDT,
           ACAD_ORG_CD,
           SRC_SYS_ID,
           EFFDT_START,
           EFFDT_END,
           EFFDT_ORDER,
           INSTITUTION_SID,
           ACAD_PLAN_SID,
           ACAD_ORG_SID,
           PERCENT_OWNED,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM PS_R_ACAD_PLAN_OWNER
     where EFFDT_ORDER = 1;
