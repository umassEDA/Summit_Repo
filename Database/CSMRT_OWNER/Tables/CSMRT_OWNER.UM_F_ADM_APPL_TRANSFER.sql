CREATE TABLE UM_F_ADM_APPL_TRANSFER
(
  APPLCNT_SID           INTEGER,
  ADMIT_TERM_SID        INTEGER,
  MODEL_NBR             INTEGER,
  TRNSFR_EQVLNCY_GRP    INTEGER,
  TRNSFR_EQVLNCY_SEQ    INTEGER,
  SRC_SYS_ID            VARCHAR2(5 BYTE),
  PERSON_ID             VARCHAR2(11 BYTE),
  INSTITUTION_CD        VARCHAR2(5 BYTE),
  ACAD_CAR_CD           VARCHAR2(4 BYTE),
  ARTICULATION_TERM     VARCHAR2(4 BYTE),
  ACAD_PROG_TARGET_SID  INTEGER,
  ACAD_PLAN_TARGET_SID  INTEGER,
  CLASS_SID             INTEGER,
  CRSE_SID              INTEGER,
  EXT_CRSE_SID          INTEGER,
  EXT_ORG_SID           INTEGER,
  EXT_TERM_SID          INTEGER,
  EXT_TERM_YEAR_SID     INTEGER,
  APPLY_AGREEMENT_FLG   VARCHAR2(1 BYTE),
  COURSE_LEVEL          VARCHAR2(2 BYTE),
  CRSE_GRADE_INPUT      VARCHAR2(3 BYTE),
  CRSE_GRADE_OFF        VARCHAR2(3 BYTE),
  DESCR                 VARCHAR2(30 BYTE),
  EARN_CREDIT_FLG       VARCHAR2(1 BYTE),
  EXT_COURSE_NBR        INTEGER,
  GRADE_CATEGORY        VARCHAR2(4 BYTE),
  GRADING_SCHEME        VARCHAR2(3 BYTE),
  GRADING_SCHEME_SD     VARCHAR2(10 BYTE),
  GRADING_SCHEME_LD     VARCHAR2(30 BYTE),
  GRADING_BASIS         VARCHAR2(3 BYTE),
  GRADING_BASIS_SD      VARCHAR2(10 BYTE),
  GRADING_BASIS_LD      VARCHAR2(30 BYTE),
  GRD_PTS_PER_UNIT      NUMBER(9,3),
  MODEL_STATUS_SCH      VARCHAR2(1 BYTE),
  MODEL_STATUS_SCH_SD   VARCHAR2(10 BYTE),
  MODEL_STATUS_SCH_LD   VARCHAR2(30 BYTE),
  MODEL_STATUS_TERM     VARCHAR2(1 BYTE),
  MODEL_STATUS_TERM_SD  VARCHAR2(10 BYTE),
  MODEL_STATUS_TERM_LD  VARCHAR2(30 BYTE),
  POST_DT_TERM          DATE,
  REJECT_REASON         VARCHAR2(2 BYTE),
  REJECT_REASON_SD      VARCHAR2(10 BYTE),
  REJECT_REASON_LD      VARCHAR2(30 BYTE),
  REPEAT_CODE           VARCHAR2(4 BYTE),
  SCHOOL_CRSE_NBR       VARCHAR2(10 BYTE),
  SCHOOL_SUBJECT        VARCHAR2(8 BYTE),
  SRC_CLASS_NBR         INTEGER,
  SRC_ORG_NAME          VARCHAR2(50 BYTE),
  SRC_TERM              VARCHAR2(4 BYTE),
  TRNSFR_SRC_TYPE       VARCHAR2(1 BYTE),
  TRNSFR_SRC_TYPE_SD    VARCHAR2(10 BYTE),
  TRNSFR_SRC_TYPE_LD    VARCHAR2(30 BYTE),
  TRNSFR_EQVLNCY        VARCHAR2(6 BYTE),
  TRNSFR_EQVLNCY_CMP    VARCHAR2(4 BYTE),
  TRNSFR_STAT           VARCHAR2(1 BYTE),
  TRNSFR_STAT_SD        VARCHAR2(10 BYTE),
  TRNSFR_STAT_LD        VARCHAR2(30 BYTE),
  UNITS_ATTEMPTED_FLG   VARCHAR2(1 BYTE),
  UNT_TAKEN             NUMBER(5,2),
  UNT_TRNSFR            NUMBER(8,3),
  VALID_ATTEMPT_FLG     VARCHAR2(1 BYTE),
  TRNSFR_GRADE_POINTS   NUMBER(8,3)
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
