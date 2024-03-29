DROP TABLE CSSTG_OWNER.PS_FEE_CLASS_TBL CASCADE CONSTRAINTS
/

--
-- PS_FEE_CLASS_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_FEE_CLASS_TBL
(
  SETID            VARCHAR2(5 BYTE)             NOT NULL,
  FEE_CLASS        VARCHAR2(3 BYTE)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  DESCR            VARCHAR2(30 BYTE)            NOT NULL,
  DESCRSHORT       VARCHAR2(10 BYTE)            NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
NOCOMPRESS
/
