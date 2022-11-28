DROP TABLE CSSTG_OWNER.PS_ANTICIPATED_AID CASCADE CONSTRAINTS
/

--
-- PS_ANTICIPATED_AID  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ANTICIPATED_AID
(
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  INSTITUTION        VARCHAR2(5 BYTE)           NOT NULL,
  AID_YEAR           VARCHAR2(4 BYTE)           NOT NULL,
  ITEM_TYPE          VARCHAR2(12 BYTE)          NOT NULL,
  ACAD_CAREER        VARCHAR2(4 BYTE)           NOT NULL,
  DISBURSEMENT_PLAN  VARCHAR2(2 BYTE)           NOT NULL,
  DISBURSEMENT_ID    VARCHAR2(2 BYTE)           NOT NULL,
  AS_OF_DTTM         TIMESTAMP(6)               NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  STRM               VARCHAR2(4 BYTE),
  NET_AWARD_AMT      NUMBER(11,2),
  DISB_APPLY_DT      DATE,
  DISB_EXPIRE_DT     DATE,
  CURRENCY_CD        VARCHAR2(3 BYTE),
  LOAD_ERROR         VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL
)
COMPRESS BASIC
/
