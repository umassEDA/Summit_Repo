DROP VIEW CSMRT_OWNER.UM_D_ENRL_HDR_STAT_VW
/

--
-- UM_D_ENRL_HDR_STAT_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_ENRL_HDR_STAT_VW
BEQUEATH DEFINER
AS 
select ENRL_HDR_STAT_SID,ENRL_REQ_PROC_ST,HDR_STATUS_SD,HDR_STATUS_LD,SRC_SYS_ID,EFF_START_DT,EFF_END_DT,CURRENT_IND,LOAD_ERROR,DATA_ORIGIN,CREATED_EW_DTTM,LASTUPD_EW_DTTM,BATCH_SID from CSMRT_OWNER.PS_D_ENRL_HDR_STAT
/
