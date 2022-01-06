CREATE OR REPLACE VIEW C_PS_D_ACAD_LOAD_VW
BEQUEATH DEFINER
AS 
SELECT CAST(ACAD_LOAD_SID AS NUMBER(10))  ACAD_LOAD_SID, 
	       ACAD_LOAD_CD, 
	       APPRVD_IND, 
	       ACAD_LOAD_SD, 
	       ACAD_LOAD_LD, 
           TO_DATE ('1/1/1753', 'MM/DD/YYYY')       EFF_START_DT,
           TO_DATE ('12/31/9999', 'MM/DD/YYYY')     EFF_END_DT,
           CAST('Y' AS VARCHAR2(1))              CURRENT_IND,
           SRC_SYS_ID,
           CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM,
           CAST(1234 AS NUMBER(10))                 BATCH_SID
      FROM csmrt_owner.PS_D_ACAD_LOAD
	 WHERE DATA_ORIGIN <> 'D';
