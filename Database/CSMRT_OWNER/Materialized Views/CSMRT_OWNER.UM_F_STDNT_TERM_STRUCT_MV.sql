CREATE MATERIALIZED VIEW UM_F_STDNT_TERM_STRUCT_MV
NOCACHE
NOLOGGING
COMPRESS BASIC
NOPARALLEL
NO INMEMORY
BUILD DEFERRED
USING NO INDEX
REFRESH COMPLETE ON DEMAND
WITH PRIMARY KEY
ENABLE QUERY REWRITE
AS 
SELECT /*+ parallel(16) */
       UM_F_STDNT_TERM_MV.TERM_SID
           T_TERM_SID,
       UM_F_STDNT_TERM_MV.PERSON_SID
           T_PERSON_SID,
       UM_F_STDNT_TERM_MV.SRC_SYS_ID
           T_SRC_SYS_ID,
       UM_F_STDNT_TERM_MV.INSTITUTION_CD
           T_INSTITUTION_CD,
       UM_F_STDNT_TERM_MV.ACAD_CAR_CD
           T_ACAD_CAR_CD,
       UM_F_STDNT_TERM_MV.TERM_CD
           T_TERM_CD,
       UM_F_STDNT_TERM_MV.PERSON_ID
           T_PERSON_ID,
       UM_F_STDNT_TERM_MV.INSTITUTION_SID
           T_INSTITUTION_SID,
       UM_F_STDNT_TERM_MV.ACAD_CAR_SID
           T_ACAD_CAR_SID,
       UM_F_STDNT_TERM_MV.STDNT_TERM_KEY
           T_STDNT_TERM_KEY,
       UM_F_STDNT_TERM_MV.PS_STDNT_CAR_NUM
           T_PS_STDNT_CAR_NUM,
       UM_F_STDNT_TERM_MV.PS_PROG_SID
           T_PS_PROG_SID,
       UM_F_STDNT_TERM_MV.EFFDT
           T_EFFDT,
       UM_F_STDNT_TERM_MV.PS_PROG_STAT_SID
           T_PS_PROG_STAT_SID,
       UM_F_STDNT_TERM_MV.PS_PROG_ACN_SID
           T_PS_PROG_ACN_SID,
       UM_F_STDNT_TERM_MV.PS_PROG_ACN_RSN_SID
           T_PS_PROG_ACN_RSN_SID,
       UM_F_STDNT_TERM_MV.PS_ADMIT_TERM_SID
           T_PS_ADMIT_TERM_SID,
       UM_F_STDNT_TERM_MV.PS_EXP_GRAD_TERM_SID
           T_PS_EXP_GRAD_TERM_SID,
       UM_F_STDNT_TERM_MV.PS_DEGR_CHKOUT_LAST_EGT
           T_PS_DEGR_CHKOUT_LAST_EGT,
       UM_F_STDNT_TERM_MV.PS_DEGR_CHKOUT_LAST_EGT_LD
           T_PS_DEGR_CHKOUT_LAST_EGT_LD,
       UM_F_STDNT_TERM_MV.PS_DEGR_CHKOUT_LAST_EGT_EFFDT
           T_PS_DEGR_CHKOUT_LAST_EGT_EFFDT,
       UM_F_STDNT_TERM_MV.MAJ1_ACAD_PLAN_SID
           T_MAJ1_ACAD_PLAN_SID,
       UM_F_STDNT_TERM_MV.MAJ1_PLAN_SEQUENCE
           T_MAJ1_PLAN_SEQUENCE,
       UM_F_STDNT_TERM_MV.MAJ1_SPLAN1_SID
           T_MAJ1_SPLAN1_SID,
       UM_F_STDNT_TERM_MV.MAJ1_SPLAN2_SID
           T_MAJ1_SPLAN2_SID,
       UM_F_STDNT_TERM_MV.MAJ1_SPLAN3_SID
           T_MAJ1_SPLAN3_SID,
       UM_F_STDNT_TERM_MV.MAJ1_SPLAN4_SID
           T_MAJ1_SPLAN4_SID,                                -- Added Mar 2016
       UM_F_STDNT_TERM_MV.MAJ2_ACAD_PLAN_SID
           T_MAJ2_ACAD_PLAN_SID,
       UM_F_STDNT_TERM_MV.MAJ2_SPLAN1_SID
           T_MAJ2_SPLAN1_SID,
       UM_F_STDNT_TERM_MV.MAJ3_ACAD_PLAN_SID
           T_MAJ3_ACAD_PLAN_SID,
       UM_F_STDNT_TERM_MV.MAJ3_SPLAN1_SID
           T_MAJ3_SPLAN1_SID,
       UM_F_STDNT_TERM_MV.MAJ4_ACAD_PLAN_SID
           T_MAJ4_ACAD_PLAN_SID,
       UM_F_STDNT_TERM_MV.MIN1_ACAD_PLAN_SID
           T_MIN1_ACAD_PLAN_SID,
       UM_F_STDNT_TERM_MV.MIN2_ACAD_PLAN_SID
           T_MIN2_ACAD_PLAN_SID,
       UM_F_STDNT_TERM_MV.MIN3_ACAD_PLAN_SID
           T_MIN3_ACAD_PLAN_SID,
       UM_F_STDNT_TERM_MV.MIN4_ACAD_PLAN_SID
           T_MIN4_ACAD_PLAN_SID,
       UM_F_STDNT_TERM_MV.OTH1_ACAD_PLAN_SID
           T_OTH1_ACAD_PLAN_SID,
       UM_F_STDNT_TERM_MV.OTH2_ACAD_PLAN_SID
           T_OTH2_ACAD_PLAN_SID,
       UM_F_STDNT_TERM_MV.ACAD_GRP_ADVIS_SID
           T_ACAD_GRP_ADVIS_SID,
       UM_F_STDNT_TERM_MV.ACAD_LOAD_APPR_SID
           T_ACAD_LOAD_APPR_SID,
       UM_F_STDNT_TERM_MV.ACAD_LOAD_SID
           T_ACAD_LOAD_SID,
       UM_F_STDNT_TERM_MV.STRT_ACAD_LVL_SID
           T_STRT_ACAD_LVL_SID,
       UM_F_STDNT_TERM_MV.END_ACAD_LVL_SID
           T_END_ACAD_LVL_SID,
       UM_F_STDNT_TERM_MV.PRJTD_ACAD_LVL_SID
           T_PRJTD_ACAD_LVL_SID,
       UM_F_STDNT_TERM_MV.PRI_ACAD_PROG_SID
           T_PRI_ACAD_PROG_SID,
       UM_F_STDNT_TERM_MV.ACAD_STNDNG_SID
           T_ACAD_STNDNG_SID,
       UM_F_STDNT_TERM_MV.ACAD_STNDNG_TERM_CD_DESC
           T_ACAD_STNDNG_TERM_CD_DESC,                             -- May 2018
       UM_F_STDNT_TERM_MV.TERM_ACAD_STNDNG_SID
           T_TERM_ACAD_STNDNG_SID,                                 -- May 2018
       UM_F_STDNT_TERM_MV.BILL_CAR_SID
           T_BILL_CAR_SID,
       UM_F_STDNT_TERM_MV.FA_LOAD_SID
           T_FA_LOAD_SID,
       UM_F_STDNT_TERM_MV.PERSON_ATHL_SID
           T_PERSON_ATHL_SID,
       UM_F_STDNT_TERM_MV.PERSON_SRVC_IND_SID
           T_PERSON_SRVC_IND_SID,
       UM_F_STDNT_TERM_MV.ACAD_CAR_FIRST_FLG
           T_ACAD_CAR_FIRST_FLG,
       UM_F_STDNT_TERM_MV.ACAD_LOAD_DT
           T_ACAD_LOAD_DT,
       UM_F_STDNT_TERM_MV.ACAD_YR_SID
           T_ACAD_YR_SID,
       UM_F_STDNT_TERM_MV.ADMIT_TERM_CD
           T_ADMIT_TERM_CD,
       UM_F_STDNT_TERM_MV.ADMIT_TERM_SD
           T_ADMIT_TERM_SD,
       UM_F_STDNT_TERM_MV.ADMIT_TERM_CD_DESC
           T_ADMIT_TERM_CD_DESC,
       UM_F_STDNT_TERM_MV.ADMIT_TYPE_LD
           T_ADMIT_TYPE_LD,
       UM_F_STDNT_TERM_MV.CE_ADMIT_FLG
           T_CE_ADMIT_FLG,
       UM_F_STDNT_TERM_MV.CLASS_RANK_NUM
           T_CLASS_RANK_NUM,
       UM_F_STDNT_TERM_MV.CLASS_RANK_TOT
           T_CLASS_RANK_TOT,
       UM_F_STDNT_TERM_MV.COUNTRY
           T_COUNTRY,
       UM_F_STDNT_TERM_MV.ELIG_TO_ENROLL_FLG
           T_ELIG_TO_ENROLL_FLG,
       UM_F_STDNT_TERM_MV.ENRL_ON_TRN_DT
           T_ENRL_ON_TRN_DT,
       UM_F_STDNT_TERM_MV.EXT_ORG_ID
           T_EXT_ORG_ID,
       UM_F_STDNT_TERM_MV.FA_APPL_FLG
           T_FA_APPL_FLG,
       UM_F_STDNT_TERM_MV.FA_ELIG_FLG
           T_FA_ELIG_FLG,
       UM_F_STDNT_TERM_MV.FA_PELL_ELIGIBILITY
           T_FA_PELL_ELIGIBILITY,
       UM_F_STDNT_TERM_MV.FA_PELL_DISB_FLAG
           T_FA_PELL_DISB_FLAG,
       UM_F_STDNT_TERM_MV.FA_LOAN_DISB_FLAG
           T_FA_LOAN_DISB_FLAG,
       UM_F_STDNT_TERM_MV.FA_STATS_CALC_REQ_FLG
           T_FA_STATS_CALC_REQ_FLG,
       UM_F_STDNT_TERM_MV.FA_STATS_CALC_DTTM
           T_FA_STATS_CALC_DTTM,
       UM_F_STDNT_TERM_MV.FORM_OF_STUDY
           T_FORM_OF_STUDY,
       UM_F_STDNT_TERM_MV.FORM_OF_STUDY_SD
           T_FORM_OF_STUDY_SD,
       UM_F_STDNT_TERM_MV.FORM_OF_STUDY_LD
           T_FORM_OF_STUDY_LD,
       UM_F_STDNT_TERM_MV.FULLY_ENRL_DT
           T_FULLY_ENRL_DT,
       UM_F_STDNT_TERM_MV.FULLY_GRADED_DT
           T_FULLY_GRADED_DT,
       UM_F_STDNT_TERM_MV.LAST_ATTND_DT
           T_LAST_ATTND_DT,
       UM_F_STDNT_TERM_MV.LOCK_IN_AMT
           T_LOCK_IN_AMT,
       UM_F_STDNT_TERM_MV.LOCK_IN_DT
           T_LOCK_IN_DT,
       UM_F_STDNT_TERM_MV.MAX_CRSE_CNT
           T_MAX_CRSE_CNT,
       UM_F_STDNT_TERM_MV.NSLDS_LOAN_YEAR
           T_NSLDS_LOAN_YEAR,
       UM_F_STDNT_TERM_MV.NSLDS_LOAN_YEAR_SD
           T_NSLDS_LOAN_YEAR_SD,
       UM_F_STDNT_TERM_MV.NSLDS_LOAN_YEAR_LD
           T_NSLDS_LOAN_YEAR_LD,
       UM_F_STDNT_TERM_MV.OVRD_ACAD_LVL_PROJ_FLG
           T_OVRD_ACAD_LVL_PROJ_FLG,
       UM_F_STDNT_TERM_MV.OVRD_ACAD_LVL_ALL_FLG
           T_OVRD_ACAD_LVL_ALL_FLG,
       UM_F_STDNT_TERM_MV.OVRD_BILL_UNITS_FLG
           T_OVRD_BILL_UNITS_FLG,
       UM_F_STDNT_TERM_MV.OVRD_INIT_ADD_FEE_FLG
           T_OVRD_INIT_ADD_FEE_FLG,
       UM_F_STDNT_TERM_MV.OVRD_INIT_ENR_FEE_FLG
           T_OVRD_INIT_ENR_FEE_FLG,
       UM_F_STDNT_TERM_MV.OVRD_MAX_UNITS_FLG
           T_OVRD_MAX_UNITS_FLG,
       UM_F_STDNT_TERM_MV.OVRD_TUIT_GROUP
           T_OVRD_TUIT_GROUP,
       UM_F_STDNT_TERM_MV.OVRD_WDRW_SCHED
           T_OVRD_WDRW_SCHED,
       UM_F_STDNT_TERM_MV.PRJTD_BILL_UNIT
           T_PRJTD_BILL_UNIT,
       UM_F_STDNT_TERM_MV.PRO_RATA_ELIG_FLG
           T_PRO_RATA_ELIG_FLG,
       UM_F_STDNT_TERM_MV.REFUND_PCT
           T_REFUND_PCT,
       UM_F_STDNT_TERM_MV.REFUND_SCHEME
           T_REFUND_SCHEME,
       UM_F_STDNT_TERM_MV.REG_CARD_DT
           T_REG_CARD_DT,
       UM_F_STDNT_TERM_MV.REG_FLG
           T_REG_FLG,
       UM_F_STDNT_TERM_MV.RESET_CUM_STATS_FLG
           T_RESET_CUM_STATS_FLG,
       UM_F_STDNT_TERM_MV.SEL_GROUP
           T_SEL_GROUP,
       UM_F_STDNT_TERM_MV.SSR_ACTV_DT
           T_SSR_ACTV_DT,
       UM_F_STDNT_TERM_MV.STACK_BEGIN_FLG
           T_STACK_BEGIN_FLG,                                      -- Mar 2018
       UM_F_STDNT_TERM_MV.STACK_CONTINUE_FLG
           T_STACK_CONTINUE_FLG,                                   -- Mar 2018
       UM_F_STDNT_TERM_MV.STACK_READMIT_FLG
           T_STACK_READMIT_FLG,                                    -- Mar 2018
       UM_F_STDNT_TERM_MV.STATS_ON_TRN_DT
           T_STATS_ON_TRN_DT,
       UM_F_STDNT_TERM_MV.STDNT_CAR_NUM
           T_STDNT_CAR_NUM,
       UM_F_STDNT_TERM_MV.STUDY_AGREEMENT
           T_STUDY_AGREEMENT,
       UM_F_STDNT_TERM_MV.TERM_ACTV_FLG
           T_TERM_ACTV_FLG,
       UM_F_STDNT_TERM_MV.TERM_ACTV_MAX_TERM_CD
           T_TERM_ACTV_MAX_TERM_CD,
       UM_F_STDNT_TERM_MV.TERM_ACTV_MAX_TERM_SID
           T_TERM_ACTV_MAX_TERM_SID,                              -- July 2016
       UM_F_STDNT_TERM_MV.TERM_BEGIN_DT
           T_TERM_BEGIN_DT,                                        -- Mar 2018
       UM_F_STDNT_TERM_MV.TERM_END_DT
           T_TERM_END_DT,                                          -- Mar 2018
       UM_F_STDNT_TERM_MV.TERM_TYPE
           T_TERM_TYPE,
       UM_F_STDNT_TERM_MV.TUIT_CALC_REQ_FLG
           T_TUIT_CALC_REQ_FLG,
       UM_F_STDNT_TERM_MV.TUIT_CALC_DTTM
           T_TUIT_CALC_DTTM,
       UM_F_STDNT_TERM_MV.UGRD_SECOND_DEGR_FLG
           T_UGRD_SECOND_DEGR_FLG,
       UM_F_STDNT_TERM_MV.UMBOS_HON_FLG
           T_UMBOS_HON_FLG,
       UM_F_STDNT_TERM_MV.UNTPRG_CHG_NSLC_DT
           T_UNTPRG_CHG_NSLC_DT,
       UM_F_STDNT_TERM_MV.UNIT_MULTIPLIER
           T_UNIT_MULTIPLIER,
       UM_F_STDNT_TERM_MV.WDN_DT
           T_WDN_DT,
       UM_F_STDNT_TERM_MV.WITHDRAW_CODE
           T_WITHDRAW_CODE,
       UM_F_STDNT_TERM_MV.WITHDRAW_CODE_SD
           T_WITHDRAW_CODE_SD,
       UM_F_STDNT_TERM_MV.WITHDRAW_CODE_LD
           T_WITHDRAW_CODE_LD,
       UM_F_STDNT_TERM_MV.WITHDRAW_REASON
           T_WITHDRAW_REASON,
       UM_F_STDNT_TERM_MV.WITHDRAW_REASON_SD
           T_WITHDRAW_REASON_SD,
       UM_F_STDNT_TERM_MV.WITHDRAW_REASON_LD
           T_WITHDRAW_REASON_LD,
       UM_F_STDNT_TERM_MV.UNDUP_STDNT_CNT
           T_UNDUP_STDNT_CNT,                                -- Added Mar 2016
       UM_F_STDNT_TERM_MV.TERM_ENRL_ORDER
           T_TERM_ENRL_ORDER,                                     -- July 2016
       UM_F_STDNT_TERM_MV.UNIT_TAKEN_GPA
           T_UNIT_TAKEN_GPA,
       UM_F_STDNT_TERM_MV.UNIT_TAKEN_NOGPA
           T_UNIT_TAKEN_NOGPA,
       UM_F_STDNT_TERM_MV.GRADE_PTS
           T_GRADE_PTS,
       UM_F_STDNT_TERM_MV.CUR_GPA
           T_CUR_GPA,
       UM_F_STDNT_TERM_MV.UNIT_PASSED_GPA
           T_UNIT_PASSED_GPA,
       UM_F_STDNT_TERM_MV.UNIT_PASSED_NOGPA
           T_UNIT_PASSED_NOGPA,
       UM_F_STDNT_TERM_MV.UNIT_INPROG_GPA
           T_UNIT_INPROG_GPA,
       UM_F_STDNT_TERM_MV.UNIT_INPROG_NOGPA
           T_UNIT_INPROG_NOGPA,
       UM_F_STDNT_TERM_MV.UNIT_TAKEN_PROGRESS
           T_UNIT_TAKEN_PROGRESS,
       UM_F_STDNT_TERM_MV.UNIT_PASSED_PROGRESS
           T_UNIT_PASSED_PROGRESS,
       UM_F_STDNT_TERM_MV.UNIT_AUDIT
           T_UNIT_AUDIT,
       UM_F_STDNT_TERM_MV.TRF_UNIT_TAKEN_GPA
           T_TRF_UNIT_TAKEN_GPA,
       UM_F_STDNT_TERM_MV.TRF_UNIT_TAKEN_NOGPA
           T_TRF_UNIT_TAKEN_NOGPA,
       UM_F_STDNT_TERM_MV.TRF_GRADE_PTS
           T_TRF_GRADE_PTS,
       UM_F_STDNT_TERM_MV.TRF_CUR_GPA
           T_TRF_CUR_GPA,
       UM_F_STDNT_TERM_MV.TRF_UNIT_PASSED_GPA
           T_TRF_UNIT_PASSED_GPA,
       UM_F_STDNT_TERM_MV.TRF_UNIT_PASSED_NOGPA
           T_TRF_UNIT_PASSED_NOGPA,
       UM_F_STDNT_TERM_MV.TRF_UNIT_TOT_GRADED
           T_TRF_UNIT_TOT_GRADED,
       UM_F_STDNT_TERM_MV.TRF_UNIT_TOT
           T_TRF_UNIT_TOT,
       UM_F_STDNT_TERM_MV.TRF_UNIT_ADJUST
           T_TRF_UNIT_ADJUST,
       UM_F_STDNT_TERM_MV.TRF_UNIT_TOT_ADJUSTED
           T_TRF_UNIT_TOT_ADJUSTED,
       UM_F_STDNT_TERM_MV.TRF_UNIT_TEST_CREDIT
           T_TRF_UNIT_TEST_CREDIT,
       UM_F_STDNT_TERM_MV.TRF_UNIT_TRANSFER
           T_TRF_UNIT_TRANSFER,
       UM_F_STDNT_TERM_MV.TRF_UNIT_OTHER
           T_TRF_UNIT_OTHER,
       UM_F_STDNT_TERM_MV.COMB_UNIT_TAKEN_GPA
           T_COMB_UNIT_TAKEN_GPA,
       UM_F_STDNT_TERM_MV.COMB_UNIT_TAKEN_NOGPA
           T_COMB_UNIT_TAKEN_NOGPA,
       UM_F_STDNT_TERM_MV.COMB_GRADE_PTS
           T_COMB_GRADE_PTS,
       UM_F_STDNT_TERM_MV.COMB_CUR_GPA
           T_COMB_CUR_GPA,
       UM_F_STDNT_TERM_MV.COMB_UNIT_PASSED_GPA
           T_COMB_UNIT_PASSED_GPA,
       UM_F_STDNT_TERM_MV.COMB_UNIT_PASSED_NOGPA
           T_COMB_UNIT_PASSED_NOGPA,
       UM_F_STDNT_TERM_MV.COMB_UNIT_PASSED
           T_COMB_UNIT_PASSED,
       UM_F_STDNT_TERM_MV.COMB_UNIT_TOT
           T_COMB_UNIT_TOT,
       UM_F_STDNT_TERM_MV.CUM_UNIT_TAKEN_GPA
           T_CUM_UNIT_TAKEN_GPA,
       UM_F_STDNT_TERM_MV.CUM_UNIT_TAKEN_NOGPA
           T_CUM_UNIT_TAKEN_NOGPA,
       UM_F_STDNT_TERM_MV.CUM_GRADE_PTS
           T_CUM_GRADE_PTS,
       UM_F_STDNT_TERM_MV.CUM_CUR_GPA
           T_CUM_CUR_GPA,
       UM_F_STDNT_TERM_MV.CUM_UNIT_PASSED_GPA
           T_CUM_UNIT_PASSED_GPA,
       UM_F_STDNT_TERM_MV.CUM_UNIT_PASSED_NOGPA
           T_CUM_UNIT_PASSED_NOGPA,
       UM_F_STDNT_TERM_MV.CUM_UNIT_INPROG_GPA
           T_CUM_UNIT_INPROG_GPA,
       UM_F_STDNT_TERM_MV.CUM_UNIT_INPROG_NOGPA
           T_CUM_UNIT_INPROG_NOGPA,
       UM_F_STDNT_TERM_MV.CUM_UNIT_TAKEN_PROGRESS
           T_CUM_UNIT_TAKEN_PROGRESS,
       UM_F_STDNT_TERM_MV.CUM_UNIT_PASSED_PROGRESS
           T_CUM_UNIT_PASSED_PROGRESS,
       UM_F_STDNT_TERM_MV.CUM_UNIT_AUDIT
           T_CUM_UNIT_AUDIT,
       UM_F_STDNT_TERM_MV.CUM_TRF_UNIT_TAKEN_GPA
           T_CUM_TRF_UNIT_TAKEN_GPA,
       UM_F_STDNT_TERM_MV.CUM_TRF_UNIT_TAKEN_NOGPA
           T_CUM_TRF_UNIT_TAKEN_NOGPA,
       UM_F_STDNT_TERM_MV.CUM_TRF_GRADE_PTS
           T_CUM_TRF_GRADE_PTS,
       UM_F_STDNT_TERM_MV.CUM_TRF_CUR_GPA
           T_CUM_TRF_CUR_GPA,
       UM_F_STDNT_TERM_MV.CUM_TRF_UNIT_PASSED_GPA
           T_CUM_TRF_UNIT_PASSED_GPA,
       UM_F_STDNT_TERM_MV.CUM_TRF_UNIT_PASSED_NOGPA
           T_CUM_TRF_UNIT_PASSED_NOGPA,
       UM_F_STDNT_TERM_MV.CUM_TRF_UNIT_TOT_GRADED
           T_CUM_TRF_UNIT_TOT_GRADED,
       UM_F_STDNT_TERM_MV.CUM_TRF_UNIT_TOT
           T_CUM_TRF_UNIT_TOT,
       UM_F_STDNT_TERM_MV.CUM_TRF_UNIT_ADJUST
           T_CUM_TRF_UNIT_ADJUST,
       UM_F_STDNT_TERM_MV.CUM_TRF_UNIT_TOT_ADJUSTED
           T_CUM_TRF_UNIT_TOT_ADJUSTED,
       UM_F_STDNT_TERM_MV.CUM_TRF_UNIT_TEST_CREDIT
           T_CUM_TRF_UNIT_TEST_CREDIT,
       UM_F_STDNT_TERM_MV.CUM_TRF_UNIT_TRANSFER
           T_CUM_TRF_UNIT_TRANSFER,
       UM_F_STDNT_TERM_MV.CUM_TRF_UNIT_OTHER
           T_CUM_TRF_UNIT_OTHER,
       UM_F_STDNT_TERM_MV.CUM_COMB_UNIT_TAKEN_GPA
           T_CUM_COMB_UNIT_TAKEN_GPA,
       UM_F_STDNT_TERM_MV.CUM_COMB_UNIT_TAKEN_NOGPA
           T_CUM_COMB_UNIT_TAKEN_NOGPA,
       UM_F_STDNT_TERM_MV.CUM_COMB_GRADE_PTS
           T_CUM_COMB_GRADE_PTS,
       UM_F_STDNT_TERM_MV.CUM_COMB_CUR_GPA
           T_CUM_COMB_CUR_GPA,
       UM_F_STDNT_TERM_MV.CUM_COMB_UNIT_PASSED_GPA
           T_CUM_COMB_UNIT_PASSED_GPA,
       UM_F_STDNT_TERM_MV.CUM_COMB_UNIT_PASSED_NOGPA
           T_CUM_COMB_UNIT_PASSED_NOGPA,
       UM_F_STDNT_TERM_MV.CUM_COMB_UNIT_PASSED
           T_CUM_COMB_UNIT_PASSED,
       UM_F_STDNT_TERM_MV.CUM_COMB_UNIT_TOT
           T_CUM_COMB_UNIT_TOT,
       UM_F_STDNT_TERM_MV.MAX_UNIT_AUDIT
           T_MAX_UNIT_AUDIT,                                       -- Apr 2019
       UM_F_STDNT_TERM_MV.MAX_UNIT_NOGPA
           T_MAX_UNIT_NOGPA,                                       -- Apr 2019
       UM_F_STDNT_TERM_MV.MAX_UNIT_TOT
           T_MAX_UNIT_TOT,                                         -- Apr 2019
       UM_F_STDNT_TERM_MV.MAX_UNIT_WAIT
           T_MAX_UNIT_WAIT,                                        -- Apr 2019
       UM_F_STDNT_TERM_MV.ENRLMT_MAX_TERM_CD
           T_ENRLMT_MAX_TERM_CD,
       UM_F_STDNT_TERM_MV.ENRLMT_MAX_TERM_SID
           T_ENRLMT_MAX_TERM_SID,                                  -- Mar 2018
       UM_F_STDNT_TERM_MV.ENRLMT_MIN_TERM_CD
           T_ENRLMT_MIN_TERM_CD,                                  -- June 2018
       UM_F_STDNT_TERM_MV.ENRLMT_MIN_TERM_SID
           T_ENRLMT_MIN_TERM_SID,                                 -- June 2018
       UM_F_STDNT_TERM_MV.ENRLMT_MIN_PERSON_TERM_CD
           T_ENRLMT_MIN_PERSON_TERM_CD,                           -- June 2018
       UM_F_STDNT_TERM_MV.ENRLMT_MIN_PERSON_TERM_SID
           T_ENRLMT_MIN_PERSON_TERM_SID,                          -- June 2018
       UM_F_STDNT_TERM_MV.ENRLMT_PREV_TERM_CD
           T_ENRLMT_PREV_TERM_CD,                                 -- June 2018
       UM_F_STDNT_TERM_MV.ENRLMT_PREV_TERM_SID
           T_ENRLMT_PREV_TERM_SID,                                -- June 2018
       UM_F_STDNT_TERM_MV.ENRL_ADD_MAX_DT
           T_ENRL_ADD_MAX_DT,
       UM_F_STDNT_TERM_MV.ENRL_DROP_MAX_DT
           T_ENRL_DROP_MAX_DT,
       UM_F_STDNT_TERM_MV.AUDIT_CNT
           T_AUDIT_CNT,
       UM_F_STDNT_TERM_MV.AUDIT_ONLY_FLG
           T_AUDIT_ONLY_FLG,                                 -- Added Aug 2015
       UM_F_STDNT_TERM_MV.BILLING_UNIT
           T_BILLING_UNIT,
       UM_F_STDNT_TERM_MV.CE_CREDITS
           T_CE_CREDITS,
       UM_F_STDNT_TERM_MV.CE_FTE
           T_CE_FTE,
       UM_F_STDNT_TERM_MV.CE_ONLY_FLG
           T_CE_ONLY_FLG,                                    -- Added Aug 2015
       UM_F_STDNT_TERM_MV.DAY_CREDITS
           T_DAY_CREDITS,
       UM_F_STDNT_TERM_MV.DAY_FTE
           T_DAY_FTE,
       UM_F_STDNT_TERM_MV.DAY_ONLY_FLG
           T_DAY_ONLY_FLG,                                   -- Added Aug 2015
       UM_F_STDNT_TERM_MV.CRSE_CNT
           T_CRSE_CNT,
       UM_F_STDNT_TERM_MV.DROP_CNT
           T_DROP_CNT,
       UM_F_STDNT_TERM_MV.ENROLL_CNT
           T_ENROLL_CNT,
       UM_F_STDNT_TERM_MV.ENROLL_DT
           T_ENROLL_DT,                                      -- Added Aug 2015
       UM_F_STDNT_TERM_MV.ENROLL_FLG
           T_ENROLL_FLG,                                     -- Added Aug 2015
       UM_F_STDNT_TERM_MV.ERN_UNIT
           T_ERN_UNIT,
       UM_F_STDNT_TERM_MV.IFTE_CNT
           T_IFTE_CNT,
       UM_F_STDNT_TERM_MV.ONLINE_CNT
           T_ONLINE_CNT,
       UM_F_STDNT_TERM_MV.ONLINE_CREDITS
           T_ONLINE_CREDITS,
       UM_F_STDNT_TERM_MV.CE_ONLINE_CREDITS                  -- Oct 2020
           T_CE_ONLINE_CREDITS,
       UM_F_STDNT_TERM_MV.ONLINE_ONLY_FLG
           T_ONLINE_ONLY_FLG,                                -- Added Aug 2015
       UM_F_STDNT_TERM_MV.PRGRS_UNIT
           T_PRGRS_UNIT,
       UM_F_STDNT_TERM_MV.PRGRS_FA_UNIT
           T_PRGRS_FA_UNIT,
       UM_F_STDNT_TERM_MV.TAKEN_UNIT
           T_TAKEN_UNIT,
       UM_F_STDNT_TERM_MV.TOT_CREDITS
           T_TOT_CREDITS,                                    -- Added Aug 2015
       UM_F_STDNT_TERM_MV.TOT_FTE
           T_TOT_FTE,                                        -- Added Aug 2015
       UM_F_STDNT_TERM_MV.WAIT_CNT
           T_WAIT_CNT,
       UM_F_STDNT_TERM_MV.TERM_COUNT
           T_TERM_COUNT,
       UM_F_STDNT_ACAD_STRUCT.TERM_SID
           S_TERM_SID,
       UM_F_STDNT_ACAD_STRUCT.PERSON_SID
           S_PERSON_SID,
       UM_F_STDNT_ACAD_STRUCT.STDNT_CAR_NUM
           S_STDNT_CAR_NUM,
       UM_F_STDNT_ACAD_STRUCT.ACAD_PLAN_SID
           S_ACAD_PLAN_SID,
       UM_F_STDNT_ACAD_STRUCT.ACAD_SPLAN_SID
           S_ACAD_SPLAN_SID,
       UM_F_STDNT_ACAD_STRUCT.SRC_SYS_ID
           S_SRC_SYS_ID,
       UM_F_STDNT_ACAD_STRUCT.INSTITUTION_CD
           S_INSTITUTION_CD,
       UM_F_STDNT_ACAD_STRUCT.ACAD_CAR_CD
           S_ACAD_CAR_CD,
       UM_F_STDNT_ACAD_STRUCT.TERM_CD
           S_TERM_CD,
       UM_F_STDNT_ACAD_STRUCT.PERSON_ID
           S_PERSON_ID,
       UM_F_STDNT_ACAD_STRUCT.ACAD_PROG_CD
           S_ACAD_PROG_CD,
       UM_F_STDNT_ACAD_STRUCT.ACAD_PLAN_CD
           S_ACAD_PLAN_CD,
       UM_F_STDNT_ACAD_STRUCT.ACAD_SPLAN_CD
           S_ACAD_SPLAN_CD,
       UM_F_STDNT_ACAD_STRUCT.EFFDT
           S_EFFDT,
       UM_F_STDNT_ACAD_STRUCT.EFFSEQ
           S_EFFSEQ,
       UM_F_STDNT_ACAD_STRUCT.ACTION_DT
           S_ACTION_DT,
       UM_F_STDNT_ACAD_STRUCT.ACAD_CAR_SID
           S_ACAD_CAR_SID,
       UM_F_STDNT_ACAD_STRUCT.ACAD_PROG_SID
           S_ACAD_PROG_SID,
       UM_F_STDNT_ACAD_STRUCT.ADMIT_TERM_SID
           S_ADMIT_TERM_SID,
       UM_F_STDNT_ACAD_STRUCT.CAMPUS_SID
           S_CAMPUS_SID,
       UM_F_STDNT_ACAD_STRUCT.COMPL_TERM_SID
           S_COMPL_TERM_SID,
       UM_F_STDNT_ACAD_STRUCT.EXP_GRAD_TERM_SID
           S_EXP_GRAD_TERM_SID,
       UM_F_STDNT_ACAD_STRUCT.INSTITUTION_SID
           S_INSTITUTION_SID,
       UM_F_STDNT_ACAD_STRUCT.REQ_TERM_SID
           S_REQ_TERM_SID,
       UM_F_STDNT_ACAD_STRUCT.PROG_STAT_SID
           S_PROG_STAT_SID,
       UM_F_STDNT_ACAD_STRUCT.PROG_ACN_SID
           S_PROG_ACN_SID,
       UM_F_STDNT_ACAD_STRUCT.PROG_ACN_RSN_SID
           S_PROG_ACN_RSN_SID,
       UM_F_STDNT_ACAD_STRUCT.STACK_BEGIN_TERM_SID
           S_STACK_BEGIN_TERM_SID,
       UM_F_STDNT_ACAD_STRUCT.STACK_READMIT_TERM_SID
           S_STACK_READMIT_TERM_SID,
       UM_F_STDNT_ACAD_STRUCT.CALC_TERM_LIMIT_SID
           S_CALC_TERM_LIMIT_SID,                            -- Added Feb 2016
       UM_F_STDNT_ACAD_STRUCT.NEW_TERM_LIMIT_SID
           S_NEW_TERM_LIMIT_SID,                             -- Added Feb 2016
       UM_F_STDNT_ACAD_STRUCT.PLAN_COMPL_TERM_SID
           S_PLAN_COMPL_TERM_SID,
       UM_F_STDNT_ACAD_STRUCT.PLAN_REQ_TERM_SID
           S_PLAN_REQ_TERM_SID,
       UM_F_STDNT_ACAD_STRUCT.SPLAN_REQ_TERM_SID
           S_SPLAN_REQ_TERM_SID,
       UM_F_STDNT_ACAD_STRUCT.ADM_APPL_NBR
           S_ADM_APPL_NBR,
       UM_F_STDNT_ACAD_STRUCT.CERTIFICATE_ONLY_FLG
           S_CERTIFICATE_ONLY_FLG,
       UM_F_STDNT_ACAD_STRUCT.D_RANK
           S_D_RANK,
       UM_F_STDNT_ACAD_STRUCT.D_RANK_PTYPE
           S_D_RANK_PTYPE,
       UM_F_STDNT_ACAD_STRUCT.D_RANK_SPLAN
           S_D_RANK_SPLAN,
       UM_F_STDNT_ACAD_STRUCT.DATA_FROM_ADM_APPL_FLG
           S_DATA_FROM_ADM_APPL_FLG,
       UM_F_STDNT_ACAD_STRUCT.DEGR_CHKOUT_STAT
           S_DEGR_CHKOUT_STAT,
       UM_F_STDNT_ACAD_STRUCT.DEGR_CHKOUT_STAT_SD
           S_DEGR_CHKOUT_STAT_SD,
       UM_F_STDNT_ACAD_STRUCT.DEGR_CHKOUT_STAT_LD
           S_DEGR_CHKOUT_STAT_LD,
       UM_F_STDNT_ACAD_STRUCT.DEGR_CHKOUT_LAST
           S_DEGR_CHKOUT_LAST,                              -- Added Sept 2015
       UM_F_STDNT_ACAD_STRUCT.DEGR_CHKOUT_LAST_SD
           S_DEGR_CHKOUT_LAST_SD,                           -- Added Sept 2015
       UM_F_STDNT_ACAD_STRUCT.DEGR_CHKOUT_LAST_LD
           S_DEGR_CHKOUT_LAST_LD,                           -- Added Sept 2015
       UM_F_STDNT_ACAD_STRUCT.DEGR_CHKOUT_LAST_EGT
           S_DEGR_CHKOUT_LAST_EGT,                           -- Added Dec 2015
       UM_F_STDNT_ACAD_STRUCT.DEGR_CHKOUT_LAST_EGT_SD
           S_DEGR_CHKOUT_LAST_EGT_SD,                        -- Added Dec 2015
       UM_F_STDNT_ACAD_STRUCT.DEGR_CHKOUT_LAST_EGT_LD
           S_DEGR_CHKOUT_LAST_EGT_LD,                        -- Added Dec 2015
       UM_F_STDNT_ACAD_STRUCT.DEGR_CHKOUT_LAST_EGT_EFFDT
           S_DEGR_CHKOUT_LAST_EGT_EFFDT,                     -- Added Dec 2015
       UM_F_STDNT_ACAD_STRUCT.DEGR_CHKOUT_LAST_EGT_ORDER
           S_DEGR_CHKOUT_LAST_EGT_ORDER,                     -- Added Dec 2015
       UM_F_STDNT_ACAD_STRUCT.DEGREE_NBR
           S_DEGREE_NBR,                                     -- Added Oct 2017
       UM_F_STDNT_ACAD_STRUCT.DEGREE_SEEKING_FLG
           S_DEGREE_SEEKING_FLG,
       UM_F_STDNT_ACAD_STRUCT.ED_LVL_RANK
           S_ED_LVL_RANK,
       UM_F_STDNT_ACAD_STRUCT.MAJOR_RANK
           S_MAJOR_RANK,                                    -- Added Sept 2015
       UM_F_STDNT_ACAD_STRUCT.MINOR_RANK
           S_MINOR_RANK,                                    -- Added Sept 2015
       UM_F_STDNT_ACAD_STRUCT.SPLAN_RANK
           S_SPLAN_RANK,                                    -- Added Sept 2015
       UM_F_STDNT_ACAD_STRUCT.PRIM_STACK_CAREER_RANK
           S_PRIM_STACK_CAREER_RANK,                        -- Added Sept 2015
       UM_F_STDNT_ACAD_STRUCT.PRIM_STACK_STDNT_RANK
           S_PRIM_STACK_STDNT_RANK,                         -- Added Sept 2015
       UM_F_STDNT_ACAD_STRUCT.MIN_PROG_STAT_CTGRY
           S_MIN_PROG_STAT_CTGRY,
       UM_F_STDNT_ACAD_STRUCT.MISSING_PROG_PLAN_FLG
           S_MISSING_PROG_PLAN_FLG,
       UM_F_STDNT_ACAD_STRUCT.PROGRAM_CATGRY
           S_PROGRAM_CATGRY,
       UM_F_STDNT_ACAD_STRUCT.PLAN_ADVIS_STAT
           S_PLAN_ADVIS_STAT,
       UM_F_STDNT_ACAD_STRUCT.PLAN_DECLARE_DT
           S_PLAN_DECLARE_DT,
       UM_F_STDNT_ACAD_STRUCT.PLAN_GPA
           S_PLAN_GPA,                                       -- Added Mar 2017
       UM_F_STDNT_ACAD_STRUCT.PLAN_GPA_DT
           S_PLAN_GPA_DT,                                    -- Added Mar 2017
       UM_F_STDNT_ACAD_STRUCT.PLAN_SEQUENCE
           S_PLAN_SEQUENCE,
       UM_F_STDNT_ACAD_STRUCT.PLAN_DEGR_CHKOUT_STAT
           S_PLAN_DEGR_CHKOUT_STAT,
       UM_F_STDNT_ACAD_STRUCT.PLAN_STDNT_DEGR_CD
           S_PLAN_STDNT_DEGR_CD,
       UM_F_STDNT_ACAD_STRUCT.SPLAN_DECLARE_DT
           S_SPLAN_DECLARE_DT,
       UM_F_STDNT_ACAD_STRUCT.STACK_BEGIN_FLG
           S_STACK_BEGIN_FLG,
       UM_F_STDNT_ACAD_STRUCT.STACK_CONTINUE_FLG
           S_STACK_CONTINUE_FLG,
       UM_F_STDNT_ACAD_STRUCT.STACK_READMIT_EFFDT
           S_STACK_READMIT_EFFDT,                            -- Added Dec 2015
       UM_F_STDNT_ACAD_STRUCT.STACK_READMIT_FLG
           S_STACK_READMIT_FLG,
       UM_F_STDNT_ACAD_STRUCT.STACK_LAST_UPD_TERM_CD
           S_STACK_LAST_UPD_TERM_CD,
       UM_F_STDNT_ACAD_STRUCT.STACK_LAST_UPD_TERM_SID
           S_STACK_LAST_UPD_TERM_SID,                        -- Added Oct 2017
       UM_F_STDNT_ACAD_STRUCT.TERM_BEGIN_DT
           S_TERM_BEGIN_DT,                                  -- Added Oct 2017
       UM_F_STDNT_ACAD_STRUCT.TERM_END_DT
           S_TERM_END_DT,                                    -- Added Oct 2017
       UM_F_STDNT_ACAD_STRUCT.DEG_LIMIT_EFFDT
           S_DEG_LIMIT_EFFDT,                                -- Added Feb 2016
       UM_F_STDNT_ACAD_STRUCT.NEW_TERM_LIMIT_CD
           S_NEW_TERM_LIMIT_CD,                              -- Added Feb 2016
       UM_F_STDNT_ACAD_STRUCT.CALC_TERM_LIMIT_CD
           S_CALC_TERM_LIMIT_CD,                             -- Added Feb 2016
       UM_F_STDNT_ACAD_STRUCT.DEG_LIMIT_UM_OVRRIDE_EXTENSN
           S_DEG_LIMIT_UM_OVRRIDE_EXTENSN,                   -- Added Feb 2016
       UM_F_STDNT_ACAD_STRUCT.DEG_LIMIT_YEARS
           S_DEG_LIMIT_YEARS,                                -- Added Feb 2016
       UM_F_STDNT_ACAD_STRUCT.DEG_LIMIT_COMMENTS_MSGS
           S_DEG_LIMIT_COMMENTS_MSGS,                        -- Added Feb 2016
       UM_F_STDNT_ACAD_STRUCT.UMDAR_ED_LVL
           S_UMDAR_ED_LVL,
       UM_F_STDNT_ACAD_STRUCT.UMDAR_ED_LVL_SD
           S_UMDAR_ED_LVL_SD,
       UM_F_STDNT_ACAD_STRUCT.UMDAR_ED_LVL_LD
           S_UMDAR_ED_LVL_LD,
       UM_F_STDNT_ACAD_STRUCT.PROG_CNT
           S_PROG_CNT,
       UM_F_STDNT_ACAD_STRUCT.PRIM_PROG_MAJOR_1_CNT
           S_PRIM_PROG_MAJOR_1_CNT,
       UM_F_STDNT_ACAD_STRUCT.PRIM_PROG_MAJOR_2_CNT
           S_PRIM_PROG_MAJOR_2_CNT,
       UM_F_STDNT_ACAD_STRUCT.PRIM_PROG_MINOR_1_CNT
           S_PRIM_PROG_MINOR_1_CNT,
       UM_F_STDNT_ACAD_STRUCT.PRIM_PROG_MINOR_2_CNT
           S_PRIM_PROG_MINOR_2_CNT,
       UM_F_STDNT_ACAD_STRUCT.PRIM_PROG_OTHER_PLAN_CNT
           S_PRIM_PROG_OTHER_PLAN_CNT,
       UM_F_STDNT_ACAD_STRUCT.SEC_PROG_MAJOR_1_CNT
           S_SEC_PROG_MAJOR_1_CNT,
       UM_F_STDNT_ACAD_STRUCT.SEC_PROG_MAJOR_2_CNT
           S_SEC_PROG_MAJOR_2_CNT,
       UM_F_STDNT_ACAD_STRUCT.SEC_PROG_MINOR_1_CNT
           S_SEC_PROG_MINOR_1_CNT,
       UM_F_STDNT_ACAD_STRUCT.SEC_PROG_MINOR_2_CNT
           S_SEC_PROG_MINOR_2_CNT,
       UM_F_STDNT_ACAD_STRUCT.SEC_PROG_OTHER_PLAN_CNT
           S_SEC_PROG_OTHER_PLAN_CNT,
       UM_F_STDNT_ACAD_STRUCT.PP_SUB_PLAN_11_CNT
           S_PP_SUB_PLAN_11_CNT,
       UM_F_STDNT_ACAD_STRUCT.PP_SUB_PLAN_12_CNT
           S_PP_SUB_PLAN_12_CNT,
       UM_F_STDNT_ACAD_STRUCT.PP_SUB_PLAN_21_CNT
           S_PP_SUB_PLAN_21_CNT,
       UM_F_STDNT_ACAD_STRUCT.PP_SUB_PLAN_22_CNT
           S_PP_SUB_PLAN_22_CNT,
       UM_F_STDNT_ACAD_STRUCT.SP_SUB_PLAN_11_CNT
           S_SP_SUB_PLAN_11_CNT,
       UM_F_STDNT_ACAD_STRUCT.SP_SUB_PLAN_12_CNT
           S_SP_SUB_PLAN_12_CNT,
       UM_F_STDNT_ACAD_STRUCT.SP_SUB_PLAN_21_CNT
           S_SP_SUB_PLAN_21_CNT,
       UM_F_STDNT_ACAD_STRUCT.SP_SUB_PLAN_22_CNT
           S_SP_SUB_PLAN_22_CNT,
       UM_F_STDNT_ACAD_STRUCT.UNDUP_STDNT_CNT
           S_UNDUP_STDNT_CNT,
       UM_F_STDNT_ACAD_STRUCT.PRIM_PROG_MAJOR1_ORDER
           S_PRIM_PROG_MAJOR1_ORDER
  FROM UM_F_STDNT_TERM_MV, UM_F_STDNT_ACAD_STRUCT
 WHERE     UM_F_STDNT_ACAD_STRUCT.INSTITUTION_SID =
           UM_F_STDNT_TERM_MV.INSTITUTION_SID
       AND UM_F_STDNT_ACAD_STRUCT.ACAD_CAR_SID =
           UM_F_STDNT_TERM_MV.ACAD_CAR_SID
       AND UM_F_STDNT_ACAD_STRUCT.TERM_SID = UM_F_STDNT_TERM_MV.TERM_SID
       AND UM_F_STDNT_ACAD_STRUCT.PERSON_SID = UM_F_STDNT_TERM_MV.PERSON_SID
       AND UM_F_STDNT_ACAD_STRUCT.SRC_SYS_ID = UM_F_STDNT_TERM_MV.SRC_SYS_ID;