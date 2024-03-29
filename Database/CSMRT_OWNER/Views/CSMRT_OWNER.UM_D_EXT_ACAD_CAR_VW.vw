DROP VIEW CSMRT_OWNER.UM_D_EXT_ACAD_CAR_VW
/

--
-- UM_D_EXT_ACAD_CAR_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_EXT_ACAD_CAR_VW
BEQUEATH DEFINER
AS 
select EXT_ACAD_CAR_SID, EXT_ACAD_CAR_ID, SRC_SYS_ID, 
       EXT_ACAD_CAR_SD, EXT_ACAD_CAR_LD, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_EXT_ACAD_CAR
/
