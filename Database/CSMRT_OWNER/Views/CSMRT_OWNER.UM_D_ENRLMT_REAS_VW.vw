DROP VIEW CSMRT_OWNER.UM_D_ENRLMT_REAS_VW
/

--
-- UM_D_ENRLMT_REAS_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_ENRLMT_REAS_VW
BEQUEATH DEFINER
AS 
select ENRLMT_REAS_SID, ENRLMT_REAS_ID, SRC_SYS_ID, ENRLMT_REAS_SD, ENRLMT_REAS_LD, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_ENRLMT_REAS
/
