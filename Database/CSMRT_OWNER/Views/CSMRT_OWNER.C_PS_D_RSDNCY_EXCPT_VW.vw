CREATE OR REPLACE VIEW C_PS_D_RSDNCY_EXCPT_VW
BEQUEATH DEFINER
AS 
SELECT CAST(RSDNCY_EXCPT_SID AS NUMBER(10))           RSDNCY_EXCPT_SID,  
		  RSDNCY_EXCPTN, 
		  SRC_SYS_ID, 
		  EFFDT, 
		  EFF_STATUS, 
		  RSDNCY_EXCPTN_SD, 
		  RSDNCY_EXCPTN_LD,
	      CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
		  DATA_ORIGIN,
		  CREATED_EW_DTTM,
		  LASTUPD_EW_DTTM,
		  CAST(1234 AS NUMBER(10))                 BATCH_SID
	 FROM CSMRT_OWNER.PS_D_RSDNCY_EXCPT
	WHERE DATA_ORIGIN <> 'D';