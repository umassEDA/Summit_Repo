DROP VIEW CSMRT_OWNER.UM_D_LOCATION_VW
/

--
-- UM_D_LOCATION_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_LOCATION_VW
BEQUEATH DEFINER
AS 
select LOC_SID, SETID, LOC_ID, SRC_SYS_ID, EFFDT, 
       LOC_SD, LOC_LD, 
       LOC_ADDR1_LD, LOC_ADDR2_LD, LOC_ADDR3_LD, LOC_ADDR4_LD, 
       LOC_BLDG_NUM, LOC_CITY_NM, LOC_CNTY_NM, 
       LOC_STATE_CD, LOC_POSTAL_CD, LOC_CNTRY_CD,
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_LOCATION
/
