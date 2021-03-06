CREATE TABLE PS_D_CUR_TERM
(
  INSTITUTION_CD        VARCHAR2(5 CHAR),
  ACAD_CAR_CD           VARCHAR2(4 CHAR),
  CURRENT_TERM          VARCHAR2(4 CHAR),
  SRC_SYS_ID            VARCHAR2(5 CHAR),
  PREVIOUS_WINTER_TERM  VARCHAR2(4 CHAR),
  PREVIOUS_FALL_TERM    VARCHAR2(4 CHAR),
  PREVIOUS_SPRING_TERM  VARCHAR2(4 CHAR),
  PREVIOUS_SUMMER_TERM  VARCHAR2(4 CHAR),
  PREVIOUS_TRI_TERM     VARCHAR2(4 CHAR),
  PREVIOUS_TERM         VARCHAR2(4 CHAR),
  NEXT_TERM             VARCHAR2(4 CHAR),
  NEXT_WINTER_TERM      VARCHAR2(4 CHAR),
  NEXT_FALL_TERM        VARCHAR2(4 CHAR),
  NEXT_SPRING_TERM      VARCHAR2(4 CHAR),
  NEXT_SUMMER_TERM      VARCHAR2(4 CHAR),
  NEXT_TRI_TERM         VARCHAR2(4 CHAR),
  DATA_ORIGIN           VARCHAR2(1 CHAR),
  CREATED_EW_DTTM       DATE,
  LASTUPD_EW_DTTM       DATE
)
NOLOGGING 
NOCOMPRESS 
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
