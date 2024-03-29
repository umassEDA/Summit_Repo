DROP VIEW CSMRT_OWNER.UM_D_RFRL_GRP_VW
/

--
-- UM_D_RFRL_GRP_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_RFRL_GRP_VW
BEQUEATH DEFINER
AS 
SELECT RFRL_GRP_SID, INSTITUTION_CD, RFRL_GRP, SRC_SYS_ID,
           DESCR, DESCRSHORT,
           DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
      FROM CSMRT_OWNER.UM_D_RFRL_GRP
/
