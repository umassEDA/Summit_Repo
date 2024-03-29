DROP VIEW CSMRT_OWNER.C_PS_D_LOCATION_VW
/

--
-- C_PS_D_LOCATION_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_PS_D_LOCATION_VW
BEQUEATH DEFINER
AS 
SELECT CAST(LOC_SID AS NUMBER(10))     LOC_SID,           
	   SETID, 
	   SETID                           SRC_SETID, 
	   LOC_ID, 
	   EFFDT, 
	   LOC_LD, 
	   LOC_SD, 
	   LOC_ADDR1_LD, 
	   LOC_ADDR2_LD, 
	   LOC_ADDR3_LD, 
	   LOC_ADDR4_LD, 
	   LOC_BLDG_NUM, 
	   LOC_CITY_NM, 
	   LOC_CNTY_NM, 
	   LOC_CNTRY_CD, 
	   cast('-' AS VARCHAR2(10))                LOC_FLOOR_NUM, 
	   cast('-' AS VARCHAR2(11))                LOC_GEO_CD, 
	   cast('-' AS VARCHAR2(9))                 GOV_GEO_LOC_CD, 
	   cast('-' AS VARCHAR2(4))                 GOV_DSGNT_AGNT_CD, 
	   cast('-' AS VARCHAR2(5))                 LOC_JRSDCTN_CD, 
	   CAST('2147483646' AS NUMBER(22))         LOC_REG_RGN_SID, 
	   cast('-' AS VARCHAR2(10))                LOC_SCTR_NUM, 
	   LOC_STATE_CD, 
	   LOC_POSTAL_CD, 
	   CAST(substr(SETID, 0, 3) AS VARCHAR2(12)) LOC_ESTAB_ID, 
	   CAST('2147483646' AS NUMBER(22))         ESTAB_SID, 
	   to_date ('1/1/1900', 'MM/DD/YYYY')       ESTAB_EFF_DT, 
	   cast('-' AS VARCHAR2(1))                 ESTAB_EFF_STAT_CD, 
	   cast('-' AS VARCHAR2(1))                 ESTAB_HQ_UNIT_IND, 
	   cast('-' AS VARCHAR2(30))                ESTAB_LD, 
	   cast('-' AS VARCHAR2(10))                ESTAB_SD, 
	   cast('-' AS VARCHAR2(30))                ESTAB_ALT_LD, 
	   cast('-' AS VARCHAR2(3))                 ESTAB_CNTRY_CD, 
	   cast('-' AS VARCHAR2(55))                ESTAB_ADDR1_LD, 
	   cast('-' AS VARCHAR2(55))                ESTAB_ADDR2_LD, 
	   cast('-' AS VARCHAR2(55))                ESTAB_ADDR3_LD, 
	   cast('-' AS VARCHAR2(55))                ESTAB_ADDR4_LD, 
	   cast('-' AS VARCHAR2(30))                ESTAB_CITY_NM, 
	   cast('-' AS VARCHAR2(30))                ESTAB_CNTY_NM, 
	   cast('-' AS VARCHAR2(6))                 ESTAB_STATE_CD, 
	   cast('-' AS VARCHAR2(12))                ESTAB_POSTAL_CD, 
	   cast('-' AS VARCHAR2(11))                ESTAB_GEO_CD, 
	   cast('-' AS VARCHAR2(10))                GEOGRAPHY_ID,	   
	   TO_DATE ('1/1/1753', 'MM/DD/YYYY')       EFF_START_DT,
	   TO_DATE ('12/31/9999', 'MM/DD/YYYY')     EFF_END_DT,		
	   CAST('Y' AS VARCHAR2(1))                 CURRENT_IND,
	   SRC_SYS_ID,
       CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,			
	   DATA_ORIGIN,
       CAST(1234 AS NUMBER(10))                 BATCH_SID,	   
	   CREATED_EW_DTTM,
	   LASTUPD_EW_DTTM
  FROM CSMRT_OWNER.PS_D_LOCATION
 WHERE DATA_ORIGIN <> 'D'
/
