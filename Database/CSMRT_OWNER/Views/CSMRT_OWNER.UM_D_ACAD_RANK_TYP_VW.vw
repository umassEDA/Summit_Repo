DROP VIEW CSMRT_OWNER.UM_D_ACAD_RANK_TYP_VW
/

--
-- UM_D_ACAD_RANK_TYP_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_ACAD_RANK_TYP_VW
BEQUEATH DEFINER
AS 
select ACAD_RANK_TYPE_SID, ACAD_RANK_TYPE_ID, SRC_SYS_ID,
       ACAD_RANK_TYPE_SD, ACAD_RANK_TYPE_LD,
       DATA_ORIGIN, CREATED_EW_DTTM,
       LASTUPD_EW_DTTM
  from CSMRT_OWNER.PS_D_ACAD_RANK_TYP
/
