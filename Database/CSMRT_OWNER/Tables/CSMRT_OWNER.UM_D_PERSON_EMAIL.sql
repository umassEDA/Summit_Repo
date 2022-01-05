CREATE TABLE UM_D_PERSON_EMAIL
(
  INSTITUTION_CD   VARCHAR2(5 BYTE),
  PERSON_ID        VARCHAR2(11 BYTE),
  E_ADDR_TYPE      VARCHAR2(4 BYTE),
  SRC_SYS_ID       VARCHAR2(5 BYTE),
  EMAIL_ADDR       VARCHAR2(70 BYTE),
  PERSON_SID       INTEGER,
  E_ADDR_TYPE_SD   VARCHAR2(10 BYTE),
  E_ADDR_TYPE_LD   VARCHAR2(30 BYTE),
  PREF_EMAIL_FLAG  VARCHAR2(1 BYTE),
  PS_EMAIL_ORDER   INTEGER,
  SP_EMAIL_ORDER   INTEGER,
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