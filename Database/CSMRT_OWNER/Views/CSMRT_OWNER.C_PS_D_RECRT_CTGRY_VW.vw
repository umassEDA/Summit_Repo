DROP VIEW CSMRT_OWNER.C_PS_D_RECRT_CTGRY_VW
/

--
-- C_PS_D_RECRT_CTGRY_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_PS_D_RECRT_CTGRY_VW
BEQUEATH DEFINER
AS 
WITH  INST as (
	          SELECT INSTITUTION_SID, INSTITUTION_CD, INSTITUTION_SD, INSTITUTION_LD
	            FROM csmrt_owner.PS_D_INSTITUTION
	)
    SELECT CAST(D.RECRT_CTGRY_SID AS NUMBER(10)) RECRT_CTGRY_SID,
		   D.INSTITUTION_CD                      INSTITUTION_ID, 
		   D.RECRT_CTGRY_ID, 
		   D.EFFDT, 
		   D.EFF_STAT_CD, 
		   I.INSTITUTION_SD, 
		   I.INSTITUTION_LD, 
		   D.RECRT_CTGRY_SD, 
		   D.RECRT_CTGRY_LD, 
		   D.RECRT_GRP_ID, 
		   D.RECRT_GRP_SD, 
		   D.RECRT_GRP_LD, 
           TO_DATE ('1/1/1753', 'MM/DD/YYYY')       EFF_START_DT,
           TO_DATE ('12/31/9999', 'MM/DD/YYYY')     EFF_END_DT,
           CAST('Y' AS VARCHAR2(1))                 CURRENT_IND,
           D.SRC_SYS_ID,
           CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
           D.DATA_ORIGIN,
           D.CREATED_EW_DTTM,
           D.LASTUPD_EW_DTTM,
           CAST(1234 AS NUMBER(10))                 BATCH_SID
      FROM csmrt_owner.PS_D_RECRT_CTGRY D
LEFT OUTER JOIN INST I 
	ON D.INSTITUTION_CD = I.INSTITUTION_CD	
     WHERE DATA_ORIGIN <> 'D'
/
