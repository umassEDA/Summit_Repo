DROP TABLE CSMRT_OWNER.UM_F_FA_AWARD_DISB CASCADE CONSTRAINTS
/

--
-- UM_F_FA_AWARD_DISB  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_FA_AWARD_DISB
(
  INSTITUTION_CD      VARCHAR2(5 BYTE)          NOT NULL,
  ACAD_CAR_CD         VARCHAR2(4 BYTE)          NOT NULL,
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  TERM_CD             VARCHAR2(4 BYTE)          NOT NULL,
  PERSON_ID           VARCHAR2(11 BYTE)         NOT NULL,
  ITEM_TYPE           VARCHAR2(12 BYTE)         NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  INSTITUTION_SID     INTEGER                   NOT NULL,
  ACAD_CAR_SID        INTEGER                   NOT NULL,
  TERM_SID            INTEGER                   NOT NULL,
  PERSON_SID          INTEGER                   NOT NULL,
  ITEM_TYPE_SID       INTEGER                   NOT NULL,
  OFFER_BALANCE       NUMBER(11,2),
  ACCEPT_BALANCE      NUMBER(11,2),
  AUTHORIZED_BALANCE  NUMBER(11,2),
  DISBURSED_BALANCE   NUMBER(11,2),
  NET_DISB_BALANCE    NUMBER(11,2),
  NET_AWARD_AMT_SF    NUMBER(11,2),
  LOAD_ERROR          VARCHAR2(1 BYTE),
  DATA_ORIGIN         VARCHAR2(1 BYTE),
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           INTEGER
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_FA_AWARD_DISB ADD (
  CONSTRAINT PK_UM_F_FA_AWARD_DISB
  PRIMARY KEY
  (INSTITUTION_CD, ACAD_CAR_CD, AID_YEAR, TERM_CD, PERSON_ID, ITEM_TYPE, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
