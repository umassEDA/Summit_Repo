CREATE TABLE UM_D_ENRL_MSG
(
  MESSAGE_SET_NBR   INTEGER,
  MESSAGE_NBR       INTEGER,
  SRC_SYS_ID        VARCHAR2(5 BYTE),
  MESSAGE_TEXT      VARCHAR2(100 BYTE),
  MSG_SEVERITY      VARCHAR2(1 BYTE),
  LAST_UPDATE_DTTM  DATE,
  DESCRLONG         VARCHAR2(4000 BYTE),
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
