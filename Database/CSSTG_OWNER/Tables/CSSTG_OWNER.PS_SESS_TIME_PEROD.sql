DROP TABLE CSSTG_OWNER.PS_SESS_TIME_PEROD CASCADE CONSTRAINTS
/

--
-- PS_SESS_TIME_PEROD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_SESS_TIME_PEROD
(
  INSTITUTION      VARCHAR2(5 BYTE)             NOT NULL,
  ACAD_CAREER      VARCHAR2(4 BYTE)             NOT NULL,
  STRM             VARCHAR2(4 BYTE)             NOT NULL,
  SESSION_CODE     VARCHAR2(3 BYTE)             NOT NULL,
  TIME_PERIOD      VARCHAR2(3 BYTE)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  END_DT           DATE,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
