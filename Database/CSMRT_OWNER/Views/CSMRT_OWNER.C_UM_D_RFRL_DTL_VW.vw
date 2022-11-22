DROP VIEW CSMRT_OWNER.C_UM_D_RFRL_DTL_VW
/

--
-- C_UM_D_RFRL_DTL_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_UM_D_RFRL_DTL_VW
BEQUEATH DEFINER
AS 
WITH  INST as (
	          SELECT INSTITUTION_SID, INSTITUTION_CD, INSTITUTION_SD, INSTITUTION_LD
	            FROM csmrt_owner.PS_D_INSTITUTION
	)
    SELECT CAST(D.RFRL_DTL_SID AS NUMBER(10))       RFRL_DTL_SID,           
		   D.INSTITUTION_CD, 
		   D.RFRL_GRP, 
		   D.RFRL_DTL, 
		   D.SRC_SYS_ID, 
		   D.DESCR, 
		   I.INSTITUTION_SID, 
		   D.RFRL_DATE, 
		   D.RFRL_GRP_SID, 
		   D.RFRL_DTL_STATUS,
           CAST('Y' AS VARCHAR2(1))                 LOAD_ERROR,
           D.DATA_ORIGIN,
           D.CREATED_EW_DTTM,
           D.LASTUPD_EW_DTTM,
           CAST(1234 AS NUMBER(10))                 BATCH_SID
	  FROM  CSMRT_OWNER.UM_D_RFRL_DTL D
LEFT OUTER JOIN INST I 
	ON D.INSTITUTION_CD = I.INSTITUTION_CD	  
     WHERE D.DATA_ORIGIN <> 'D'
/
