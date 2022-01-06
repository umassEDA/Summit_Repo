CREATE OR REPLACE VIEW UM_F_STDNT_ENRL_REQ_VW
BEQUEATH DEFINER
AS 
SELECT /*+ OPT_ESTIMATE(TABLE UM_F_STDNT_ENRL_REQ MIN=100000) */
          ENRL_REQUEST_ID,
          ENRL_REQ_DETL_SEQ,
          SRC_SYS_ID,
          INSTITUTION_SID,
          ACAD_CAR_SID,
          TERM_SID,
          PERSON_SID,
          CLASS_SID,
          INSTITUTION_CD,
          ACAD_CAREER,
          TERM_CD,
          PERSON_ID,
          CLASS_NBR,
          ENRL_REQ_ACTION,
          ENRL_REQ_ACTION_LD,
          ENRL_ACTION_REASON,
          ENRL_ACTION_REASON_LD,
          ENRL_ACTION_DT,
          UNT_TAKEN,
          UNT_EARNED,
          CRSE_COUNT,
          REPEAT_CODE,
          REPEAT_SID,
          CRSE_GRADE_INPUT,
          GRADING_BASIS_ENRL,
          GRADING_BASIS_ENRL_LD,
          CLASS_PRMSN_NBR,
          CLASS_NBR_CHG_TO,
          DROP_CLASS_IF_ENRL,
          CHG_TO_WL_NUM,
          RELATE_CLASS_NBR_1,
          RELATE_CLASS_NBR_2,
          OVRD_CLASS_LIMIT,
          OVRD_GRADING_BASIS,
          OVRD_CLASS_UNITS,
          OVRD_UNIT_LOAD,
          OVRD_CLASS_LINKS,
          OVRD_CLASS_PRMSN,
          OVRD_REQUISITES,
          OVRD_TIME_CNFLCT,
          OVRD_CAREER,
          WAIT_LIST_OKAY,
          OVRD_ENRL_ACTN_DT,
          OVRD_RQMNT_DESIG,
          OVRD_SRVC_INDIC,
          OVRD_APPT,
          INSTRUCTOR_ID,
          ENRL_REQ_DETL_STAT,
          ENRL_REQ_DETL_STAT_LD,
          RQMNT_DESIGNTN,
          RQMNT_DESIGNTN_OPT,
          RQMNT_DESIGNTN_GRD,
          TSCRPT_NOTE_ID,
          TSCRPT_NOTE_EXISTS,
          OPRID,
          DTTM_STAMP_SEC,
          START_DT,
          ACAD_PROG,
          ENRL_REQ_SOURCE,
          ENRL_REQ_SOURCE_LD
     FROM UM_F_STDNT_ENRL_REQ
--    WHERE ROWNUM < 1000000000
;
