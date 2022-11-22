DROP VIEW CSMRT_OWNER.C_UM_D_TRANSFER_DICT_VW
/

--
-- C_UM_D_TRANSFER_DICT_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_UM_D_TRANSFER_DICT_VW
BEQUEATH DEFINER
AS 
WITH TRNSFR_SUBJ AS (
   SELECT SUB.INSTITUTION                  AS INSTITUTION,
          SUB.TRNSFR_SRC_ID                AS EXT_ORG_ID,
          SUB.COMP_SUBJECT_AREA            AS COMP_SUBJECT_AREA,
          SUB.TRNSFR_SRC_ID                AS TRNSFR_SRC_ID,
          SUB.EFFDT                        AS EFFDT,
          SUB.EFF_STATUS                   AS EFF_STATUS,
          SUB.DESCR                        AS SUBJECT_LDESC,
          SUB.TC_CATLG_ORG_TYPE            AS INT_TRANSFER_FLAG,
          SUB.TC_CATLG_ORG_TYPE,
         'CS90'                            AS SRC_SYS_ID,
          SUB.DATA_ORIGIN                  AS DATA_ORIGIN,
          row_number() over (partition by SUB.INSTITUTION , SUB.TRNSFR_SRC_ID, SUB.COMP_SUBJECT_AREA, SUB.SRC_SYS_ID 
                              order by decode(SUB.DATA_ORIGIN,'D',9,0), decode(SUB.EFF_STATUS,'I',9,0), SUB.EFFDT desc) SUB_ORDER
     FROM CSSTG_OWNER.PS_TRNSFR_SUBJ SUB
        ),
    INST as (
            SELECT INSTITUTION_SID, INSTITUTION_CD, INSTITUTION_SD, INSTITUTION_LD
	          FROM csmrt_owner.PS_D_INSTITUTION
	)		
 SELECT CAST(D.TRNSFR_DICT_SID AS NUMBER(10))       TRNSFR_DICT_SID,  
        D.INSTITUTION_CD, 
		D.TRNSFR_SRC_ID, 
		D.COMP_SUBJECT_AREA, 
		D.TRNSFR_EQVLNCY_CMP, 
		D.TRNSFR_CMP_SEQ, 
		D.CRSE_ID, 
		D.SRC_SYS_ID, 
		D.EFFDT, 
		D.EFF_STATUS, 
		D.TRNSFR_SUBJ_DESCR, 
		D.TRNSFR_COMP_DESCR, 
		I.INSTITUTION_SID, 
		D.CRSE_SID, 
		D.EXT_CRSE_SID, 
		D.EXT_ORG_SID, 
		D.EXT_CRSE_OFFER_NBR, 
		D.EXT_TERM_TYPE, 
		D.EXT_TERM_TYPE_SD, 
		D.EXT_TERM_TYPE_LD, 
		D.GRADE_PTS_MIN, 
		D.GRADE_PTS_MAX, 
		D.INP_CRSE_CNT, 
		D.INT_TRANSFER_FLG, 
		D.SSR_MAX_AGE, 
		S.TC_CATLG_ORG_TYPE, 
		CAST(DECODE(TC_CATLG_ORG_TYPE, 'E', 'External', 'I', 'Internal') AS VARCHAR2(10)) TC_CATLG_ORG_TYPE_SD,
		CAST(DECODE(TC_CATLG_ORG_TYPE, 'E', 'External', 'I', 'Internal') AS VARCHAR2(30)) TC_CATLG_ORG_TYPE_LD, 
		D.TRNSFR_CRSE_FLG, 
		D.TRNSFR_CRSE_STATUS, 
		D.TRNSFR_GRADE_FLG, 
		CAST(0 AS NUMBER(1))                 TRNSFR_PRIORITY, 
		D.UM_CRSE_ID, 
		D.UM_CRSE_OFFER_NBR, 
		D.UM_SSR_TR_DEF_GRD_TYP, 
		D.UM_SSR_TR_DEF_GRD_TYP_SD, 
		D.UM_SSR_TR_DEF_GRD_TYP_LD, 
		D.UM_SSR_TR_DEF_GRD_SEQ, 
		D.UM_UNIT_TAKEN, 
		D.UNITS_MINIMUM, 
		D.UNITS_MAXIMUM, 
		D.UNT_TRNSFR_SRC, 
		D.UNT_TRNSFR_SRC_SD, 
		D.UNT_TRNSFR_SRC_LD, 
		D.XS_CRSE_FLG, 
        TO_DATE ('1/1/1901', 'MM/DD/YYYY')   BEGIN_DT,
        TO_DATE ('12/31/9999', 'MM/DD/YYYY') END_DT,
	    CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
		D.DATA_ORIGIN,
	    D.CREATED_EW_DTTM,
	    D.LASTUPD_EW_DTTM,
	    CAST(1234 AS INTEGER)                 BATCH_SID
  FROM  CSMRT_OWNER.UM_D_TRANSFER_DICT D	  
   JOIN TRNSFR_SUBJ S               
     on D.INSTITUTION_CD = S.INSTITUTION
    AND D.TRNSFR_SRC_ID = S.TRNSFR_SRC_ID
    AND D.COMP_SUBJECT_AREA = S.COMP_SUBJECT_AREA 
    AND SUB_ORDER = 1	
   JOIN INST I 
	 ON D.INSTITUTION_CD = I.INSTITUTION_CD	
  WHERE D.DATA_ORIGIN <> 'D'
/
