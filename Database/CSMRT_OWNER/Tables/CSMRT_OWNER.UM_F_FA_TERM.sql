CREATE TABLE UM_F_FA_TERM
(
  INSTITUTION_CD         VARCHAR2(5 BYTE),
  ACAD_CAR_CD            VARCHAR2(4 BYTE),
  AID_YEAR               VARCHAR2(4 BYTE),
  TERM_CD                VARCHAR2(4 BYTE),
  PERSON_ID              VARCHAR2(11 BYTE),
  SRC_SYS_ID             VARCHAR2(5 BYTE),
  EFFDT                  DATE,
  EFFSEQ                 INTEGER,
  EFF_STATUS             VARCHAR2(1 BYTE),
  INSTITUTION_SID        INTEGER,
  ACAD_CAR_SID           INTEGER,
  TERM_SID               INTEGER,
  PERSON_SID             INTEGER,
  ACAD_PROG_SID          INTEGER,
  ACAD_PLAN_SID          INTEGER,
  ACAD_SPLAN_SID         INTEGER,
  ACAD_CAREER_CL         VARCHAR2(4 BYTE),
  ACAD_GROUP_ADVIS       VARCHAR2(5 BYTE),
  ACADEMIC_LOAD          VARCHAR2(1 BYTE),
  ACAD_LOAD_LD           VARCHAR2(30 BYTE),
  ACADEMIC_LOAD_CL       VARCHAR2(1 BYTE),
  ACAD_LEVEL_BOT         VARCHAR2(3 BYTE),
  ACAD_LEVEL_BOT_LD      VARCHAR2(30 BYTE),
  ACAD_LEVEL_BOT_CL      VARCHAR2(3 BYTE),
  ACAD_LEVEL_BOT_CL_LD   VARCHAR2(30 BYTE),
  ACAD_LEVEL_EOT         VARCHAR2(3 BYTE),
  ACAD_LEVEL_EOT_LD      VARCHAR2(30 BYTE),
  ACAD_LEVEL_EOT_CL      VARCHAR2(3 BYTE),
  ACAD_LEVEL_EOT_CL_LD   VARCHAR2(30 BYTE),
  ACAD_LEVEL_PROJ        VARCHAR2(3 BYTE),
  ACAD_LEVEL_PROJ_LD     VARCHAR2(30 BYTE),
  ACAD_LEVEL_PROJ_CL     VARCHAR2(3 BYTE),
  ACAD_LEVEL_PROJ_CL_LD  VARCHAR2(30 BYTE),
  ACAD_LOAD_APPR         VARCHAR2(1 BYTE),
  ACAD_LOAD_APPR_LD      VARCHAR2(30 BYTE),
  ACAD_LOAD_APPR_CL      VARCHAR2(1 BYTE),
  ACAD_LOAD_APPR_CL_LD   VARCHAR2(30 BYTE),
  ACAD_PROG_PRIMARY      VARCHAR2(5 BYTE),
  ACAD_PROG_PRIM_CL      VARCHAR2(5 BYTE),
  ACAD_PLAN              VARCHAR2(10 BYTE),
  ACAD_PLAN_CL           VARCHAR2(10 BYTE),
  ACAD_STANDING          VARCHAR2(4 BYTE),
  ACAD_STANDING_CL       VARCHAR2(4 BYTE),
  ACAD_SUB_PLAN          VARCHAR2(10 BYTE),
  ACAD_SUB_PLAN_CL       VARCHAR2(10 BYTE),
  ACAD_YEAR              VARCHAR2(4 BYTE),
  ADMIT_TERM             VARCHAR2(4 BYTE),
  AID_YEAR_CL            VARCHAR2(4 BYTE),
  BILLING_CAREER         VARCHAR2(4 BYTE),
  BUDGET_REQUIRED        VARCHAR2(1 BYTE),
  CAMPUS                 VARCHAR2(5 BYTE),
  CENSUS_DT              DATE,
  COURSE_LD_PCT          NUMBER(5,2),
  CUM_GPA                NUMBER(8,3),
  CUM_GPA_CL             NUMBER(8,3),
  CUM_RESIDENT_TERMS     NUMBER(6,3),
  CUR_RESIDENT_TERMS     NUMBER(6,3),
  DEGR_CONFER_DT         DATE,
  DIR_LND_YR             VARCHAR2(2 BYTE),
  DIR_LND_YR_LD          VARCHAR2(30 BYTE),
  DIR_LND_YR_CL          VARCHAR2(2 BYTE),
  DIR_LND_YR_CL_LD       VARCHAR2(30 BYTE),
  ELIG_TO_ENROLL         VARCHAR2(1 BYTE),
  EXP_GRAD_DATE          DATE,
  EXP_GRAD_DATE_CL       DATE,
  EXP_GRAD_TERM          VARCHAR2(4 BYTE),
  EXP_GRAD_TERM_CL       VARCHAR2(4 BYTE),
  FA_EXP_DT_REBUILD      VARCHAR2(1 BYTE),
  FA_LOAD                VARCHAR2(1 BYTE),
  FA_LOAD_LD             VARCHAR2(30 BYTE),
  FA_LOAD_CL             VARCHAR2(1 BYTE),
  FA_LOAD_CL_LD          VARCHAR2(30 BYTE),
  FA_LOAD_CURRENT        VARCHAR2(1 BYTE),
  FA_NUMBER_OF_WEEKS     INTEGER,
  FA_STANDING            VARCHAR2(4 BYTE),
  FA_STANDING_CL         VARCHAR2(4 BYTE),
  FA_STATS_CALC_REQ      VARCHAR2(1 BYTE),
  FA_UNIT_ANTIC          NUMBER(8,3),
  FA_UNIT_COMPLETED      NUMBER(8,3),
  FA_UNIT_CURRENT        NUMBER(8,3),
  FA_UNIT_IN_PROG        NUMBER(8,3),
  FORM_OF_STUDY          VARCHAR2(4 BYTE),
  FORM_OF_STUDY_LD       VARCHAR2(30 BYTE),
  FORM_OF_STUDY_CL       VARCHAR2(4 BYTE),
  FORM_OF_STUDY_CL_LD    VARCHAR2(30 BYTE),
  GPA_CALC_IND           VARCHAR2(1 BYTE),
  GPA_CL                 NUMBER(8,3),
  LAST_DATE_ATTENDED     DATE,
  LS_GPA                 NUMBER(8,3),
  LOCK_OVRD_DATE         DATE,
  LOCK_OVRD_OPRID        VARCHAR2(30 BYTE),
  NSLDS_LOAN_YEAR        VARCHAR2(1 BYTE),
  NSLDS_LOAN_YEAR_LD     VARCHAR2(30 BYTE),
  NSLDS_LOAN_YEAR_CL     VARCHAR2(1 BYTE),
  NSLDS_LOAN_YEAR_CL_LD  VARCHAR2(30 BYTE),
  OVRD_ACADEMIC_LOAD     VARCHAR2(1 BYTE),
  OVRD_ACAD_LOAD_AP      VARCHAR2(1 BYTE),
  OVRD_ACAD_LVL_ALL      VARCHAR2(1 BYTE),
  OVRD_ACAD_LVL_PROJ     VARCHAR2(1 BYTE),
  OVRD_ACAD_PROG_PRM     VARCHAR2(1 BYTE),
  OVRD_ACAD_PLAN         VARCHAR2(1 BYTE),
  OVRD_ACAD_STANDING     VARCHAR2(1 BYTE),
  OVRD_AID_YEAR          VARCHAR2(1 BYTE),
  OVRD_ASG_BOT           VARCHAR2(1 BYTE),
  OVRD_ASG_EOT           VARCHAR2(1 BYTE),
  OVRD_CAREER            VARCHAR2(1 BYTE),
  OVRD_CENSUSDT_LOCK     VARCHAR2(1 BYTE),
  OVRD_CUM_GPA           VARCHAR2(1 BYTE),
  OVRD_DIR_LND_YR        VARCHAR2(1 BYTE),
  OVRD_EXP_DT            DATE,
  OVRD_FA_LOAD           VARCHAR2(1 BYTE),
  OVRD_FA_NBR_WEEKS      VARCHAR2(1 BYTE),
  OVRD_FA_STANDING       VARCHAR2(1 BYTE),
  OVRD_FA_UNITS          VARCHAR2(1 BYTE),
  OVRD_FORM_OF_STUDY     VARCHAR2(1 BYTE),
  OVRD_GPA               VARCHAR2(1 BYTE),
  OVRD_GRAD_DATE         VARCHAR2(1 BYTE),
  OVRD_GRAD_TERM         VARCHAR2(1 BYTE),
  OVRD_NSLDS_LOAN_YR     VARCHAR2(1 BYTE),
  OVRD_SUB_PLAN          VARCHAR2(1 BYTE),
  OVRD_SULA_UNIT         VARCHAR2(1 BYTE),
  OVRD_TOT_PASSD_FA      VARCHAR2(1 BYTE),
  OVRD_TOT_TAKEN_FA      VARCHAR2(1 BYTE),
  OVRD_UNT_PASSD_FA      VARCHAR2(1 BYTE),
  OVRD_UNT_TAKEN_FA      VARCHAR2(1 BYTE),
  OVRD_WOI               VARCHAR2(1 BYTE),
  PELL_ANNUAL_AMT        INTEGER,
  PELL_TERM_AMT          INTEGER,
  REFUND_CLASS           VARCHAR2(1 BYTE),
  REFUND_PCT             NUMBER(5,2),
  REFUND_SCHEME          VARCHAR2(8 BYTE),
  REFUND_SETID           VARCHAR2(5 BYTE),
  REMOTE_UNT_FA          NUMBER(8,3),
  RESET_CUM_STATS        VARCHAR2(1 BYTE),
  SEL_GROUP              VARCHAR2(10 BYTE),
  SFA_ASG_AC_LVL_BCL     VARCHAR2(1 BYTE),
  SFA_ASG_AC_LVL_BCL_LD  VARCHAR2(30 BYTE),
  SFA_ASG_AC_LVL_BOT     VARCHAR2(1 BYTE),
  SFA_ASG_AC_LVL_BOT_LD  VARCHAR2(30 BYTE),
  SFA_ASG_AC_LVL_ECL     VARCHAR2(1 BYTE),
  SFA_ASG_AC_LVL_ECL_LD  VARCHAR2(30 BYTE),
  SFA_ASG_AC_LVL_EOT     VARCHAR2(1 BYTE),
  SFA_ASG_AC_LVL_EOT_LD  VARCHAR2(30 BYTE),
  SFA_ASG_UNITS_BOT      NUMBER(8,3),
  SFA_ASG_UNITS_EOT      NUMBER(8,3),
  SFA_ASG_WI_MTH         VARCHAR2(1 BYTE),
  SFA_ASG_WI_MTH_OVR     VARCHAR2(1 BYTE),
  SFA_ASG_WI_MTH_CL      VARCHAR2(1 BYTE),
  SFA_ASG_WI_TRM         NUMBER(5,2),
  SFA_ASG_WI_TRM_OVR     VARCHAR2(1 BYTE),
  SFA_ASG_WI_TRM_CL      NUMBER(5,2),
  SFA_ASG_WI_TCR         NUMBER(5,2),
  SFA_ASG_WI_TCR_OVR     VARCHAR2(1 BYTE),
  SFA_ASG_WI_TCR_CL      NUMBER(5,2),
  SFA_ASG_WI_CUM_BOT     NUMBER(6,2),
  SFA_ASG_WI_CUM_EOT     NUMBER(6,2),
  SFA_ASG_WI_USED        VARCHAR2(1 BYTE),
  SFA_FA_NBR_WKS_CL      INTEGER,
  SFA_SPEC_PROG_FLG      VARCHAR2(1 BYTE),
  SFA_SPEC_PROG_FLG_LD   VARCHAR2(30 BYTE),
  SFA_SULA_LOAD          VARCHAR2(1 BYTE),
  SFA_SULA_UNIT          NUMBER(8,3),
  SFA_SULA_UNIT_CL       NUMBER(8,3),
  SFA_WKS_OF_INST_CL     INTEGER,
  STDNT_CAR_NBR          INTEGER,
  TERM_BEGIN_DT          DATE,
  TERM_END_DT            DATE,
  TERM_SRC               VARCHAR2(1 BYTE),
  TERM_SRC_LD            VARCHAR2(30 BYTE),
  TOT_PASSD_FA           NUMBER(8,3),
  TOT_PASSD_FA_CL        NUMBER(8,3),
  TOT_TAKEN_FA           NUMBER(8,3),
  TOT_TAKEN_FA_CL        NUMBER(8,3),
  TOT_TERM_UNT_FA        NUMBER(8,3),
  TOT_TERM_UNT_FA_CL     NUMBER(8,3),
  TRF_RESIDENT_TERMS     NUMBER(6,3),
  TUIT_CALC_DTTM         TIMESTAMP(6),
  TUIT_CALC_REQ          VARCHAR2(1 BYTE),
  UNT_PASSD_FA           NUMBER(8,3),
  UNT_PASSD_FA_CL        NUMBER(8,3),
  UNT_TAKEN_FA           NUMBER(8,3),
  UNT_TAKEN_FA_CL        NUMBER(8,3),
  UNT_TAKEN_FA_NOPIT     NUMBER(8,3),
  WEEKS_OF_INSTRUCT      INTEGER,
  WITHDRAW_CODE          VARCHAR2(3 BYTE),
  WITHDRAW_DATE          DATE,
  WITHDRAW_REASON        VARCHAR2(4 BYTE),
  LOAD_ERROR             VARCHAR2(1 BYTE),
  DATA_ORIGIN            VARCHAR2(1 BYTE),
  CREATED_EW_DTTM        DATE,
  LASTUPD_EW_DTTM        DATE,
  BATCH_SID              INTEGER
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;