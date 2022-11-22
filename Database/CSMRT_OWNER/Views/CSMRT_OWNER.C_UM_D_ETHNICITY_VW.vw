CREATE OR REPLACE VIEW C_UM_D_ETHNICITY_VW
BEQUEATH DEFINER
AS 
SELECT PERSON_SID,  
           ETHNIC_GRP_SID, 
		   SRC_SYS_ID, 
		   CAST(PERSON_ID AS VARCHAR2(15))          EMPLID, 
		   ETHNIC_GRP_CD, 
		   REG_REGION, 
		   CAST(2147483646 AS NUMBER(10))           ETHNICITY_SID, 
		   CAST(REG_REGION AS VARCHAR2(5))          SRC_SETID,
           CAST(REG_REGION AS VARCHAR2(5))          SETID,
		   PRIMARY_FLAG, 
		   IPEDS_FLG, 
		   HISP_LATINO_FLG, 
		   ETHNIC_PCT_NUMRATR, 
		   ETHNIC_PCT_DENMRTR, 
		   LASTUPDDTTM, 
		   LASTUPDOPRID,
           TO_DATE ('1/1/1753', 'MM/DD/YYYY')       EFF_START_DT,
		   TO_DATE ('12/31/9999', 'MM/DD/YYYY')     EFF_END_DT,		   
		   CAST('Y' AS VARCHAR2(1))                 CURRENT_IND,	
	       CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
		   DATA_ORIGIN,
		   CREATED_EW_DTTM,
		   LASTUPD_EW_DTTM,
		   CAST(1234 AS NUMBER(10))                 BATCH_SID
	  FROM CSMRT_OWNER.UM_D_PERSON_ETHNICITY
	 WHERE DATA_ORIGIN <> 'D';