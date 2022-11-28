DROP TABLE CSSTG_OWNER.PS_TSCRPT_NOTE_TBL CASCADE CONSTRAINTS
/

--
-- PS_TSCRPT_NOTE_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_TSCRPT_NOTE_TBL
(
  SETID            VARCHAR2(5 BYTE)             NOT NULL,
  TSCRPT_NOTE_ID   VARCHAR2(4 BYTE)             NOT NULL,
  EFFDT            DATE                         NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  EFF_STATUS       VARCHAR2(1 BYTE),
  DESCR            VARCHAR2(30 BYTE),
  DESCRSHORT       VARCHAR2(10 BYTE),
  LOAD_ERROR       VARCHAR2(1 BYTE),
  DATA_ORIGIN      VARCHAR2(1 BYTE),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
