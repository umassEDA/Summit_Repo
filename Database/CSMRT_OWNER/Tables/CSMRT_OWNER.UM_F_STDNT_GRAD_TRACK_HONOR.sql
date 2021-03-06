CREATE TABLE UM_F_STDNT_GRAD_TRACK_HONOR
(
  PERSON_ID        VARCHAR2(11 BYTE),
  INSTITUTION_CD   VARCHAR2(5 BYTE),
  ACAD_CAR_CD      VARCHAR2(4 BYTE),
  STDNT_CAR_NUM    INTEGER,
  ACAD_PROG_CD     VARCHAR2(5 BYTE),
  EXP_GRAD_TERM    VARCHAR2(4 BYTE),
  DEG_CD           VARCHAR2(8 BYTE),
  SEQNUM           INTEGER,
  SRC_SYS_ID       VARCHAR2(5 BYTE),
  HONORS_CODE      VARCHAR2(3 BYTE),
  DESCR            VARCHAR2(30 BYTE),
  DATA_ORIGIN      VARCHAR2(1 BYTE),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
