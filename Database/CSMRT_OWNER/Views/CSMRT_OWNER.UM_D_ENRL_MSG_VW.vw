DROP VIEW CSMRT_OWNER.UM_D_ENRL_MSG_VW
/

--
-- UM_D_ENRL_MSG_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_ENRL_MSG_VW
BEQUEATH DEFINER
AS 
select MESSAGE_SET_NBR, MESSAGE_NBR, SRC_SYS_ID, 
       MESSAGE_TEXT, MSG_SEVERITY, LAST_UPDATE_DTTM, DESCRLONG, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from UM_D_ENRL_MSG
/
