CREATE TABLE PS_D_INSTITUTION
(
  INSTITUTION_SID  INTEGER,
  INSTITUTION_CD   VARCHAR2(5 CHAR),
  SRC_SYS_ID       VARCHAR2(5 CHAR),
  EFFDT            DATE,
  EFF_STAT_CD      VARCHAR2(1 CHAR),
  INSTITUTION_SD   VARCHAR2(10 CHAR),
  INSTITUTION_LD   VARCHAR2(30 CHAR),
  INSTITUTION_FD   VARCHAR2(50 CHAR),
  ADDR1_LD         VARCHAR2(55 CHAR),
  ADDR2_LD         VARCHAR2(55 CHAR),
  ADDR3_LD         VARCHAR2(55 CHAR),
  ADDR4_LD         VARCHAR2(55 CHAR),
  CITY_NM          VARCHAR2(30 CHAR),
  CNTY_NM          VARCHAR2(30 CHAR),
  STATE_CD         VARCHAR2(6 CHAR),
  POSTAL_CD        VARCHAR2(12 CHAR),
  GEO_CD           VARCHAR2(11 CHAR),
  CNTRY_CD         VARCHAR2(3 CHAR),
  DATA_ORIGIN      VARCHAR2(1 CHAR),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
