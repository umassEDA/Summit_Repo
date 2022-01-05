CREATE TABLE UM_R_ADM_APPL_CAMPUS_MTG
(
  INSTITUTION_CD     VARCHAR2(5 BYTE),
  PERSON_ID          VARCHAR2(11 BYTE),
  CAMPUS_EVENT_NBR   VARCHAR2(9 BYTE),
  CAMPUS_EVENT_ATND  VARCHAR2(5 BYTE),
  EVENT_MTG_NBR      INTEGER,
  SRC_SYS_ID         VARCHAR2(5 BYTE),
  INSTITUTION_SID    INTEGER,
  PERSON_SID         INTEGER,
  CAMPUS_EVENT_SID   INTEGER,
  EVENT_MTG_SID      INTEGER,
  EVNT_ATND_STAT     VARCHAR2(1 BYTE),
  EVNT_ATND_STAT_SD  VARCHAR2(10 BYTE),
  EVNT_ATND_STAT_LD  VARCHAR2(30 BYTE),
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