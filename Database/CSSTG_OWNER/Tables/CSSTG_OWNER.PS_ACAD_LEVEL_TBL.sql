DROP TABLE CSSTG_OWNER.PS_ACAD_LEVEL_TBL CASCADE CONSTRAINTS
/

--
-- PS_ACAD_LEVEL_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ACAD_LEVEL_TBL
(
  SETID            VARCHAR2(5 BYTE)             NOT NULL,
  LEVEL_LOAD_RULE  VARCHAR2(5 BYTE)             NOT NULL,
  EFFDT            DATE                         NOT NULL,
  UNT_CUM_TOTAL    NUMBER(8,3)                  NOT NULL,
  ACADEMIC_LEVEL   VARCHAR2(3 BYTE)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  NSLDS_LOAN_YEAR  VARCHAR2(1 BYTE)             NOT NULL,
  DIR_LND_YR       VARCHAR2(2 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
