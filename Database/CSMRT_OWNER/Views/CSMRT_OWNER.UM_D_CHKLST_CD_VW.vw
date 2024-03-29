DROP VIEW CSMRT_OWNER.UM_D_CHKLST_CD_VW
/

--
-- UM_D_CHKLST_CD_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_CHKLST_CD_VW
BEQUEATH DEFINER
AS 
select CHKLIST_CD_SID, INSTITUTION_CD, CHECKLIST_CD, SRC_SYS_ID, EFFDT, EFF_STAT_CD, 
       CHKLIST_CD_SD, CHKLIST_CD_LD, ADMIN_FUNCTION, COMM_KEY, DEFAULT_DUE_DT, DUE_DAYS, 
       SCC_CHECKLIST_TYPE, SCC_TODO_SS_DISP, TRACKING_GROUP, TRACKING_GROUP_SD, TRACKING_GROUP_LD, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_CHKLST_CD
/
