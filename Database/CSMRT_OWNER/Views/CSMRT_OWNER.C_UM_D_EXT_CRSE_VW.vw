DROP VIEW CSMRT_OWNER.C_UM_D_EXT_CRSE_VW
/

--
-- C_UM_D_EXT_CRSE_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_UM_D_EXT_CRSE_VW
BEQUEATH DEFINER
AS 
SELECT CAST(EXT_CRSE_SID AS NUMBER(10))       EXT_CRSE_SID,  
        EXT_ORG_ID, 
		SCHOOL_SUBJECT, 
		SCHOOL_CRSE_NBR, 
		SRC_SYS_ID, 
		EFFDT, 
		EFF_STATUS, 
		DESCR, 
		DESCRSHORT, 
		EXT_SUBJECT_AREA_SID, 
		COURSE_LEVEL, 
		EXT_CAREER, 
		EXT_CRSE_TYPE, 
		EXT_UNITS,
        CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
        DATA_ORIGIN,
		CREATED_EW_DTTM,
		LASTUPD_EW_DTTM,
		CAST(1234 AS NUMBER(10))                 BATCH_SID
   FROM CSMRT_OWNER.UM_D_EXT_CRSE
  WHERE DATA_ORIGIN <> 'D'
/
