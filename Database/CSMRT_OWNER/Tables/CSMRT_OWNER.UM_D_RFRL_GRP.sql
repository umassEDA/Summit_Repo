CREATE TABLE UM_D_RFRL_GRP
(
  RFRL_GRP_SID     INTEGER,
  INSTITUTION_CD   VARCHAR2(5 BYTE),
  RFRL_GRP         VARCHAR2(4 BYTE),
  SRC_SYS_ID       VARCHAR2(5 BYTE),
  DESCR            VARCHAR2(30 BYTE),
  DESCRSHORT       VARCHAR2(10 BYTE),
  DATA_ORIGIN      VARCHAR2(1 BYTE),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE
)
NOLOGGING 
NOCOMPRESS 
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
