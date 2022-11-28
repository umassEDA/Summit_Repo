DROP TABLE CSSTG_OWNER.PS_STDNT_TEST CASCADE CONSTRAINTS
/

--
-- PS_STDNT_TEST  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_STDNT_TEST
(
  EMPLID           VARCHAR2(11 BYTE)            NOT NULL,
  TEST_ID          VARCHAR2(11 BYTE)            NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  CHKLST_ITM_UPDT  VARCHAR2(1 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
