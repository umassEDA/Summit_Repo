DROP TABLE CSMRT_OWNER.UM_F_FA_STDNT_AWARDS CASCADE CONSTRAINTS
/

--
-- UM_F_FA_STDNT_AWARDS  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_FA_STDNT_AWARDS
(
  INSTITUTION_CD        VARCHAR2(5 BYTE)        NOT NULL,
  ACAD_CAR_CD           VARCHAR2(4 BYTE)        NOT NULL,
  AID_YEAR              VARCHAR2(4 BYTE)        NOT NULL,
  PERSON_ID             VARCHAR2(11 BYTE)       NOT NULL,
  ITEM_TYPE             VARCHAR2(12 BYTE)       NOT NULL,
  SRC_SYS_ID            VARCHAR2(5 BYTE)        NOT NULL,
  INSTITUTION_SID       INTEGER                 NOT NULL,
  ACAD_CAR_SID          INTEGER                 NOT NULL,
  PERSON_SID            INTEGER                 NOT NULL,
  ITEM_TYPE_SID         INTEGER                 NOT NULL,
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
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_FA_STDNT_AWARDS ADD (
  CONSTRAINT PK_UM_F_FA_STDNT_AWARDS
  PRIMARY KEY
  (INSTITUTION_CD, ACAD_CAR_CD, AID_YEAR, PERSON_ID, ITEM_TYPE, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
