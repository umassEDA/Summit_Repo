CREATE TABLE UM_F_FA_STDNT_AWARDS
(
  INSTITUTION_CD        VARCHAR2(5 BYTE),
  ACAD_CAR_CD           VARCHAR2(4 BYTE),
  AID_YEAR              VARCHAR2(4 BYTE),
  PERSON_ID             VARCHAR2(11 BYTE),
  ITEM_TYPE             VARCHAR2(12 BYTE),
  SRC_SYS_ID            VARCHAR2(5 BYTE),
  INSTITUTION_SID       INTEGER,
  ACAD_CAR_SID          INTEGER,
  PERSON_SID            INTEGER,
  ITEM_TYPE_SID         INTEGER,
  AY_OFFER_AMOUNT       NUMBER(11,2),
  AY_ACCEPT_AMOUNT      NUMBER(11,2),
  AY_AUTHORIZED_AMOUNT  NUMBER(11,2),
  AY_DISBURSED_AMOUNT   NUMBER(11,2),
  AWARD_STATUS          VARCHAR2(1 BYTE),
  AWARD_STATUS_LD       VARCHAR2(30 BYTE),
  CHARGE_PRIORITY       VARCHAR2(8 BYTE),
  CHARGE_PRIORITY_LD    VARCHAR2(30 BYTE),
  DISBURSEMENT_PLAN     VARCHAR2(2 BYTE),
  DISBURSEMENT_PLAN_LD  VARCHAR2(30 BYTE),
  FA_PROF_JUDGEMENT     VARCHAR2(1 BYTE),
  LOCK_AWARD_FLAG       VARCHAR2(1 BYTE),
  PKG_PLAN_ID           VARCHAR2(10 BYTE),
  PKG_SEQ_NBR           INTEGER,
  SPLIT_CODE            VARCHAR2(2 BYTE),
  SPLIT_CODE_LD         VARCHAR2(30 BYTE),
  OVERRIDE_NEED         VARCHAR2(1 BYTE),
  OVERRIDE_FL           VARCHAR2(1 BYTE),
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
