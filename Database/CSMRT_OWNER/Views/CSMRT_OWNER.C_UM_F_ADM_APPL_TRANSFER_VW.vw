DROP VIEW CSMRT_OWNER.C_UM_F_ADM_APPL_TRANSFER_VW
/

--
-- C_UM_F_ADM_APPL_TRANSFER_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_UM_F_ADM_APPL_TRANSFER_VW
BEQUEATH DEFINER
AS 
SELECT APPLCNT_SID,
           ADMIT_TERM_SID,
           MODEL_NBR,
           TRNSFR_EQVLNCY_GRP,
           TRNSFR_EQVLNCY_SEQ,
           SRC_SYS_ID,
           PERSON_ID,
           INSTITUTION_CD,
           ACAD_CAR_CD,
           ARTICULATION_TERM,
           CLASS_SID,
           CRSE_SID,
           EXT_CRSE_SID,
           EXT_ORG_SID,
           EXT_TERM_SID,
           EXT_TERM_YEAR_SID,
           COURSE_LEVEL,
           CRSE_GRADE_INPUT,
           CRSE_GRADE_OFF,
           DESCR,
           EARN_CREDIT_FLG,
           EXT_COURSE_NBR,
           GRADE_CATEGORY,
           GRADING_SCHEME,
           GRADING_SCHEME_SD,
           GRADING_SCHEME_LD,
           GRADING_BASIS,
           GRADING_BASIS_SD,
           GRADING_BASIS_LD,
           GRD_PTS_PER_UNIT,
           MODEL_STATUS_SCH,
           MODEL_STATUS_SCH_SD,
           MODEL_STATUS_SCH_LD,
           MODEL_STATUS_TERM,
           MODEL_STATUS_TERM_SD,
           MODEL_STATUS_TERM_LD,
           POST_DT_TERM,
           REJECT_REASON,
           REJECT_REASON_SD,
           REJECT_REASON_LD,
           REPEAT_CODE,
           SCHOOL_CRSE_NBR,
           SCHOOL_SUBJECT,
           SRC_CLASS_NBR,
           SRC_ORG_NAME,
           SRC_TERM,
           TRNSFR_SRC_TYPE,
           TRNSFR_SRC_TYPE_SD,
           TRNSFR_SRC_TYPE_LD,
           TRNSFR_EQVLNCY,
           TRNSFR_EQVLNCY_CMP,
           TRNSFR_STAT,
           TRNSFR_STAT_SD,
           TRNSFR_STAT_LD,
           UNITS_ATTEMPTED_FLG,
           UNT_TAKEN,
           UNT_TRNSFR,
           VALID_ATTEMPT_FLG,
           TRNSFR_GRADE_POINTS
      FROM CSMRT_OWNER.UM_F_ADM_APPL_TRANSFER
/
