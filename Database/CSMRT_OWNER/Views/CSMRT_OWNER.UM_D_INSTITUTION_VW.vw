DROP VIEW CSMRT_OWNER.UM_D_INSTITUTION_VW
/

--
-- UM_D_INSTITUTION_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_INSTITUTION_VW
BEQUEATH DEFINER
AS 
select INSTITUTION_SID, INSTITUTION_CD, SRC_SYS_ID, EFFDT, EFF_STAT_CD, 
       INSTITUTION_SD, INSTITUTION_LD, INSTITUTION_FD, 
       ADDR1_LD, ADDR2_LD, ADDR3_LD, ADDR4_LD, 
       CITY_NM, CNTY_NM, STATE_CD, POSTAL_CD, GEO_CD, CNTRY_CD, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_INSTITUTION
/
