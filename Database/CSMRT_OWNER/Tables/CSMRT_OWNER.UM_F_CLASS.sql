CREATE TABLE UM_F_CLASS
(
  CLASS_SID                      INTEGER,
  CRSE_CD                        VARCHAR2(6 BYTE),
  CRSE_OFFER_NUM                 INTEGER,
  TERM_CD                        VARCHAR2(4 BYTE),
  SESSION_CD                     VARCHAR2(3 BYTE),
  CLASS_SECTION_CD               VARCHAR2(4 BYTE),
  SRC_SYS_ID                     VARCHAR2(5 BYTE),
  INSTITUTION_SID                INTEGER,
  INSTITUTION_CD                 VARCHAR2(5 BYTE),
  CLASS_MTG_PAT_ORDER            INTEGER,
  PRI_CLASS_MTG_PAT_FLAG         VARCHAR2(1 BYTE),
  CLASS_MTG_PAT_SID              INTEGER,
  CLASS_MTG_PAT_PRIM_SID         INTEGER,
  CLASS_MTG_PAT_SECOND_SID       INTEGER,
  CLASS_MTG_NUM                  INTEGER,
  FCLTY_SID                      INTEGER,
  MEETING_TIME_START             DATE,
  MEETING_TIME_END               DATE,
  MON                            VARCHAR2(1 BYTE),
  TUES                           VARCHAR2(1 BYTE),
  WED                            VARCHAR2(1 BYTE),
  THURS                          VARCHAR2(1 BYTE),
  FRI                            VARCHAR2(1 BYTE),
  SAT                            VARCHAR2(1 BYTE),
  SUN                            VARCHAR2(1 BYTE),
  MTG_PAT_CD                     VARCHAR2(11 BYTE),
  START_DT                       DATE,
  START_TIME                     VARCHAR2(10 BYTE),
  END_DT                         DATE,
  END_TIME                       VARCHAR2(10 BYTE),
  MEETING_TIME                   VARCHAR2(20 BYTE),
  MTG_PAT_CRSE_TOPIC_ID          INTEGER,
  DESCR                          VARCHAR2(30 BYTE),
  STND_MTG_PAT                   VARCHAR2(4 BYTE),
  PRINT_TOPIC_ON_XCR             VARCHAR2(1 BYTE),
  MTG_PAT_HASH                   NUMBER,
  MTG_PAT_HASH_CNT               NUMBER,
  CLASS_INSTRCTR_ORDER           NUMBER,
  PRI_CLASS_INSTRCTR_ORDER_FLAG  VARCHAR2(1 BYTE),
  CLASS_INSTRCTR_SID             INTEGER,
  INSTRCTR_ASGN_NUM              INTEGER,
  INSTRCTR_SID                   INTEGER,
  INSTRCTR_ROLE_SID              INTEGER,
  AUTOCALC_WRKLD_FLG             VARCHAR2(1 BYTE),
  INSTRCTR_LOAD_PCT              NUMBER(5,2),
  GRADE_RSTR_ACCESS              VARCHAR2(1 BYTE),
  GRADE_RSTR_ACCESS_SD           VARCHAR2(10 BYTE),
  GRADE_RSTR_ACCESS_LD           VARCHAR2(30 BYTE),
  CONTACT_MINUTES                INTEGER,
  SCHED_PRINT_INSTR              VARCHAR2(1 BYTE),
  CE_CREDITS                     NUMBER,
  CE_FTE                         NUMBER,
  DAY_CREDITS                    NUMBER,
  DAY_FTE                        NUMBER,
  TOTAL_CREDITS                  NUMBER,
  ENROLL_CNT                     NUMBER,
  ENROLL_CRSE_CNT                NUMBER,
  DROP_CNT                       NUMBER,
  DROP_CRSE_CNT                  NUMBER,
  WAIT_CNT                       NUMBER,
  WAIT_CRSE_CNT                  NUMBER,
  IFTE_CNT                       NUMBER,
  TAKEN_UNIT_SUM                 NUMBER,
  TAKEN_UNIT_OL_SUM              NUMBER,
  WAIT_ENRL_CNT                  NUMBER,
  WAIT_WAIT_CNT                  NUMBER,
  WAIT_ENRL_DIST_CRSE_CNT        NUMBER,
  WAIT_DIST_CRSE_CNT             NUMBER,
  LOAD_ERROR                     VARCHAR2(1 BYTE),
  DATA_ORIGIN                    VARCHAR2(1 BYTE),
  CREATED_EW_DTTM                DATE,
  LASTUPD_EW_DTTM                DATE,
  BATCH_SID                      NUMBER(10)
)
NOLOGGING 
NOCOMPRESS 
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
