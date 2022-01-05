CREATE TABLE UM_D_VISA_PERMIT
(
  VISA_PERMIT_SID       INTEGER,
  COUNTRY               VARCHAR2(3 BYTE),
  VISA_PERMIT_TYPE      VARCHAR2(3 BYTE),
  SRC_SYS_ID            VARCHAR2(5 BYTE),
  EFFDT                 DATE,
  EFF_STATUS            VARCHAR2(1 BYTE),
  DESCRSHORT            VARCHAR2(10 BYTE),
  DESCR                 VARCHAR2(30 BYTE),
  VISA_PERMIT_CLASS     VARCHAR2(1 BYTE),
  VISA_PERMIT_CLASS_SD  VARCHAR2(10 BYTE),
  VISA_PERMIT_CLASS_LD  VARCHAR2(30 BYTE),
  COMMENTS              VARCHAR2(4000 BYTE),
  DATA_ORIGIN           VARCHAR2(1 BYTE),
  CREATED_EW_DTTM       DATE,
  LASTUPD_EW_DTTM       DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;