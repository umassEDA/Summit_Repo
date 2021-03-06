CREATE TABLE PS_D_LOCATION
(
  LOC_SID          INTEGER,
  SETID            VARCHAR2(5 CHAR),
  LOC_ID           VARCHAR2(10 CHAR),
  SRC_SYS_ID       VARCHAR2(5 CHAR),
  EFFDT            DATE,
  LOC_SD           VARCHAR2(10 CHAR),
  LOC_LD           VARCHAR2(40 CHAR),
  LOC_ADDR1_LD     VARCHAR2(55 CHAR),
  LOC_ADDR2_LD     VARCHAR2(55 CHAR),
  LOC_ADDR3_LD     VARCHAR2(55 CHAR),
  LOC_ADDR4_LD     VARCHAR2(55 CHAR),
  LOC_BLDG_NUM     VARCHAR2(10 CHAR),
  LOC_CITY_NM      VARCHAR2(30 CHAR),
  LOC_CNTY_NM      VARCHAR2(30 CHAR),
  LOC_STATE_CD     VARCHAR2(6 CHAR),
  LOC_POSTAL_CD    VARCHAR2(12 CHAR),
  LOC_CNTRY_CD     VARCHAR2(3 CHAR),
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
