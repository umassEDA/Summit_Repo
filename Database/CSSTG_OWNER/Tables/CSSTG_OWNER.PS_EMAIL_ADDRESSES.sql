DROP TABLE CSSTG_OWNER.PS_EMAIL_ADDRESSES CASCADE CONSTRAINTS
/

--
-- PS_EMAIL_ADDRESSES  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_EMAIL_ADDRESSES
(
  EMPLID           VARCHAR2(11 BYTE)            NOT NULL,
  E_ADDR_TYPE      VARCHAR2(4 BYTE)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  EMAIL_ADDR       VARCHAR2(70 BYTE)            NOT NULL,
  PREF_EMAIL_FLAG  VARCHAR2(1 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
