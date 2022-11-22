CREATE OR REPLACE VIEW C_PS_D_ACAD_UNIT_TYP_VW
BEQUEATH DEFINER
AS 
SELECT CAST(D.ACAD_UNIT_TYPE_SID AS NUMBER(10))      ACAD_UNIT_TYPE_SID,  
		  ACAD_UNIT_TYPE_ID, 
		  TO_DATE ('1/1/1900', 'MM/DD/YYYY') EFFDT, 
		  CAST('A' AS VARCHAR2(1)) EFF_STAT_CD, 
		  ACAD_UNIT_TYPE_SD, 
		  ACAD_UNIT_TYPE_LD,
          TO_DATE ('1/1/1753', 'MM/DD/YYYY')       EFF_START_DT,
		  TO_DATE ('12/31/9999', 'MM/DD/YYYY')     EFF_END_DT,		   
		  CAST('Y' AS VARCHAR2(1))                 CURRENT_IND,
		  D.SRC_SYS_ID,
	      CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
		  D.DATA_ORIGIN,
		  D.CREATED_EW_DTTM,
		  D.LASTUPD_EW_DTTM,
		  CAST(1234 AS NUMBER(10))                 BATCH_SID
	 FROM CSMRT_OWNER.PS_D_ACAD_UNIT_TYP D 
	WHERE D.DATA_ORIGIN <> 'D';