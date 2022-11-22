CREATE OR REPLACE VIEW C_PS_D_ACAD_ORG_VW
BEQUEATH DEFINER
AS 
WITH  INST as (
	          SELECT INSTITUTION_SID, SRC_SYS_ID, INSTITUTION_CD, INSTITUTION_SD, INSTITUTION_LD
	            FROM csmrt_owner.PS_D_INSTITUTION
	          ),
	   STG AS (
              select ACAD_ORG, EFFDT, SRC_SYS_ID, CAMPUS,
                     row_number() over (partition by ACAD_ORG, ACAD_ORG, SRC_SYS_ID
                                        order by DATA_ORIGIN desc, (case when EFFDT > trunc(SYSDATE) then to_date('01-JAN-1900') 
										else EFFDT end) desc) STG_ORDER
                from CSSTG_OWNER.PS_ACAD_ORG_TBL
               where DATA_ORIGIN <> 'D'				
				),
	   CAMP AS (
	           select CAMPUS_SID, INSTITUTION_CD, CAMPUS_CD, SRC_SYS_ID, CAMPUS_SD, CAMPUS_LD
                 from CSMRT_OWNER.PS_D_CAMPUS
	           )
 SELECT D.ACAD_ORG_SID, 
        I.INSTITUTION_SID,
		D.INSTITUTION_CD, 
		I.INSTITUTION_SD, 
		I.INSTITUTION_LD, 
		NVL(C.CAMPUS_SID, 2147483646)           CAMPUS_SID, 
		NVL(S.CAMPUS, '-')                      CAMPUS_CD,
		NVL(C.CAMPUS_SD, '-')                   CAMPUS_SD, 
		NVL(C.CAMPUS_LD, '-')                   CAMPUS_LD, 
		D.ACAD_ORG_CD, 
		D.EFFDT, 
		D.EFF_STAT_CD, 
		D.ACAD_ORG_SD, 
		D.ACAD_ORG_LD, 
		D.ACAD_ORG_FD,
        TO_DATE ('1/1/1753', 'MM/DD/YYYY')       EFF_START_DT,
	    TO_DATE ('12/31/9999', 'MM/DD/YYYY')     EFF_END_DT,		   
		CAST('Y' AS VARCHAR2(1))                 CURRENT_IND,
		D.SRC_SYS_ID,
	    CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
		D.DATA_ORIGIN,
		D.CREATED_EW_DTTM,
		D.LASTUPD_EW_DTTM,
	    CAST(1234 AS NUMBER(10))                 BATCH_SID
  FROM  CSMRT_OWNER.PS_D_ACAD_ORG D
LEFT OUTER JOIN INST I 
	ON D.INSTITUTION_CD = I.INSTITUTION_CD	
   AND D.SRC_SYS_ID = I.SRC_SYS_ID	  	
 LEFT OUTER JOIN STG S
    ON D.ACAD_ORG_CD = S.ACAD_ORG
   AND D.SRC_SYS_ID = S.SRC_SYS_ID	
   AND S.STG_ORDER = 1 
LEFT OUTER JOIN CAMP C
    ON S.CAMPUS = C.CAMPUS_CD
   AND D.INSTITUTION_CD = C.INSTITUTION_CD	
   AND D.SRC_SYS_ID = C.SRC_SYS_ID
 WHERE D.EFFDT_ORDER = 1   
   AND D.DATA_ORIGIN <> 'D';