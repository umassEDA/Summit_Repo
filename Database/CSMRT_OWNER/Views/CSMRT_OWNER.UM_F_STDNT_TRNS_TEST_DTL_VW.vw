DROP VIEW CSMRT_OWNER.UM_F_STDNT_TRNS_TEST_DTL_VW
/

--
-- UM_F_STDNT_TRNS_TEST_DTL_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_F_STDNT_TRNS_TEST_DTL_VW
BEQUEATH DEFINER
AS 
SELECT /*+ OPT_ESTIMATE(TABLE UM_F_STDNT_TRNS_TEST_DTL MIN=100000) */
           ARTICULATION_TERM_SID,
           PERSON_SID,
           MODEL_NBR,
           TRNSFR_EQVLNCY_GRP,
           TRNSFR_EQVLNCY_SEQ,
           SRC_SYS_ID,
           INSTITUTION_CD,
           ACAD_CAR_CD,
           ARTICULATION_TERM,
           PERSON_ID,
           INSTITUTION_SID,
           ACAD_CAR_SID,
           CRSE_SID,
           OPRID_SID,   -- Feb 2020
           CRSE_GRADE_OFF,
           DESCR,
           EARN_CREDIT,
           FREEZE_REC_FL,
           GRADE_CATEGORY,
           GRADING_SCHEME,
           GRADING_SCHEME_SD,
           GRADING_SCHEME_LD,
           GRADING_BASIS,
           GRADING_BASIS_SD,
           GRADING_BASIS_LD,
           GRD_PTS_PER_UNIT,
           INCLUDE_IN_GPA,
           INPUT_CHG_FL,
           LS_DATA_SOURCE,
           OVRD_RSN,
           OVRD_TRCR_FL,
           PERCENTILE,
           REJECT_REASON,
           REPEAT_CODE,
           RQMNT_DESIGNTN,
           RQMNT_DESIGNTN_LD,
           SCORE,
           SSR_FAWI_INCL,
           TEST_DT,
           TST_EQVLNCY,
           TEST_ID,
           TEST_ID_LD,
           TEST_COMPONENT,
           TEST_COMPONENT_LD,
           TRNSFR_EQVLNCY_CMP,
           TRNSFR_STAT,
           TRNSFR_STAT_SD,
           TRNSFR_STAT_LD,
           UNITS_ATTEMPTED,
           UNT_TRNSFR,
           VALID_ATTEMPT,
           COMMENTS,
           LOAD_ERROR,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM,
           BATCH_SID
      FROM UM_F_STDNT_TRNS_TEST_DTL
--    WHERE ROWNUM < 1000000000
/
