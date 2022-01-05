CREATE TABLE UM_D_CLASS_EXAM
(
  CRSE_CD           VARCHAR2(6 BYTE),
  CRSE_OFFER_NUM    INTEGER,
  TERM_CD           VARCHAR2(4 BYTE),
  SESSION_CD        VARCHAR2(3 BYTE),
  CLASS_SECTION_CD  VARCHAR2(4 BYTE),
  CLASS_EXAM_SEQ    INTEGER,
  SRC_SYS_ID        VARCHAR2(5 BYTE),
  INSTITUTION_CD    VARCHAR2(5 BYTE),
  CLASS_NUM         INTEGER,
  CLASS_SID         INTEGER,
  FCLTY_SID         INTEGER,
  EXAM_TIME_CODE    VARCHAR2(8 BYTE),
  EXAM_DT           DATE,
  EXAM_START_TIME   DATE,
  EXAM_END_TIME     DATE,
  CLASS_EXAM_TYPE   VARCHAR2(4 BYTE),
  COMBINED_EXAM     VARCHAR2(1 BYTE),
  DATA_ORIGIN       VARCHAR2(1 BYTE),
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE
)
NOLOGGING 
NOCOMPRESS 
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;