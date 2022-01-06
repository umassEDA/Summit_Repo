CREATE OR REPLACE VIEW C_UM_D_PERSON_ATHL_VW
BEQUEATH DEFINER
AS 
SELECT SPORT,
           SRC_SYS_ID,
           EFFDT,
           PERSON_SID,
           PERSON_ID     EMPLID,
           INSTITUTION_CD,
           SPORT_SD,
           SPORT_LD,
           ATHL_PARTIC_CD,
           ATHL_PARTIC_SD,
           ATHL_PARTIC_LD,
           NCAA_ELIGIBLE,
           CUR_PARTICIPANT,
           DESCRLONG,
           ATHL_ORDER,
           DATA_ORIGIN,
		   CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
		   CAST(1234 AS NUMBER(10))                 BATCH_SID,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM CSMRT_OWNER.UM_D_PERSON_ATHL
	 WHERE DATA_ORIGIN <> 'D';
