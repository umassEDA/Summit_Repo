CREATE TABLE UM_D_EXT_SUBJECT_AREA
(
  EXT_SUBJECT_AREA_SID  INTEGER,
  EXT_SUBJECT_AREA      VARCHAR2(4 BYTE),
  SRC_SYS_ID            VARCHAR2(5 BYTE),
  EFFDT                 DATE,
  EFF_STATUS            VARCHAR2(1 BYTE),
  DESCRSHORT            VARCHAR2(10 BYTE),
  DESCR                 VARCHAR2(30 BYTE),
  ACAD_INTEREST_FLG     VARCHAR2(1 BYTE),
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
