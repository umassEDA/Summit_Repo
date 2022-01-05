CREATE TABLE PS_D_ACAD_CAR
(
  ACAD_CAR_SID        INTEGER,
  INSTITUTION_CD      VARCHAR2(5 BYTE),
  ACAD_CAR_CD         VARCHAR2(4 BYTE),
  SRC_SYS_ID          VARCHAR2(5 BYTE),
  EFFDT               DATE,
  EFF_STAT_CD         VARCHAR2(1 BYTE),
  ACAD_CAR_SD         VARCHAR2(10 BYTE),
  ACAD_CAR_LD         VARCHAR2(30 BYTE),
  ACAD_CAR_CD_DESC    VARCHAR2(50 BYTE),
  ACAD_PLAN_TYPE      VARCHAR2(3 BYTE),
  FA_CAR_TYPE         VARCHAR2(1 BYTE),
  FA_PRIMACY_NBR      INTEGER,
  GRADING_BASIS       VARCHAR2(3 BYTE),
  GRADING_SCHEME      VARCHAR2(3 BYTE),
  GRADE_TRANSFER      VARCHAR2(3 BYTE),
  GRADUATE_LVL_IND    VARCHAR2(1 BYTE),
  OEE_IND             VARCHAR2(1 BYTE),
  REPEAT_CRSE_ERROR   VARCHAR2(1 BYTE),
  REPEAT_GRD_CK       VARCHAR2(1 BYTE),
  REPEAT_GRD_SUSP     VARCHAR2(1 BYTE),
  REPEAT_ENRL_CTL     VARCHAR2(1 BYTE),
  REPEAT_ENRL_SUSP    VARCHAR2(1 BYTE),
  REPEAT_RULE         VARCHAR2(10 BYTE),
  REPEAT_SCHEME       VARCHAR2(4 BYTE),
  SF_GRAD_DESIGNATIO  VARCHAR2(1 BYTE),
  DATA_ORIGIN         VARCHAR2(1 BYTE),
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE
)
NOLOGGING 
NOCOMPRESS 
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;