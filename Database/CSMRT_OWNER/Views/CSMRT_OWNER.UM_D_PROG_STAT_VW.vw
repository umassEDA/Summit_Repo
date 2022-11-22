DROP VIEW CSMRT_OWNER.UM_D_PROG_STAT_VW
/

--
-- UM_D_PROG_STAT_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_PROG_STAT_VW
BEQUEATH DEFINER
AS 
select PROG_STAT_SID, PROG_STAT_CD, SRC_SYS_ID, 
       PROG_STAT_SD, PROG_STAT_LD,
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_PROG_STAT
/
