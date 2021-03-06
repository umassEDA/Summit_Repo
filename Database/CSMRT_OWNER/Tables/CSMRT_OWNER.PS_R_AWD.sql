CREATE TABLE PS_R_AWD
(
  PERSON_SID       INTEGER,
  AWD_SID          NUMBER(10),
  AWD_RCVD_DT      DATE,
  SRC_SYS_ID       VARCHAR2(5 BYTE),
  PERSON_ID        VARCHAR2(15 BYTE),
  INSTITUTION_CD   VARCHAR2(5 BYTE),
  AWD_CD           VARCHAR2(6 BYTE),
  ACAD_CAR_CD      VARCHAR2(4 BYTE),
  ACAD_CAR_SD      VARCHAR2(10 BYTE),
  ACAD_PROG_CD     VARCHAR2(5 BYTE),
  ACAD_PROG_SD     VARCHAR2(10 BYTE),
  ACAD_PLAN_CD     VARCHAR2(10 BYTE),
  ACAD_PLAN_SD     VARCHAR2(10 BYTE),
  TERM_CD          VARCHAR2(4 BYTE),
  TERM_SD          VARCHAR2(10 BYTE),
  DESCRFORMAL      VARCHAR2(50 BYTE),
  GRANTOR          VARCHAR2(20 BYTE),
  COMMENTS         VARCHAR2(2000 BYTE),
  EFF_START_DT     DATE,
  EFF_END_DT       DATE,
  CURRENT_IND      VARCHAR2(1 BYTE),
  LOAD_ERROR       VARCHAR2(1 BYTE),
  DATA_ORIGIN      VARCHAR2(1 BYTE),
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
