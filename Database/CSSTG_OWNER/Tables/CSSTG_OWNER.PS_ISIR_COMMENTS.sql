DROP TABLE CSSTG_OWNER.PS_ISIR_COMMENTS CASCADE CONSTRAINTS
/

--
-- PS_ISIR_COMMENTS  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ISIR_COMMENTS
(
  EMPLID           VARCHAR2(11 BYTE)            NOT NULL,
  INSTITUTION      VARCHAR2(5 BYTE)             NOT NULL,
  AID_YEAR         VARCHAR2(4 BYTE)             NOT NULL,
  EFFDT            DATE                         NOT NULL,
  EFFSEQ           INTEGER                      NOT NULL,
  COMMENT_CODE     VARCHAR2(3 BYTE)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
