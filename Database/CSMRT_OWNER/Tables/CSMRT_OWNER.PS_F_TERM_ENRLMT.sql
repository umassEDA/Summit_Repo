CREATE TABLE PS_F_TERM_ENRLMT
(
  INSTITUTION_CD          VARCHAR2(5 BYTE),
  ACAD_CAR_CD             VARCHAR2(5 BYTE),
  TERM_CD                 VARCHAR2(4 BYTE),
  PERSON_ID               VARCHAR2(11 BYTE),
  SRC_SYS_ID              VARCHAR2(5 BYTE),
  INSTITUTION_SID         INTEGER,
  ACAD_CAR_SID            INTEGER,
  TERM_SID                INTEGER,
  PERSON_SID              INTEGER,
  ACAD_GRP_ADVIS_SID      INTEGER,
  ACAD_LOAD_APPR_SID      INTEGER,
  ACAD_LOAD_SID           INTEGER,
  STRT_ACAD_LVL_SID       INTEGER,
  END_ACAD_LVL_SID        INTEGER,
  PRJTD_ACAD_LVL_SID      INTEGER,
  PRI_ACAD_PROG_SID       INTEGER,
  ACAD_STNDNG_SID         INTEGER,
  BILL_CAR_SID            INTEGER,
  FA_LOAD_SID             INTEGER,
  ACAD_CAR_FIRST_FLG      VARCHAR2(1 BYTE),
  ACAD_LOAD_DT            DATE,
  ACAD_YR_SID             INTEGER,
  CLASS_RANK_NUM          INTEGER,
  CLASS_RANK_TOT          INTEGER,
  COUNTRY                 VARCHAR2(3 BYTE),
  ELIG_TO_ENROLL_FLG      VARCHAR2(1 BYTE),
  ENRL_ON_TRN_DT          DATE,
  EXT_ORG_ID              VARCHAR2(11 BYTE),
  FA_ELIG_FLG             VARCHAR2(1 BYTE),
  FA_STATS_CALC_REQ_FLG   VARCHAR2(1 BYTE),
  FA_STATS_CALC_DTTM      DATE,
  FORM_OF_STUDY           VARCHAR2(4 BYTE),
  FULLY_ENRL_DT           DATE,
  FULLY_GRADED_DT         DATE,
  LAST_ATTND_DT           DATE,
  LOCK_IN_AMT             NUMBER(15,2),
  LOCK_IN_DT              DATE,
  MAX_CRSE_CNT            INTEGER,
  NSLDS_LOAN_YEAR         VARCHAR2(1 BYTE),
  OVRD_ACAD_LVL_PROJ_FLG  VARCHAR2(1 BYTE),
  OVRD_ACAD_LVL_ALL_FLG   VARCHAR2(1 BYTE),
  OVRD_BILL_UNITS_FLG     VARCHAR2(1 BYTE),
  OVRD_INIT_ADD_FEE_FLG   VARCHAR2(1 BYTE),
  OVRD_INIT_ENR_FEE_FLG   VARCHAR2(1 BYTE),
  OVRD_MAX_UNITS_FLG      VARCHAR2(1 BYTE),
  OVRD_TUIT_GROUP         VARCHAR2(10 BYTE),
  OVRD_WDRW_SCHED         VARCHAR2(8 BYTE),
  PRJTD_BILL_UNIT         INTEGER,
  PRO_RATA_ELIG_FLG       VARCHAR2(1 BYTE),
  REFUND_PCT              NUMBER(5,2),
  REFUND_SCHEME           VARCHAR2(8 BYTE),
  REG_CARD_DT             DATE,
  REG_FLG                 VARCHAR2(1 BYTE),
  RESET_CUM_STATS_FLG     VARCHAR2(1 BYTE),
  SEL_GROUP               VARCHAR2(10 BYTE),
  SSR_ACTV_DT             DATE,
  STATS_ON_TRN_DT         DATE,
  STDNT_CAR_NUM           INTEGER,
  STUDY_AGREEMENT         VARCHAR2(10 BYTE),
  TERM_BEGIN_DT           DATE,
  TERM_END_DT             DATE,
  TERM_TYPE               VARCHAR2(1 BYTE),
  TUIT_CALC_REQ_FLG       VARCHAR2(1 BYTE),
  TUIT_CALC_DTTM          DATE,
  UNTPRG_CHG_NSLC_DT      DATE,
  UNIT_MULTIPLIER         NUMBER(8,4),
  WDN_DT                  DATE,
  WITHDRAW_CODE           VARCHAR2(3 BYTE),
  WITHDRAW_REASON         VARCHAR2(4 BYTE),
  CUR_GPA_PTS             NUMBER(8,3),
  CUM_GPA_PTS             NUMBER(8,3),
  GRADE_PTS               NUMBER(8,3),
  GRADE_PTS_FA            NUMBER(8,3),
  AUDIT_UNIT              NUMBER(8,3),
  OTH_UNIT                NUMBER(8,3),
  TOT_TERM_UNIT           NUMBER(8,3),
  XFER_UNIT               NUMBER(8,3),
  MIN_TOT_UNIT            NUMBER(8,3),
  MAX_TOT_UNIT            NUMBER(8,3),
  MAX_NON_GPA_UNIT        NUMBER(8,3),
  MAX_AUDIT_UNIT          NUMBER(8,3),
  MAX_WAIT_UNIT           NUMBER(8,3),
  CUR_RESIDENT_TERMS      NUMBER(8,3),
  TRF_RESIDENT_TERMS      NUMBER(8,3),
  CUM_RESIDENT_TERMS      NUMBER(8,3),
  TUITION_RES_TERMS       NUMBER(8,3),
  SSR_TRF_CUR_GPA         NUMBER(8,3),
  SSR_COMB_CUR_GPA        NUMBER(8,3),
  SSR_CUM_EN_GPA          NUMBER(8,3),
  SSR_TOT_EN_GRDPTS       NUMBER(8,3),
  SSR_TOT_EN_TKNGPA       NUMBER(8,3),
  SSR_CUM_TR_GPA          NUMBER(8,3),
  SSR_TOT_TR_GRDPTS       NUMBER(8,3),
  SSR_TOT_TR_TKNGPA       NUMBER(8,3),
  TAKEN_PRGRS_UNIT        NUMBER(8,3),
  PASSD_PRGRS_UNIT        NUMBER(8,3),
  TAKEN_GPA_UNIT          NUMBER(8,3),
  PASSD_GPA_UNIT          NUMBER(8,3),
  TAKEN_NON_GPA_UNIT      NUMBER(8,3),
  PASSD_NON_GPA_UNIT      NUMBER(8,3),
  PRGRS_GPA_UNIT          NUMBER(8,3),
  PRGRS_NON_GPA_UNIT      NUMBER(8,3),
  TC_UNITS_ADJUST         NUMBER(8,3),
  TOT_TAKEN_PRGRSS        NUMBER(8,3),
  TOT_PASSD_PRGRSS        NUMBER(8,3),
  TOT_TAKEN_GPA           NUMBER(8,3),
  TOT_PASSD_GPA           NUMBER(8,3),
  TOT_TAKEN_NOGPA         NUMBER(8,3),
  TOT_PASSD_NOGPA         NUMBER(8,3),
  TOT_INPROG_GPA          NUMBER(8,3),
  TOT_INPROG_NOGPA        NUMBER(8,3),
  TOT_AUDIT               NUMBER(8,3),
  TOT_TRNSFR              NUMBER(8,3),
  TOT_TEST_CREDIT         NUMBER(8,3),
  TOT_OTHER               NUMBER(8,3),
  TOT_CUMULATIVE          NUMBER(8,3),
  TOT_GRADE_POINTS        NUMBER(8,3),
  TOT_TAKEN_FA            NUMBER(8,3),
  TOT_PASSD_FA            NUMBER(8,3),
  TOT_TAKEN_FA_GPA        NUMBER(8,3),
  TOT_GRD_POINTS_FA       NUMBER(8,3),
  TRF_TAKEN_GPA           NUMBER(8,3),
  TRF_TAKEN_NOGPA         NUMBER(8,3),
  TRF_PASSED_GPA          NUMBER(8,3),
  TRF_PASSED_NOGPA        NUMBER(8,3),
  TRF_GRADE_POINTS        NUMBER(8,3),
  UNT_TEST_CREDIT         NUMBER(8,3),
  UNT_TAKEN_FA            NUMBER(8,3),
  UNT_PASSD_FA            NUMBER(8,3),
  UNT_TAKEN_FA_GPA        NUMBER(8,3),
  LOAD_ERROR              VARCHAR2(1 BYTE),
  DATA_ORIGIN             VARCHAR2(1 BYTE),
  CREATED_EW_DTTM         DATE,
  LASTUPD_EW_DTTM         DATE,
  BATCH_SID               INTEGER
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;