DROP VIEW CSMRT_OWNER.UM_D_ENRL_ACTION_VW
/

--
-- UM_D_ENRL_ACTION_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_ENRL_ACTION_VW
BEQUEATH DEFINER
AS 
select ENRL_REQ_ACTN_SID, ENRL_REQ_ACTION, SRC_SYS_ID, ENRL_REQ_ACTION_SD, ENRL_REQ_ACTION_LD, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_ENRL_ACTION
/
