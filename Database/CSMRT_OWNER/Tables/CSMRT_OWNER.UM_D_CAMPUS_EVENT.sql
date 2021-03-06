CREATE TABLE UM_D_CAMPUS_EVENT
(
  CAMPUS_EVENT_SID   INTEGER,
  CAMPUS_EVENT_NBR   VARCHAR2(9 BYTE),
  SRC_SYS_ID         VARCHAR2(5 BYTE),
  INSTITUTION_CD     VARCHAR2(5 BYTE),
  DESCRSHORT         VARCHAR2(10 BYTE),
  DESCR              VARCHAR2(30 BYTE),
  CAMPUS_EVENT_TYPE  VARCHAR2(4 BYTE),
  COMMENTS           VARCHAR2(4000 BYTE),
  DATA_ORIGIN        VARCHAR2(1 BYTE),
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
