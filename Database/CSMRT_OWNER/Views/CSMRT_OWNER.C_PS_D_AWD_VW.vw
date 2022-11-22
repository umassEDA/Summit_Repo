DROP VIEW CSMRT_OWNER.C_PS_D_AWD_VW
/

--
-- C_PS_D_AWD_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_PS_D_AWD_VW
BEQUEATH DEFINER
AS 
WITH  INST as (
	          SELECT INSTITUTION_SID, INSTITUTION_CD, INSTITUTION_SD, INSTITUTION_LD
	            FROM csmrt_owner.PS_D_INSTITUTION
	)
    SELECT CAST(AWD_SID AS NUMBER(10))  AWD_SID,
           CAST(I.INSTITUTION_SID AS NUMBER(10)) INSTITUTION_SID, 
		   D.INSTITUTION_CD, 
		   I.INSTITUTION_SD, 
		   I.INSTITUTION_LD,
		   D.AWD_CD, 
		   D.EFFDT, 
		   D.EFF_STAT_CD, 
		   D.AWD_SD, 
		   D.AWD_LD, 
		   D.AWD_FD, 
		   D.INT_EXT_CD, 
		   D.INT_EXT_SD, 
		   D.INT_EXT_LD, 
		   D.GRANTOR_NM,     		   
           TO_DATE ('1/1/1753', 'MM/DD/YYYY')       EFF_START_DT,
           TO_DATE ('12/31/9999', 'MM/DD/YYYY')     EFF_END_DT,
           CAST('Y' AS VARCHAR2(1))                 CURRENT_IND,
           D.SRC_SYS_ID,
           CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
           D.DATA_ORIGIN,
           D.CREATED_EW_DTTM,
           D.LASTUPD_EW_DTTM,
           CAST(1234 AS NUMBER(10))                 BATCH_SID
      FROM csmrt_owner.PS_D_AWD D
LEFT OUTER JOIN INST I 
	ON D.INSTITUTION_CD = I.INSTITUTION_CD	
     WHERE DATA_ORIGIN <> 'D'
/
