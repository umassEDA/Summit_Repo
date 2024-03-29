DROP VIEW CSMRT_OWNER.UM_F_SAA_ADB_RESULTS_VW
/

--
-- UM_F_SAA_ADB_RESULTS_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_F_SAA_ADB_RESULTS_VW
BEQUEATH DEFINER
AS 
SELECT /*+ OPT_ESTIMATE(TABLE UM_F_SAA_ADB_RESULTS MIN=100000) */
         EMPLID,
          ANALYSIS_DB_SEQ,
          SAA_CAREER_RPT,
          SAA_ENTRY_SEQ,
          SRC_SYS_ID,
          INSTITUTION_CD,
          INSTITUTION_SID,
          ACAD_CAR_SID,
          TERM_SID,
          PERSON_SID,
          RQRMNT_GROUP_SID,
          REQUIREMENT_SID,
          RQRMNT_LINE_SID,
          ACAD_PROG_SID,
          ACAD_PLAN_SID,
          ACAD_SPLAN_SID,
          RPT_DATE,
          RPT_TYPE,
          RPT_TYPE_SD,
          RPT_TYPE_LD,
          SAA_RPT_IDENTIFIER,
          TSCRPT_TYPE,
          SAA_RPT_DTTM_STAMP,
          ENTRY_R_TYPE,
          ITEM_R_STATUS,
          ITEM_R_STATUS_SD,
          ITEM_R_STATUS_LD,
          RQ_DATE,
          RQRMNT_LIST_SEQ,
          REQ_LINE_TYPE,
          REQ_LINE_TYPE_SD,
          REQ_LINE_TYPE_LD,
          UNITS_REQUIRED,
          SAA_UNITS_USED,
          UNITS_NEEDED,
          CRSES_REQUIRED,
          SAA_CRSES_USED,
          CRSES_NEEDED,
          SAA_CRSE_COUNT,
          GPA_REQUIRED,
          GPA_ACTUAL,
          CREATED_EW_DTTM
     FROM UM_F_SAA_ADB_RESULTS
--    WHERE ROWNUM < 10000000
/
