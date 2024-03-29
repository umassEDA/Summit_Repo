DROP VIEW CSMRT_OWNER.C_PS_D_APPL_MTHD_VW
/

--
-- C_PS_D_APPL_MTHD_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_PS_D_APPL_MTHD_VW
BEQUEATH DEFINER
AS 
SELECT CAST(APPL_MTHD_SID AS NUMBER(10))  APPL_MTHD_SID,
           APPL_MTHD_ID, 
	       TO_DATE ('1/1/1901', 'MM/DD/YYYY')       EFFDT, 
	       cast('A' AS VARCHAR2(1)) EFF_STAT_CD, 
	       APPL_MTHD_SD, 
	       APPL_MTHD_LD,  
           TO_DATE ('1/1/1753', 'MM/DD/YYYY')       EFF_START_DT,
           TO_DATE ('12/31/9999', 'MM/DD/YYYY')     EFF_END_DT,
           CAST('Y' AS VARCHAR2(1))              CURRENT_IND,
           SRC_SYS_ID,
           CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM,
           CAST(1234 AS NUMBER(10))                 BATCH_SID
      FROM csmrt_owner.PS_D_APPL_MTHD
	 WHERE DATA_ORIGIN <> 'D'
/
