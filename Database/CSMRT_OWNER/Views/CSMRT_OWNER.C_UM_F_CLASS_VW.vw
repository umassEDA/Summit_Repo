DROP VIEW CSMRT_OWNER.C_UM_F_CLASS_VW
/

--
-- C_UM_F_CLASS_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_UM_F_CLASS_VW
BEQUEATH DEFINER
AS 
SELECT /*+ OPT_ESTIMATE(TABLE UM_F_CLASS MIN=100000) */
           CLASS_SID,
           CRSE_CD,
           CRSE_OFFER_NUM,
           TERM_CD,
           SESSION_CD,
           CLASS_SECTION_CD,
           SRC_SYS_ID,
           INSTITUTION_SID,
           INSTITUTION_CD,
           CLASS_MTG_PAT_ORDER,
           PRI_CLASS_MTG_PAT_FLAG,
           CLASS_MTG_PAT_SID,
           CLASS_MTG_PAT_PRIM_SID,
           CLASS_MTG_PAT_SECOND_SID,
           CLASS_MTG_NUM,
           FCLTY_SID,
           MEETING_TIME_START,
           MEETING_TIME_END,
           MON,
           TUES,
           WED,
           THURS,
           FRI,
           SAT,
           SUN,
           MTG_PAT_CD,
           START_DT,
           START_TIME,
           END_DT,
           END_TIME,
           MEETING_TIME,
           MTG_PAT_CRSE_TOPIC_ID,
           DESCR,
           STND_MTG_PAT,
           PRINT_TOPIC_ON_XCR,
           MTG_PAT_HASH,
           MTG_PAT_HASH_CNT,
           CLASS_INSTRCTR_ORDER,
           PRI_CLASS_INSTRCTR_ORDER_FLAG,
           CLASS_INSTRCTR_SID,
           INSTRCTR_ASGN_NUM,
           INSTRCTR_SID,
           INSTRCTR_ROLE_SID,
           AUTOCALC_WRKLD_FLG,
           INSTRCTR_LOAD_PCT,
           GRADE_RSTR_ACCESS,
           GRADE_RSTR_ACCESS_SD,
           GRADE_RSTR_ACCESS_LD,
           CONTACT_MINUTES,
           SCHED_PRINT_INSTR,
           CE_CREDITS,
           CE_FTE,
           DAY_CREDITS,
           DAY_FTE,
           TOTAL_CREDITS,
           ENROLL_CNT,
           ENROLL_CRSE_CNT,
           DROP_CNT,
           DROP_CRSE_CNT,
           WAIT_CNT,
           WAIT_CRSE_CNT,
           IFTE_CNT,
           TAKEN_UNIT_SUM,
           TAKEN_UNIT_OL_SUM,
           WAIT_ENRL_CNT,
           WAIT_WAIT_CNT,
           WAIT_ENRL_DIST_CRSE_CNT,
           WAIT_DIST_CRSE_CNT,
           LOAD_ERROR,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM,
           BATCH_SID
      FROM CSMRT_OWNER.UM_F_CLASS
/
