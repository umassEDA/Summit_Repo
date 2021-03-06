CREATE TABLE UM_F_FA_STDNT_ANTICIP_AID
(
  INSTITUTION_CD        VARCHAR2(5 BYTE),
  ACAD_CAR_CD           VARCHAR2(4 BYTE),
  AID_YEAR              VARCHAR2(4 BYTE),
  PERSON_ID             VARCHAR2(11 BYTE),
  ITEM_TYPE             VARCHAR2(12 BYTE),
  DISBURSEMENT_PLAN     VARCHAR2(2 BYTE),
  DISBURSEMENT_ID       VARCHAR2(2 BYTE),
  AS_OF_DTTM            TIMESTAMP(6),
  SRC_SYS_ID            VARCHAR2(5 BYTE),
  INSTITUTION_SID       INTEGER,
  ACAD_CAR_SID          INTEGER,
  PERSON_SID            INTEGER,
  ITEM_TYPE_SID         INTEGER,
  TERM_SID              INTEGER,
  DISBURSEMENT_PLAN_LD  VARCHAR2(30 BYTE),
  NET_AWARD_AMT         NUMBER(11,2),
  DISB_APPLY_DT         DATE,
  DISB_EXPIRE_DT        DATE,
  CURRENCY_CD           VARCHAR2(3 BYTE),
  LOAD_ERROR            VARCHAR2(1 BYTE),
  DATA_ORIGIN           VARCHAR2(1 BYTE),
  CREATED_EW_DTTM       DATE,
  LASTUPD_EW_DTTM       DATE,
  BATCH_SID             INTEGER
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
