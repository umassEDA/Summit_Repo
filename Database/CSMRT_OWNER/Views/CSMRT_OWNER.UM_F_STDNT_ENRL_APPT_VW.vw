CREATE OR REPLACE VIEW UM_F_STDNT_ENRL_APPT_VW
BEQUEATH DEFINER
AS 
SELECT /*+ OPT_ESTIMATE(TABLE UM_F_STDNT_ENRL_APPT MIN=100000) */
          INSTITUTION_CD,
          ACAD_CAR_CD,
          TERM_CD,
          PERSON_ID,
          SESSION_CODE,
          SSR_APPT_BLOCK,
          APPOINTMENT_NBR,
          SRC_SYS_ID,
          INSTITUTION_SID,
          ACAD_CAR_SID,
          TERM_SID,
          PERSON_SID,
          SESSION_SID,
          trunc(APPT_START_DTTM) APPT_START_DT,
          trunc(APPT_END_DTTM) APPT_END_DT,
          APPT_START_DTTM,
          APPT_END_DTTM,
          SSR_SELECT_LIMIT,
          APPT_LIMIT_ID,
          MAX_TOTAL_UNIT,
          MAX_NOGPA_UNIT,
          MAX_AUDIT_UNIT,
          MAX_WAIT_UNIT,
          SSR_APPT_STDT_BLCK,
          INCL_WAIT_IN_TOT,
          LOAD_ERROR,
          DATA_ORIGIN,
          CREATED_EW_DTTM,
          LASTUPD_EW_DTTM,
          BATCH_SID
     FROM UM_F_STDNT_ENRL_APPT
--    WHERE ROWNUM < 1000000000
;