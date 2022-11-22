CREATE OR REPLACE VIEW C_UM_D_RQ_GRP_VW
BEQUEATH DEFINER
AS 
WITH  INST as (
	          SELECT INSTITUTION_SID, INSTITUTION_CD, INSTITUTION_SD, INSTITUTION_LD
	            FROM csmrt_owner.PS_D_INSTITUTION
	)
SELECT  D.RQRMNT_GROUP_SID, 
        D.RQRMNT_GROUP, 
		D.SRC_SYS_ID, 
		D.EFFDT, 
		D.EFF_STATUS, 
		D.DESCR, 
		D.DESCRSHORT, 
		I.INSTITUTION_SID, 
		D.INSTITUTION_CD, 
		D.RQRMNT_USEAGE, 
		D.RQRMNT_LIST_SEQ, 
		D.RQ_CONNECT_TYPE, 
		D.SAA_DESCR80, 
		D.DESCR254,  
		D.DESCRLONG, 
		NVL(C.ACAD_CAR_SID, 2147483646) ACAD_CAR_SID, 
		NVL(P.ACAD_PLAN_SID, 2147483646) ACAD_PLAN_SID,
		NVL(G.ACAD_PROG_SID, 2147483646) ACAD_PROG_SID, 
		NVL(L.ACAD_SPLAN_SID, 2147483646) ACAD_SPLAN_SID,  
		D.CATALOG_NBR, 
		D.GPA_REQUIRED, 
		D.GRADE_POINTS_MIN, 
		D.MIN_CRSES_REQD, 
		D.MIN_UNITS_REQD, 
		D.RQRMNT_USEAGE_LD, 
		D.RQRMNT_USEAGE_SD, 
		D.SUBJECT,
        CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
        D.DATA_ORIGIN,
        D.CREATED_EW_DTTM,
        D.LASTUPD_EW_DTTM,
        CAST(1234 AS NUMBER(10))                 BATCH_SID,
		TRIM(D.SQL_STR_CO)                       SQL_STR_CO,    --CLOB 
		TRIM(D.SQL_STR_PRE)                      SQL_STR_PRE    --CLOB
   FROM csmrt_owner.UM_D_RQ_GRP D
LEFT OUTER JOIN INST I 
	ON D.INSTITUTION_CD = I.INSTITUTION_CD
LEFT OUTER JOIN CSMRT_OWNER.PS_D_ACAD_CAR C
    on D.INSTITUTION_CD = C.INSTITUTION_CD
   and D.ACAD_CAR_CD = C.ACAD_CAR_CD
   and D.SRC_SYS_ID = C.SRC_SYS_ID	
LEFT OUTER JOIN CSMRT_OWNER.UM_D_ACAD_PROG G
    on D.INSTITUTION_CD = G.INSTITUTION_CD
   and D.ACAD_PROG_CD = G.ACAD_PROG_CD
   and D.SRC_SYS_ID = G.SRC_SYS_ID
   and G.EFFDT_ORDER = 1 
LEFT OUTER JOIN CSMRT_OWNER.UM_D_ACAD_PLAN P
    on D.INSTITUTION_CD = P.INSTITUTION_CD
   and D.ACAD_PLAN_CD = P.ACAD_PLAN_CD
   and D.SRC_SYS_ID = P.SRC_SYS_ID
   and P.EFFDT_ORDER = 1 
LEFT OUTER JOIN CSMRT_OWNER.UM_D_ACAD_SPLAN L
    on D.INSTITUTION_CD = L.INSTITUTION_CD
   and D.ACAD_PLAN_CD = L.ACAD_PLAN_CD
   and D.ACAD_SPLAN_CD = L.ACAD_SPLAN_CD
   and D.SRC_SYS_ID = L.SRC_SYS_ID
   and L.EFFDT_ORDER = 1
 WHERE D.DATA_ORIGIN <> 'D';