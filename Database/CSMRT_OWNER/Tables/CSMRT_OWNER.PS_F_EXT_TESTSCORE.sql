DROP TABLE CSMRT_OWNER.PS_F_EXT_TESTSCORE CASCADE CONSTRAINTS
/

--
-- PS_F_EXT_TESTSCORE  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_F_EXT_TESTSCORE
(
  PERSON_SID         INTEGER                    NOT NULL,
  EXT_TST_CMPNT_SID  NUMBER(10)                 NOT NULL,
  EXT_TST_DT         DATE                       NOT NULL,
  TST_DATA_SRC_SID   NUMBER(10)                 NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  EXT_TST_ID         VARCHAR2(11 BYTE)          NOT NULL,
  EXT_TST_CMPNT_ID   VARCHAR2(5 BYTE)           NOT NULL,
  TST_DATA_SRC_ID    VARCHAR2(4 BYTE)           NOT NULL,
  EXT_ACAD_LVL_SID   NUMBER(10)                 NOT NULL,
  NUMERIC_SCORE      NUMBER(6,2),
  LETTER_SCORE       VARCHAR2(4 BYTE),
  SCORE_PERCENTILE   INTEGER,
  LOAD_DT            DATE,
  TEST_ADMIN         VARCHAR2(1 BYTE),
  TEST_INDEX         NUMBER(6,1),
  MAX_SCORE          NUMBER(6,2),
  MIN_SCORE          NUMBER(6,2),
  CONV_FLG           VARCHAR2(1 BYTE),
  LOAD_ERROR         VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.PS_F_EXT_TESTSCORE ADD (
  CONSTRAINT PK_PS_F_EXT_TESTSCORE
  PRIMARY KEY
  (PERSON_SID, EXT_TST_CMPNT_SID, EXT_TST_DT, TST_DATA_SRC_SID, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
