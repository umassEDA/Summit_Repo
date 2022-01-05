CREATE TABLE PS_D_EXT_TST_CMPNT
(
  EXT_TST_CMPNT_SID  INTEGER,
  EXT_TST_ID         VARCHAR2(11 CHAR),
  EXT_TST_CMPNT_ID   VARCHAR2(5 CHAR),
  SRC_SYS_ID         VARCHAR2(5 CHAR),
  EFFDT              DATE,
  EXT_TST_SD         VARCHAR2(10 CHAR),
  EXT_TST_LD         VARCHAR2(30 CHAR),
  EXT_TST_CMPNT_SD   VARCHAR2(10 CHAR),
  EXT_TST_CMPNT_LD   VARCHAR2(30 CHAR),
  MAX_SCORE          NUMBER(6,2),
  MIN_SCORE          NUMBER(6,2),
  TSTNG_AGNCY_ID     VARCHAR2(3 CHAR),
  TSTNG_AGNCY_SD     VARCHAR2(10 CHAR),
  TSTNG_AGNCY_LD     VARCHAR2(30 CHAR),
  DATA_ORIGIN        VARCHAR2(1 CHAR),
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;