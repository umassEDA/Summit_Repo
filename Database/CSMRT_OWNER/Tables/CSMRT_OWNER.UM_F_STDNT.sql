CREATE TABLE UM_F_STDNT
(
  INSTITUTION_CD   VARCHAR2(5 BYTE),
  ACAD_CAR_CD      VARCHAR2(4 BYTE),
  PERSON_ID        VARCHAR2(11 BYTE),
  SRC_SYS_ID       VARCHAR2(5 BYTE),
  INSTITUTION_SID  INTEGER,
  ACAD_CAR_SID     INTEGER,
  PERSON_SID       INTEGER,
  ADM_CNT          INTEGER,
  SR_CNT           INTEGER,
  PRSPCT_CNT       INTEGER,
  LOAD_ERROR       VARCHAR2(1 BYTE),
  DATA_ORIGIN      VARCHAR2(1 BYTE),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        INTEGER
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;