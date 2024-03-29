DROP TABLE CSSTG_OWNER.PS_T_STDNT_TEST_COMP CASCADE CONSTRAINTS
/

--
-- PS_T_STDNT_TEST_COMP  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_STDNT_TEST_COMP
(
  EMPLID          VARCHAR2(11 BYTE)             NOT NULL,
  TEST_ID         VARCHAR2(11 BYTE)             NOT NULL,
  TEST_COMPONENT  VARCHAR2(5 BYTE)              NOT NULL,
  TEST_DT         DATE                          NOT NULL,
  LS_DATA_SOURCE  VARCHAR2(3 BYTE)              NOT NULL,
  SRC_SYS_ID      VARCHAR2(5 BYTE)              NOT NULL,
  SCORE           NUMBER(6,2)                   NOT NULL,
  SCORE_LETTER    VARCHAR2(4 BYTE)              NOT NULL,
  EXT_ACAD_LEVEL  VARCHAR2(4 BYTE)              NOT NULL,
  DATE_LOADED     DATE,
  PERCENTILE      INTEGER                       NOT NULL,
  TEST_ADMIN      VARCHAR2(1 BYTE)              NOT NULL,
  TEST_INDEX      NUMBER(6,1)                   NOT NULL,
  BATCH_SID       NUMBER(10)                    NOT NULL
)
COMPRESS BASIC
/
