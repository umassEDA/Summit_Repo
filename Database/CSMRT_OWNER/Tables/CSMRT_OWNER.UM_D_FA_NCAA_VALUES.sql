CREATE TABLE UM_D_FA_NCAA_VALUES
(
  INSTITUTION_CD  VARCHAR2(5 BYTE),
  UM_SPORT_CD     VARCHAR2(3 BYTE),
  SPORT           VARCHAR2(3 BYTE),
  DESCR           VARCHAR2(30 BYTE)
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;