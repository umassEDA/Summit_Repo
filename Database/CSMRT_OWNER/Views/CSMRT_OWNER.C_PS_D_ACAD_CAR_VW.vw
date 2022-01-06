CREATE OR REPLACE VIEW C_PS_D_ACAD_CAR_VW
BEQUEATH DEFINER
AS 
WITH  INST as (
	          SELECT INSTITUTION_SID, INSTITUTION_CD, INSTITUTION_SD, INSTITUTION_LD
	            FROM csmrt_owner.PS_D_INSTITUTION
	)
 SELECT CAST(D.ACAD_CAR_SID AS NUMBER(10))      ACAD_CAR_SID,  
		I.INSTITUTION_SID, 
		D.INSTITUTION_CD, 
		D.ACAD_CAR_CD, 
		D.EFFDT, 
		D.EFF_STAT_CD, 
		D.ACAD_CAR_SD, 
		D.ACAD_CAR_LD, 
		D.SRC_SYS_ID, 
		D.ACAD_CAR_CD_DESC, 
		D.ACAD_PLAN_TYPE, 
		D.FA_CAR_TYPE, 
		D.FA_PRIMACY_NBR, 
		D.GRADE_TRANSFER, 
		D.GRADING_BASIS, 
		D.GRADING_SCHEME, 
		D.GRADUATE_LVL_IND, 
		D.OEE_IND, 
		D.REPEAT_CRSE_ERROR, 
		D.REPEAT_ENRL_CTL, 
		D.REPEAT_ENRL_SUSP, 
		D.REPEAT_GRD_CK, 
		D.REPEAT_GRD_SUSP, 
		D.REPEAT_RULE, 
		D.REPEAT_SCHEME, 
		D.SF_GRAD_DESIGNATIO,
	    CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
		D.DATA_ORIGIN,
		D.CREATED_EW_DTTM,
		D.LASTUPD_EW_DTTM,
		CAST(1234 AS NUMBER(10))                 BATCH_SID
   FROM CSMRT_OWNER.PS_D_ACAD_CAR  D
LEFT OUTER JOIN INST I 
	ON D.INSTITUTION_CD = I.INSTITUTION_CD	  
 WHERE D.DATA_ORIGIN <> 'D';
