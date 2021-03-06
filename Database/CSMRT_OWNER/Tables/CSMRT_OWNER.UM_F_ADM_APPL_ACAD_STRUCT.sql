CREATE TABLE UM_F_ADM_APPL_ACAD_STRUCT
(
  ADM_APPL_SID              INTEGER,
  TERM_SID                  INTEGER,
  PERSON_SID                INTEGER,
  STDNT_CAR_NUM             INTEGER,
  ACAD_PLAN_SID             INTEGER,
  ACAD_SPLAN_SID            INTEGER,
  SRC_SYS_ID                VARCHAR2(5 BYTE),
  INSTITUTION_CD            VARCHAR2(5 BYTE),
  ACAD_CAR_CD               VARCHAR2(4 BYTE),
  TERM_CD                   VARCHAR2(4 BYTE),
  PERSON_ID                 VARCHAR2(11 BYTE),
  ACAD_PROG_CD              VARCHAR2(5 BYTE),
  ACAD_PLAN_CD              VARCHAR2(10 BYTE),
  ACAD_SPLAN_CD             VARCHAR2(10 BYTE),
  EFFDT                     DATE,
  EFFSEQ                    INTEGER,
  ACTION_DT                 DATE,
  ACAD_CAR_SID              INTEGER,
  ACAD_PROG_SID             INTEGER,
  ADMIT_TERM_SID            INTEGER,
  CAMPUS_SID                INTEGER,
  COMPL_TERM_SID            INTEGER,
  EXP_GRAD_TERM_SID         INTEGER,
  INSTITUTION_SID           INTEGER,
  REQ_TERM_SID              INTEGER,
  PROG_STAT_SID             INTEGER,
  PROG_ACN_SID              INTEGER,
  PROG_ACN_RSN_SID          INTEGER,
  PLAN_COMPL_TERM_SID       INTEGER,
  PLAN_REQ_TERM_SID         INTEGER,
  SPLAN_REQ_TERM_SID        INTEGER,
  STACK_BEGIN_TERM_SID      INTEGER,
  STACK_READMIT_TERM_SID    INTEGER,
  ADM_APPL_NBR              VARCHAR2(8 BYTE),
  CERTIFICATE_ONLY_FLG      VARCHAR2(1 BYTE),
  D_RANK                    INTEGER,
  D_RANK_PTYPE              INTEGER,
  D_RANK_SPLAN              INTEGER,
  DATA_FROM_ADM_APPL_FLG    VARCHAR2(1 BYTE),
  DEGR_CHKOUT_STAT          VARCHAR2(2 BYTE),
  DEGR_CHKOUT_STAT_SD       VARCHAR2(10 BYTE),
  DEGR_CHKOUT_STAT_LD       VARCHAR2(30 BYTE),
  DEGREE_SEEKING_FLG        VARCHAR2(1 BYTE),
  ED_LVL_RANK               INTEGER,
  MIN_PROG_STAT_CTGRY       VARCHAR2(2 BYTE),
  MISSING_PROG_PLAN_FLG     VARCHAR2(1 BYTE),
  PROGRAM_CATGRY            VARCHAR2(20 BYTE),
  PLAN_ADVIS_STAT           VARCHAR2(4 BYTE),
  PLAN_DECLARE_DT           DATE,
  PLAN_SEQUENCE             INTEGER,
  PLAN_DEGR_CHKOUT_STAT     VARCHAR2(2 BYTE),
  PLAN_STDNT_DEGR_CD        VARCHAR2(2 BYTE),
  SPLAN_DECLARE_DT          DATE,
  STACK_BEGIN_FLG           VARCHAR2(1 BYTE),
  STACK_CONTINUE_FLG        VARCHAR2(1 BYTE),
  STACK_READMIT_FLG         VARCHAR2(1 BYTE),
  UMDAR_ED_LVL              VARCHAR2(3 BYTE),
  UMDAR_ED_LVL_SD           VARCHAR2(10 BYTE),
  UMDAR_ED_LVL_LD           VARCHAR2(30 BYTE),
  PROG_CNT                  INTEGER,
  PRIM_PROG_MAJOR_1_CNT     INTEGER,
  PRIM_PROG_MAJOR_2_CNT     INTEGER,
  PRIM_PROG_MINOR_1_CNT     INTEGER,
  PRIM_PROG_MINOR_2_CNT     INTEGER,
  PRIM_PROG_OTHER_PLAN_CNT  INTEGER,
  SEC_PROG_MAJOR_1_CNT      INTEGER,
  SEC_PROG_MAJOR_2_CNT      INTEGER,
  SEC_PROG_MINOR_1_CNT      INTEGER,
  SEC_PROG_MINOR_2_CNT      INTEGER,
  SEC_PROG_OTHER_PLAN_CNT   INTEGER,
  PP_SUB_PLAN_11_CNT        INTEGER,
  PP_SUB_PLAN_12_CNT        INTEGER,
  PP_SUB_PLAN_21_CNT        INTEGER,
  PP_SUB_PLAN_22_CNT        INTEGER,
  SP_SUB_PLAN_11_CNT        INTEGER,
  SP_SUB_PLAN_12_CNT        INTEGER,
  SP_SUB_PLAN_21_CNT        INTEGER,
  SP_SUB_PLAN_22_CNT        INTEGER,
  READMIT_STUDENT_CNT       INTEGER,
  CONTINUING_STUDENT_CNT    INTEGER,
  NEW_STUDENT_CNT           INTEGER,
  PRIM_PROG_MAJOR1_ORDER    INTEGER
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
