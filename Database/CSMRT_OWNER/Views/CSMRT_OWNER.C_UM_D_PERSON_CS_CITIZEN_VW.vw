DROP VIEW CSMRT_OWNER.C_UM_D_PERSON_CS_CITIZEN_VW
/

--
-- C_UM_D_PERSON_CS_CITIZEN_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_UM_D_PERSON_CS_CITIZEN_VW
BEQUEATH DEFINER
AS 
SELECT CAST(D.PERSON_SID AS NUMBER(10))       PERSON_SID,
       CAST(ROWNUM AS NUMBER(10))             PERSON_CITIZEN_SID, 
	   CAST(PERSON_ID AS VARCHAR2(15))        EMPLID, 
	   DEPENDENT_ID, 
	   COUNTRY, 
	   SRC_SYS_ID, 
	   COUNTRY_SD, 
	   COUNTRY_LD, 
	   COUNTRY_2CHAR, 
	   EU_MEMBER_STATE, 
	   CITIZENSHIP_STATUS, 
	   CITIZENSHIP_STATUS_SD, 
	   CITIZENSHIP_STATUS_LD, 
	   CAST('-' AS VARCHAR2(2))                 WORKER_TYPE_SGP, 
	   to_date ('1/1/1900', 'MM/DD/YYYY')       PERM_STATUS_DT_SGP,
       CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
       D.DATA_ORIGIN,
       D.CREATED_EW_DTTM,
       D.LASTUPD_EW_DTTM,
       CAST(1234 AS NUMBER(10))                 BATCH_SID
  FROM csmrt_owner.UM_D_PERSON_CITIZEN D
 WHERE D.DATA_ORIGIN <> 'D'
   AND PERSON_ID IN
    (SELECT EMPLID
        FROM IRSTG_OWNER.CENSUS_POPULATION CP, 
             IRSTG_OWNER.CENSUS_RUN_CNTRL_TBL CR
        WHERE CP.C_INSTITUTION = CR.C_INSTITUTION
        AND CP.C_PERIOD = CR.C_PERIOD
        AND CP.C_CENSUS_SEQ = CR.C_CENSUS_SEQ
        AND CR.CENSUS_TO_RUN = 'Y'
    )
/
