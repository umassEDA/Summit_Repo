CREATE TABLE PS_R_DEG_HONORS
(
  PERSON_SID       INTEGER,
  STDNT_DEGR_CD    VARCHAR2(2 CHAR),
  HONORS_NUM       NUMBER(10),
  SRC_SYS_ID       VARCHAR2(5 CHAR),
  PERSON_ID        VARCHAR2(15 CHAR),
  DEG_SID          NUMBER(10),
  DEG_HONORS_SID   NUMBER(10),
  HONORS_AWD_DT    DATE,
  EFF_START_DT     DATE,
  EFF_END_DT       DATE,
  CURRENT_IND      VARCHAR2(1 CHAR),
  LOAD_ERROR       VARCHAR2(1 CHAR),
  DATA_ORIGIN      VARCHAR2(1 CHAR),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)
)
NOLOGGING 
NOCOMPRESS 
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;