DROP TABLE CSSTG_OWNER.PS_TERM_FE_CD_TBL CASCADE CONSTRAINTS
/

--
-- PS_TERM_FE_CD_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_TERM_FE_CD_TBL
(
  SETID               VARCHAR2(5 BYTE)          NOT NULL,
  FEE_CODE            VARCHAR2(6 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  EFF_STATUS          VARCHAR2(1 BYTE)          NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  DESCR254            VARCHAR2(254 BYTE)        NOT NULL,
  CHARGE_BY           VARCHAR2(1 BYTE)          NOT NULL,
  FEE_CLASS           VARCHAR2(3 BYTE)          NOT NULL,
  CURRENCY_CD         VARCHAR2(3 BYTE)          NOT NULL,
  USE_UNIT            VARCHAR2(1 BYTE)          NOT NULL,
  USE_ANTIC_UNIT_IND  VARCHAR2(1 BYTE)          NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
NOCOMPRESS
/
