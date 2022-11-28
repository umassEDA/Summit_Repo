DROP TABLE CSSTG_OWNER.PS_CREDIT_HISTORY_OLD CASCADE CONSTRAINTS
/

--
-- PS_CREDIT_HISTORY_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_CREDIT_HISTORY_OLD
(
  BUSINESS_UNIT     VARCHAR2(5 BYTE)            NOT NULL,
  EMPLID            VARCHAR2(11 BYTE)           NOT NULL,
  EXT_ORG_ID        VARCHAR2(11 BYTE)           NOT NULL,
  ACCOUNT_NBR       VARCHAR2(10 BYTE)           NOT NULL,
  ACCOUNT_TERM      VARCHAR2(4 BYTE)            NOT NULL,
  EFFDT             DATE,
  AGING_SET         VARCHAR2(5 BYTE)            NOT NULL,
  AGE_CATEGORY      VARCHAR2(2 BYTE)            NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  AMOUNT            NUMBER(26,3)                NOT NULL,
  LAST_DTTM_UPDATE  DATE,
  ACCOUNT_TYPE_SF   VARCHAR2(3 BYTE)            NOT NULL,
  LOAD_ERROR        VARCHAR2(1 BYTE)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL
)
COMPRESS BASIC
/