DROP TABLE CSMRT_OWNER.UM_F_STDNT_TERM CASCADE CONSTRAINTS
/

--
-- UM_F_STDNT_TERM  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_STDNT_TERM
(
  TERM_SID                       INTEGER        NOT NULL,
  PERSON_SID                     INTEGER        NOT NULL,
  SRC_SYS_ID                     VARCHAR2(5 BYTE) NOT NULL,
  INSTITUTION_CD                 VARCHAR2(5 BYTE) NOT NULL,
  ACAD_CAR_CD                    VARCHAR2(5 BYTE) NOT NULL,
  TERM_CD                        VARCHAR2(4 BYTE) NOT NULL,
  PERSON_ID                      VARCHAR2(11 BYTE) NOT NULL,
  INSTITUTION_SID                INTEGER        NOT NULL,
  ACAD_CAR_SID                   INTEGER        NOT NULL,
  STDNT_TERM_KEY                 VARCHAR2(100 BYTE),
  PS_STDNT_CAR_NUM               INTEGER,
  PS_PROG_SID                    INTEGER,
  PS_EFFDT                       DATE,
  PS_PROG_STAT_SID               INTEGER,
  PS_PROG_ACN_SID                INTEGER,
  PS_PROG_ACN_RSN_SID            INTEGER,
  PS_ADMIT_TERM_SID              INTEGER,
  PS_EXP_GRAD_TERM_SID           INTEGER,
  PS_DEGR_CHKOUT_LAST_EGT        VARCHAR2(2 BYTE),
  PS_DEGR_CHKOUT_LAST_EGT_LD     VARCHAR2(30 BYTE),
  PS_DEGR_CHKOUT_LAST_EGT_EFFDT  DATE,
  MAJ1_ACAD_PLAN_SID             INTEGER,
  MAJ1_PLAN_SEQUENCE             INTEGER,
  MAJ1_SPLAN1_SID                INTEGER,
  MAJ1_SPLAN2_SID                INTEGER,
  MAJ1_SPLAN3_SID                INTEGER,
  MAJ1_SPLAN4_SID                INTEGER,
  MAJ2_ACAD_PLAN_SID             INTEGER,
  MAJ2_SPLAN1_SID                INTEGER,
  MAJ3_ACAD_PLAN_SID             INTEGER,
  MAJ3_SPLAN1_SID                INTEGER,
  MAJ4_ACAD_PLAN_SID             INTEGER,
  MIN1_ACAD_PLAN_SID             INTEGER,
  MIN2_ACAD_PLAN_SID             INTEGER,
  MIN3_ACAD_PLAN_SID             INTEGER,
  MIN4_ACAD_PLAN_SID             INTEGER,
  OTH1_ACAD_PLAN_SID             INTEGER,
  OTH2_ACAD_PLAN_SID             INTEGER,
  ACAD_GRP_ADVIS_SID             INTEGER,
  ACAD_LOAD_APPR_SID             INTEGER,
  ACAD_LOAD_SID                  INTEGER,
  STRT_ACAD_LVL_SID              INTEGER,
  END_ACAD_LVL_SID               INTEGER,
  PRJTD_ACAD_LVL_SID             INTEGER,
  PRI_ACAD_PROG_SID              INTEGER,
  ACAD_STNDNG_SID                INTEGER,
  ACAD_STNDNG_TERM_CD_DESC       VARCHAR2(50 BYTE),
  TERM_ACAD_STNDNG_SID           INTEGER,
  BILL_CAR_SID                   INTEGER,
  FA_LOAD_SID                    INTEGER,
  PERSON_ATHL_SID                INTEGER,
  PERSON_SRVC_IND_SID            INTEGER,
  ACAD_CAR_FIRST_FLG             VARCHAR2(1 BYTE),
  ACAD_LOAD_DT                   DATE,
  ACAD_YR_SID                    INTEGER,
  ADMIT_TERM_CD                  VARCHAR2(10 BYTE),
  ADMIT_TERM_SD                  VARCHAR2(10 BYTE),
  ADMIT_TERM_CD_DESC             VARCHAR2(30 BYTE),
  ADMIT_TYPE_LD                  VARCHAR2(30 BYTE),
  CE_ADMIT_FLG                   VARCHAR2(1 BYTE),
  CLASS_RANK_NUM                 INTEGER,
  CLASS_RANK_TOT                 INTEGER,
  COUNTRY                        VARCHAR2(3 BYTE),
  ELIG_TO_ENROLL_FLG             VARCHAR2(1 BYTE),
  ENRL_ON_TRN_DT                 DATE,
  EXT_ORG_ID                     VARCHAR2(11 BYTE),
  FA_APPL_FLG                    VARCHAR2(1 BYTE),
  FA_ELIG_FLG                    VARCHAR2(1 BYTE),
  FA_PELL_ELIGIBILITY            VARCHAR2(1 BYTE),
  FA_PELL_DISB_FLAG              VARCHAR2(1 BYTE),
  FA_LOAN_DISB_FLAG              VARCHAR2(1 BYTE),
  FA_STATS_CALC_REQ_FLG          VARCHAR2(1 BYTE),
  FA_STATS_CALC_DTTM             DATE,
  FORM_OF_STUDY                  VARCHAR2(4 BYTE),
  FORM_OF_STUDY_SD               VARCHAR2(10 BYTE),
  FORM_OF_STUDY_LD               VARCHAR2(30 BYTE),
  FULLY_ENRL_DT                  DATE,
  FULLY_GRADED_DT                DATE,
  LAST_ATTND_DT                  DATE,
  LOCK_IN_AMT                    NUMBER(15,2),
  LOCK_IN_DT                     DATE,
  MAX_CRSE_CNT                   INTEGER,
  NSLDS_LOAN_YEAR                VARCHAR2(1 BYTE),
  NSLDS_LOAN_YEAR_SD             VARCHAR2(10 BYTE),
  NSLDS_LOAN_YEAR_LD             VARCHAR2(30 BYTE),
  OVRD_ACAD_LVL_PROJ_FLG         VARCHAR2(1 BYTE),
  OVRD_ACAD_LVL_ALL_FLG          VARCHAR2(1 BYTE),
  OVRD_BILL_UNITS_FLG            VARCHAR2(1 BYTE),
  OVRD_INIT_ADD_FEE_FLG          VARCHAR2(1 BYTE),
  OVRD_INIT_ENR_FEE_FLG          VARCHAR2(1 BYTE),
  OVRD_MAX_UNITS_FLG             VARCHAR2(1 BYTE),
  OVRD_TUIT_GROUP                VARCHAR2(10 BYTE),
  OVRD_WDRW_SCHED                VARCHAR2(8 BYTE),
  PRJTD_BILL_UNIT                INTEGER,
  PRO_RATA_ELIG_FLG              VARCHAR2(1 BYTE),
  REFUND_PCT                     NUMBER(5,2),
  REFUND_SCHEME                  VARCHAR2(8 BYTE),
  REG_CARD_DT                    DATE,
  REG_FLG                        VARCHAR2(1 BYTE),
  RESET_CUM_STATS_FLG            VARCHAR2(1 BYTE),
  SEL_GROUP                      VARCHAR2(10 BYTE),
  SSR_ACTV_DT                    DATE,
  STACK_BEGIN_FLG                VARCHAR2(1 BYTE),
  STACK_CONTINUE_FLG             VARCHAR2(1 BYTE),
  STACK_READMIT_FLG              VARCHAR2(1 BYTE),
  STATS_ON_TRN_DT                DATE,
  STDNT_CAR_NUM                  INTEGER,
  STUDY_AGREEMENT                VARCHAR2(10 BYTE),
  TERM_ACTV_FLG                  VARCHAR2(1 BYTE),
  TERM_ACTV_MAX_TERM_CD          VARCHAR2(4 BYTE),
  TERM_ACTV_MAX_TERM_SID         INTEGER        NOT NULL,
  TERM_BEGIN_DT                  DATE,
  TERM_END_DT                    DATE,
  TERM_TYPE                      VARCHAR2(1 BYTE),
  TUIT_CALC_REQ_FLG              VARCHAR2(1 BYTE),
  TUIT_CALC_DTTM                 DATE,
  UGRD_SECOND_DEGR_FLG           VARCHAR2(1 BYTE),
  UMBOS_HON_FLG                  VARCHAR2(1 BYTE),
  UNTPRG_CHG_NSLC_DT             DATE,
  UNIT_MULTIPLIER                NUMBER(8,4),
  WDN_DT                         DATE,
  WITHDRAW_CODE                  VARCHAR2(3 BYTE),
  WITHDRAW_CODE_SD               VARCHAR2(10 BYTE),
  WITHDRAW_CODE_LD               VARCHAR2(30 BYTE),
  WITHDRAW_REASON                VARCHAR2(4 BYTE),
  WITHDRAW_REASON_SD             VARCHAR2(10 BYTE),
  WITHDRAW_REASON_LD             VARCHAR2(30 BYTE),
  UNDUP_STDNT_CNT                INTEGER,
  TERM_ENRL_ORDER                INTEGER,
  UNIT_TAKEN_GPA                 NUMBER,
  UNIT_TAKEN_NOGPA               NUMBER,
  GRADE_PTS                      NUMBER,
  CUR_GPA                        NUMBER,
  UNIT_PASSED_GPA                NUMBER,
  UNIT_PASSED_NOGPA              NUMBER,
  UNIT_INPROG_GPA                NUMBER,
  UNIT_INPROG_NOGPA              NUMBER,
  UNIT_TAKEN_PROGRESS            NUMBER,
  UNIT_PASSED_PROGRESS           NUMBER,
  UNIT_AUDIT                     NUMBER,
  TRF_UNIT_TAKEN_GPA             NUMBER,
  TRF_UNIT_TAKEN_NOGPA           NUMBER,
  TRF_GRADE_PTS                  NUMBER,
  TRF_CUR_GPA                    NUMBER,
  TRF_UNIT_PASSED_GPA            NUMBER,
  TRF_UNIT_PASSED_NOGPA          NUMBER,
  TRF_UNIT_TOT_GRADED            NUMBER,
  TRF_UNIT_TOT                   NUMBER,
  TRF_UNIT_ADJUST                NUMBER,
  TRF_UNIT_TOT_ADJUSTED          NUMBER,
  TRF_UNIT_TEST_CREDIT           NUMBER,
  TRF_UNIT_TRANSFER              NUMBER,
  TRF_UNIT_OTHER                 NUMBER,
  COMB_UNIT_TAKEN_GPA            NUMBER,
  COMB_UNIT_TAKEN_NOGPA          NUMBER,
  COMB_GRADE_PTS                 NUMBER,
  COMB_CUR_GPA                   NUMBER,
  COMB_UNIT_PASSED_GPA           NUMBER,
  COMB_UNIT_PASSED_NOGPA         NUMBER,
  COMB_UNIT_PASSED               NUMBER,
  COMB_UNIT_TOT                  NUMBER,
  CUM_UNIT_TAKEN_GPA             NUMBER,
  CUM_UNIT_TAKEN_NOGPA           NUMBER,
  CUM_GRADE_PTS                  NUMBER,
  CUM_CUR_GPA                    NUMBER,
  CUM_UNIT_PASSED_GPA            NUMBER,
  CUM_UNIT_PASSED_NOGPA          NUMBER,
  CUM_UNIT_INPROG_GPA            NUMBER,
  CUM_UNIT_INPROG_NOGPA          NUMBER,
  CUM_UNIT_TAKEN_PROGRESS        NUMBER,
  CUM_UNIT_PASSED_PROGRESS       NUMBER,
  CUM_UNIT_AUDIT                 NUMBER,
  CUM_TRF_UNIT_TAKEN_GPA         NUMBER,
  CUM_TRF_UNIT_TAKEN_NOGPA       NUMBER,
  CUM_TRF_GRADE_PTS              NUMBER,
  CUM_TRF_CUR_GPA                NUMBER,
  CUM_TRF_UNIT_PASSED_GPA        NUMBER,
  CUM_TRF_UNIT_PASSED_NOGPA      NUMBER,
  CUM_TRF_UNIT_TOT_GRADED        NUMBER,
  CUM_TRF_UNIT_TOT               NUMBER,
  CUM_TRF_UNIT_ADJUST            NUMBER,
  CUM_TRF_UNIT_TOT_ADJUSTED      NUMBER,
  CUM_TRF_UNIT_TEST_CREDIT       NUMBER,
  CUM_TRF_UNIT_TRANSFER          NUMBER,
  CUM_TRF_UNIT_OTHER             NUMBER,
  CUM_COMB_UNIT_TAKEN_GPA        NUMBER,
  CUM_COMB_UNIT_TAKEN_NOGPA      NUMBER,
  CUM_COMB_GRADE_PTS             NUMBER,
  CUM_COMB_CUR_GPA               NUMBER,
  CUM_COMB_UNIT_PASSED_GPA       NUMBER,
  CUM_COMB_UNIT_PASSED_NOGPA     NUMBER,
  CUM_COMB_UNIT_PASSED           NUMBER,
  CUM_COMB_UNIT_TOT              NUMBER,
  MAX_UNIT_AUDIT                 NUMBER(8,3),
  MAX_UNIT_NOGPA                 NUMBER(5,2),
  MAX_UNIT_TOT                   NUMBER(5,2),
  MAX_UNIT_WAIT                  NUMBER(8,3),
  LOAD_ERROR                     VARCHAR2(1 BYTE) NOT NULL,
  DATA_ORIGIN                    VARCHAR2(1 BYTE) NOT NULL,
  CREATED_EW_DTTM                DATE,
  LASTUPD_EW_DTTM                DATE,
  BATCH_SID                      INTEGER        NOT NULL
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_STDNT_TERM ADD (
  CONSTRAINT PK_UM_F_STDNT_TERM
  PRIMARY KEY
  (TERM_SID, PERSON_SID, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
