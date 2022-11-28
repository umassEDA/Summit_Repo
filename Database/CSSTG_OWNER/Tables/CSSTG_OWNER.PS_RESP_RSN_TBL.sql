DROP TABLE CSSTG_OWNER.PS_RESP_RSN_TBL CASCADE CONSTRAINTS
/

--
-- PS_RESP_RSN_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_RESP_RSN_TBL
(
  INSTITUTION      VARCHAR2(5 BYTE)             NOT NULL,
  ACAD_CAREER      VARCHAR2(4 BYTE)             NOT NULL,
  RESPONSE_REASON  VARCHAR2(4 BYTE)             NOT NULL,
  EFFDT            DATE                         NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  EFF_STATUS       VARCHAR2(1 BYTE)             NOT NULL,
  DESCR            VARCHAR2(30 BYTE),
  DESCRSHORT       VARCHAR2(10 BYTE),
  LOAD_ERROR       VARCHAR2(1 BYTE),
  DATA_ORIGIN      VARCHAR2(1 BYTE),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)
)
NOCOMPRESS
/