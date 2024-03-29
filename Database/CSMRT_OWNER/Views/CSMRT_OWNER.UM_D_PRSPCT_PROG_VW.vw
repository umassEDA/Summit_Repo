DROP VIEW CSMRT_OWNER.UM_D_PRSPCT_PROG_VW
/

--
-- UM_D_PRSPCT_PROG_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_PRSPCT_PROG_VW
BEQUEATH DEFINER
AS 
SELECT /*+ OPT_ESTIMATE(TABLE UM_D_PRSPCT_PROG MIN=1000000) */
          PRSPCT_PROG_SID,
          INSTITUTION_CD,
          ACAD_CAR_CD,
          ADMIT_TERM,
          EMPLID,
          ACAD_PROG_CD,
          SRC_SYS_ID,
          ACAD_PROG_SID,
          ADM_APPL_NBR,
          ADM_RECR_CTR,
          CAMPUS_SID,
          PRSPCT_CAR_SID,
          RECRT_CNTR_SID,
          RECRT_STAT_SID,
          TO_DATE (TO_CHAR (RECRT_STAT_DT_SID), 'YYYYMMDD') RECRT_STAT_DT,
          RECRT_STAT_DT_SID,
          LOAD_ERROR,
          DATA_ORIGIN,
          CREATED_EW_DTTM,
          LASTUPD_EW_DTTM,
          BATCH_SID
     FROM UM_D_PRSPCT_PROG
    where ROWNUM < 10000000
   UNION ALL
   SELECT 2147483646 PRSPCT_PROG_SID,
          '-' INSTITUTION_CD,
          '-' ACAD_CAR_CD,
          '-' ADMIT_TERM,
          '-' EMPLID,
          '-' ACAD_PROG_CD,
          'CS90' SRC_SYS_ID,
          2147483646 ACAD_PROG_SID,
          '-' ADM_APPL_NBR,
          '-' ADM_RECR_CTR,
          2147483646 CAMPUS_SID,
          2147483646 PRSPCT_CAR_SID,
          2147483646 RECRT_CNTR_SID,
          2147483646 RECRT_STAT_SID,
          TO_DATE ('01-JAN-1900') RECRT_STAT_DT,
          2147483646 RECRT_STAT_DT_SID,
          'N' LOAD_ERROR,
          'Script' DATA_ORIGIN,
          SYSDATE CREATED_EW_DTTM,
          SYSDATE LASTUPD_EW_DTTM,
          2147483646 BATCH_SID
     FROM DUAL
/
