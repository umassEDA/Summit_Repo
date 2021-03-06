CREATE TABLE UM_D_CLASS_MTG_PAT
(
  CLASS_MTG_PAT_SID      INTEGER,
  CRSE_CD                VARCHAR2(6 BYTE),
  CRSE_OFFER_NUM         INTEGER,
  TERM_CD                VARCHAR2(4 BYTE),
  SESSION_CD             VARCHAR2(3 BYTE),
  CLASS_SECTION_CD       VARCHAR2(4 BYTE),
  CLASS_MTG_NUM          INTEGER,
  SRC_SYS_ID             VARCHAR2(5 BYTE),
  CLASS_MTG_PAT_ORDER    INTEGER,
  INSTITUTION_CD         VARCHAR2(5 BYTE),
  CLASS_SID              INTEGER,
  FCLTY_SID              INTEGER,
  MEETING_TIME_START     DATE,
  MEETING_TIME_END       DATE,
  MON                    VARCHAR2(1 BYTE),
  TUES                   VARCHAR2(1 BYTE),
  WED                    VARCHAR2(1 BYTE),
  THURS                  VARCHAR2(1 BYTE),
  FRI                    VARCHAR2(1 BYTE),
  SAT                    VARCHAR2(1 BYTE),
  SUN                    VARCHAR2(1 BYTE),
  MTG_PAT_CD             VARCHAR2(11 BYTE),
  START_DT               DATE,
  START_TIME             VARCHAR2(10 BYTE),
  END_DT                 DATE,
  END_TIME               VARCHAR2(10 BYTE),
  MEETING_TIME           VARCHAR2(19 BYTE),
  MTG_PAT_CRSE_TOPIC_ID  INTEGER,
  DESCR                  VARCHAR2(30 BYTE),
  STND_MTG_PAT           VARCHAR2(4 BYTE),
  PRINT_TOPIC_ON_XCR     VARCHAR2(1 BYTE),
  DATA_ORIGIN            VARCHAR2(1 BYTE),
  CREATED_EW_DTTM        DATE,
  LASTUPD_EW_DTTM        DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
