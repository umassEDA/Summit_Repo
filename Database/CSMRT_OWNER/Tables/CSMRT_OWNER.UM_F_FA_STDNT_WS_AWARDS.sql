CREATE TABLE UM_F_FA_STDNT_WS_AWARDS
(
  INSTITUTION_CD        VARCHAR2(5 BYTE),
  ACAD_CAR_CD           VARCHAR2(4 BYTE),
  AID_YEAR              VARCHAR2(4 BYTE),
  PERSON_ID             VARCHAR2(11 BYTE),
  ITEM_TYPE             VARCHAR2(12 BYTE),
  SEQNO                 INTEGER,
  EFFDT                 DATE,
  SRC_SYS_ID            VARCHAR2(5 BYTE),
  INSTITUTION_SID       INTEGER,
  ACAD_CAR_SID          INTEGER,
  PERSON_SID            INTEGER,
  ITEM_TYPE_SID         INTEGER,
  ACCOUNT               VARCHAR2(10 BYTE),
  ACTION_DT             DATE,
  AWARD_STATUS          VARCHAR2(1 BYTE),
  COMMENTS_MSGS         VARCHAR2(254 BYTE),
  COMMUNITY_SERVICE     VARCHAR2(1 BYTE),
  COMMUNITY_SERVICE_LD  VARCHAR2(30 BYTE),
  EFF_STATUS            VARCHAR2(1 BYTE),
  EMAILID               VARCHAR2(70 BYTE),
  EMPLOYER              VARCHAR2(30 BYTE),
  EMPL_RCD              INTEGER,
  END_DT                DATE,
  HOURLY_RT             NUMBER(18,6),
  JOBID                 VARCHAR2(10 BYTE),
  JOB_REC_EFFDT         DATE,
  JOB_REC_EFFSEQ        INTEGER,
  PHONE                 VARCHAR2(24 BYTE),
  SUPERVISOR_NAME       VARCHAR2(50 BYTE),
  UM_EXEMPT             VARCHAR2(2 BYTE),
  UM_SEC_ACCOUNT        VARCHAR2(10 BYTE),
  UM_THIRD_ACCOUNT      VARCHAR2(10 BYTE),
  UM_FOURTH_ACCOUNT     VARCHAR2(10 BYTE),
  WS_PLACEMENT_STAT     VARCHAR2(3 BYTE),
  WS_PLACEMENT_STAT_LD  VARCHAR2(30 BYTE),
  WS_PLACEMENT_DT       DATE,
  START_DATE            DATE,
  END_DATE              DATE,
  LOAD_ERROR            VARCHAR2(1 BYTE),
  DATA_ORIGIN           VARCHAR2(1 BYTE),
  CREATED_EW_DTTM       DATE,
  LASTUPD_EW_DTTM       DATE,
  BATCH_SID             NUMBER(10)
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;