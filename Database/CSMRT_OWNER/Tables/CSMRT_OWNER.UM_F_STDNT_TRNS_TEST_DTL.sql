CREATE TABLE UM_F_STDNT_TRNS_TEST_DTL
(
  ARTICULATION_TERM_SID  INTEGER,
  PERSON_SID             INTEGER,
  MODEL_NBR              INTEGER,
  TRNSFR_EQVLNCY_GRP     INTEGER,
  TRNSFR_EQVLNCY_SEQ     INTEGER,
  SRC_SYS_ID             VARCHAR2(5 BYTE),
  INSTITUTION_CD         VARCHAR2(5 BYTE),
  ACAD_CAR_CD            VARCHAR2(4 BYTE),
  ARTICULATION_TERM      NUMBER(4),
  PERSON_ID              VARCHAR2(11 BYTE),
  INSTITUTION_SID        INTEGER,
  ACAD_CAR_SID           INTEGER,
  CRSE_SID               INTEGER,
  OPRID_SID              INTEGER,
  CRSE_GRADE_OFF         VARCHAR2(3 BYTE),
  DESCR                  VARCHAR2(30 BYTE),
  EARN_CREDIT            VARCHAR2(1 BYTE),
  FREEZE_REC_FL          VARCHAR2(1 BYTE),
  GRADE_CATEGORY         VARCHAR2(4 BYTE),
  GRADING_SCHEME         VARCHAR2(3 BYTE),
  GRADING_SCHEME_SD      VARCHAR2(10 BYTE),
  GRADING_SCHEME_LD      VARCHAR2(30 BYTE),
  GRADING_BASIS          VARCHAR2(3 BYTE),
  GRADING_BASIS_SD       VARCHAR2(10 BYTE),
  GRADING_BASIS_LD       VARCHAR2(30 BYTE),
  GRD_PTS_PER_UNIT       NUMBER(9,3),
  INCLUDE_IN_GPA         VARCHAR2(1 BYTE),
  INPUT_CHG_FL           VARCHAR2(1 BYTE),
  LS_DATA_SOURCE         VARCHAR2(3 BYTE),
  OVRD_RSN               VARCHAR2(50 BYTE),
  OVRD_TRCR_FL           VARCHAR2(1 BYTE),
  PERCENTILE             INTEGER,
  REJECT_REASON          VARCHAR2(2 BYTE),
  REPEAT_CODE            VARCHAR2(4 BYTE),
  RQMNT_DESIGNTN         VARCHAR2(4 BYTE),
  RQMNT_DESIGNTN_LD      VARCHAR2(30 BYTE),
  SCORE                  NUMBER(6,2),
  SSR_FAWI_INCL          VARCHAR2(1 BYTE),
  TEST_DT                DATE,
  TST_EQVLNCY            VARCHAR2(6 BYTE),
  TEST_ID                VARCHAR2(11 BYTE),
  TEST_ID_LD             VARCHAR2(30 BYTE),
  TEST_COMPONENT         VARCHAR2(5 BYTE),
  TEST_COMPONENT_LD      VARCHAR2(30 BYTE),
  TRNSFR_EQVLNCY_CMP     VARCHAR2(4 BYTE),
  TRNSFR_STAT            VARCHAR2(1 BYTE),
  TRNSFR_STAT_SD         VARCHAR2(30 BYTE),
  TRNSFR_STAT_LD         VARCHAR2(30 BYTE),
  UNITS_ATTEMPTED        VARCHAR2(1 BYTE),
  UNT_TRNSFR             NUMBER(8,3),
  VALID_ATTEMPT          VARCHAR2(1 BYTE),
  COMMENTS               VARCHAR2(4000 BYTE),
  LOAD_ERROR             VARCHAR2(1 BYTE),
  DATA_ORIGIN            VARCHAR2(1 BYTE),
  CREATED_EW_DTTM        DATE,
  LASTUPD_EW_DTTM        DATE,
  BATCH_SID              NUMBER(10)
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
