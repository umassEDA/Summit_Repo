CREATE TABLE UM_D_ACAD_PROG
(
  ACAD_PROG_SID           INTEGER,
  EFFDT                   DATE,
  INSTITUTION_CD          VARCHAR2(5 BYTE),
  ACAD_PROG_CD            VARCHAR2(5 BYTE),
  SRC_SYS_ID              VARCHAR2(5 BYTE),
  EFFDT_START             DATE,
  EFFDT_END               DATE,
  EFFDT_ORDER             INTEGER,
  EFF_STAT_CD             VARCHAR2(1 BYTE),
  ACAD_PROG_SD            VARCHAR2(10 BYTE),
  ACAD_PROG_LD            VARCHAR2(30 BYTE),
  ACAD_PROG_CD_DESC       VARCHAR2(50 BYTE),
  ACAD_CAR_SID            INTEGER,
  ACAD_GRP_SID            INTEGER,
  ACAD_ORG_SID            INTEGER,
  CAMPUS_SID              INTEGER,
  INSTITUTION_SID         INTEGER,
  ACAD_STDNG_RULE         VARCHAR2(10 BYTE),
  CALC_AS_BATCH_ONLY_FLG  VARCHAR2(1 BYTE),
  CAR_PTR_EXC_FLG         VARCHAR2(1 BYTE),
  CAR_PTR_EXC_RULE        VARCHAR2(10 BYTE),
  CIP_CD                  VARCHAR2(13 BYTE),
  CIP_LD                  VARCHAR2(30 BYTE),
  FA_ELIG_FLG             VARCHAR2(1 BYTE),
  FA_PRIMACY_NBR          INTEGER,
  GRADE_TRANSFER          VARCHAR2(3 BYTE),
  GRADING_SCHEME          VARCHAR2(3 BYTE),
  GRADING_BASIS           VARCHAR2(3 BYTE),
  INCOMPLETE_GRADE        VARCHAR2(3 BYTE),
  LAPSE_GRADE_FLG         VARCHAR2(1 BYTE),
  LAPSE_TO_GRADE          VARCHAR2(3 BYTE),
  LAPSE_DAYS              INTEGER,
  LEVEL_LOAD_RULE         VARCHAR2(5 BYTE),
  OEE_IND                 VARCHAR2(1 BYTE),
  REPEAT_ENRL_CTL_FLG     VARCHAR2(1 BYTE),
  REPEAT_ENRL_SUSP_FLG    VARCHAR2(1 BYTE),
  REPEAT_GRD_CK           VARCHAR2(1 BYTE),
  REPEAT_GRD_CK_SD        VARCHAR2(10 BYTE),
  REPEAT_GRD_CK_LD        VARCHAR2(30 BYTE),
  REPEAT_GRD_SUSP_FLG     VARCHAR2(1 BYTE),
  REPEAT_CRSE_ERROR       VARCHAR2(1 BYTE),
  REPEAT_CRSE_ERROR_SD    VARCHAR2(10 BYTE),
  REPEAT_CRSE_ERROR_LD    VARCHAR2(30 BYTE),
  REPEAT_RULE             VARCHAR2(10 BYTE),
  RES_REQ_FLG             VARCHAR2(1 BYTE),
  SEV_VALID_CIP_FLG       VARCHAR2(1 BYTE),
  UM_STEM_FLG             VARCHAR2(1 BYTE),
  DATA_ORIGIN             VARCHAR2(1 BYTE),
  CREATED_EW_DTTM         DATE,
  LASTUPD_EW_DTTM         DATE
)
NOLOGGING 
NOCOMPRESS 
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
