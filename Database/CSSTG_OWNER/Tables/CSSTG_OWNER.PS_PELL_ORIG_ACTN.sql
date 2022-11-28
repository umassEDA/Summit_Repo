DROP TABLE CSSTG_OWNER.PS_PELL_ORIG_ACTN CASCADE CONSTRAINTS
/

--
-- PS_PELL_ORIG_ACTN  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_PELL_ORIG_ACTN
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  PELL_ORIG_ID        VARCHAR2(23 BYTE)         NOT NULL,
  PELL_ORIG_ACTN_SEQ  INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  PELL_ACTION_CD      VARCHAR2(4 BYTE),
  PELL_ACTION_DT      DATE,
  PELL_BATCH_NBR      VARCHAR2(26 BYTE),
  OPRID               VARCHAR2(30 BYTE),
  PROCESS_INSTANCE    NUMBER(10),
  SFA_CR_DOCUMENT_ID  VARCHAR2(34 BYTE),
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
NOCOMPRESS
/
