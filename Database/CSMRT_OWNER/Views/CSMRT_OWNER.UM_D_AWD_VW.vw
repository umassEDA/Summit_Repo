DROP VIEW CSMRT_OWNER.UM_D_AWD_VW
/

--
-- UM_D_AWD_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_AWD_VW
BEQUEATH DEFINER
AS 
select AWD_SID, INSTITUTION_CD, AWD_CD, SRC_SYS_ID, EFFDT, EFF_STAT_CD, 
       AWD_SD, AWD_LD, AWD_FD, INT_EXT_CD, INT_EXT_SD, INT_EXT_LD, GRANTOR_NM, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_AWD
/
