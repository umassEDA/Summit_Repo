CREATE TABLE UM_D_SCTN_CMBND
(
  SCTN_COMBINED_SID  INTEGER,
  INSTITUTION_CD     VARCHAR2(5 BYTE),
  TERM_CD            VARCHAR2(4 BYTE),
  SESSION_CD         VARCHAR2(3 BYTE),
  SCTN_COMBINED_ID   VARCHAR2(4 BYTE),
  SRC_SYS_ID         VARCHAR2(5 BYTE),
  DESCRSHORT         VARCHAR2(10 BYTE),
  DESCR              VARCHAR2(30 BYTE),
  ENRL_CAP           INTEGER,
  ENRL_TOT           INTEGER,
  WAIT_CAP           INTEGER,
  WAIT_TOT           INTEGER,
  ROOM_CAP_REQUEST   INTEGER,
  PERM_COMBINATION   VARCHAR2(1 BYTE),
  COMBINATION_TYPE   VARCHAR2(2 BYTE),
  SKIP_MTGPAT_EDIT   VARCHAR2(1 BYTE),
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