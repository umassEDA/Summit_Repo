CREATE OR REPLACE VIEW C_PS_D_RECRT_STAT_VW
BEQUEATH DEFINER
AS 
SELECT CAST(RECRT_STAT_SID AS NUMBER(10))       RECRT_STAT_SID, 
           RECRT_STAT_ID,
		   TO_DATE ('1/1/1900', 'MM/DD/YYYY')       EFFDT,
		   CAST('A' AS VARCHAR2(1))                 EFF_STAT_CD,  
		  RECRT_STAT_SD, 
		  RECRT_STAT_LD, 
           TO_DATE ('1/1/1753', 'MM/DD/YYYY')       EFF_START_DT,
           TO_DATE ('12/31/9999', 'MM/DD/YYYY')     EFF_END_DT,
           CAST('Y' AS VARCHAR2(1))              CURRENT_IND,
           SRC_SYS_ID,
           CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM,
           CAST(1234 AS NUMBER(10))                 BATCH_SID
      FROM csmrt_owner.PS_D_RECRT_STAT
	 WHERE DATA_ORIGIN <> 'D';