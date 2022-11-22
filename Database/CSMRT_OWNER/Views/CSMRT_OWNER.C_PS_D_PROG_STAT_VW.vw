DROP VIEW CSMRT_OWNER.C_PS_D_PROG_STAT_VW
/

--
-- C_PS_D_PROG_STAT_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_PS_D_PROG_STAT_VW
BEQUEATH DEFINER
AS 
SELECT CAST(PROG_STAT_SID AS NUMBER(10))       PROG_STAT_SID,  
           PROG_STAT_CD, 
		   PROG_STAT_SD, 
		   PROG_STAT_LD,	
           TO_DATE ('1/1/1753', 'MM/DD/YYYY')       EFF_START_DT,
		   TO_DATE ('12/31/9999', 'MM/DD/YYYY')     EFF_END_DT,		   
		   CAST('Y' AS VARCHAR2(1))                 CURRENT_IND,
		   SRC_SYS_ID,	
	       CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
		   DATA_ORIGIN,
		   CREATED_EW_DTTM,
		   LASTUPD_EW_DTTM,
		   CAST(1234 AS NUMBER(10))                 BATCH_SID
	  FROM CSMRT_OWNER.PS_D_PROG_STAT
	 WHERE DATA_ORIGIN <> 'D'
/
