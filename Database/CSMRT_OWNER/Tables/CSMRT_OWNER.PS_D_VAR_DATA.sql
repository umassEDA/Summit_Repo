CREATE TABLE PS_D_VAR_DATA
(
  VAR_DATA_SID      INTEGER,
  COMMON_ID         VARCHAR2(11 CHAR),
  VAR_DATA_SEQ      INTEGER,
  ADMIN_FUNCTION    VARCHAR2(4 CHAR),
  SRC_SYS_ID        VARCHAR2(5 CHAR),
  PERSON_SID        INTEGER,
  ACAD_CAR_CD       VARCHAR2(4 CHAR),
  ACCOUNT_NBR       VARCHAR2(10 CHAR),
  ACCOUNT_TERM      VARCHAR2(4 CHAR),
  ADM_APPL_NBR      VARCHAR2(8 CHAR),
  AID_YEAR          VARCHAR2(4 CHAR),
  APPL_PROG_NBR     INTEGER,
  BUSINESS_UNIT     VARCHAR2(5 CHAR),
  CAMPUS_EVENT_NBR  VARCHAR2(9 CHAR),
  DESIGNATION       VARCHAR2(11 CHAR),
  EVENT_MTG_NBR     INTEGER,
  GIFT_NO           VARCHAR2(11 CHAR),
  INTV_CD           VARCHAR2(10 CHAR),
  LN_APPL_ID        VARCHAR2(21 CHAR),
  LN_APPL_SEQ       INTEGER,
  LOAN_TYPE         VARCHAR2(4 CHAR),
  RECOGNITION_TYPE  VARCHAR2(1 CHAR),
  SESSION_NO        VARCHAR2(11 CHAR),
  STDNT_CAR_NBR     INTEGER,
  STRM              VARCHAR2(4 CHAR),
  DATA_ORIGIN       VARCHAR2(1 CHAR),
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;