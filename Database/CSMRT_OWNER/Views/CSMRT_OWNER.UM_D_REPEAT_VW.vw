DROP VIEW CSMRT_OWNER.UM_D_REPEAT_VW
/

--
-- UM_D_REPEAT_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_REPEAT_VW
BEQUEATH DEFINER
AS 
select REPEAT_SID, SETID, REPEAT_SCHEME_CD, REPEAT_CD, SRC_SYS_ID, EFFDT, 
       REPEAT_SD, REPEAT_LD, REPEAT_FD, REPEAT_SCHEME_SD, REPEAT_SCHEME_LD,
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_REPEAT
/
