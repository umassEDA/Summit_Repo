DROP TABLE CSSTG_OWNER.PS_TRNS_TEST_MODEL CASCADE CONSTRAINTS
/

--
-- PS_TRNS_TEST_MODEL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_TRNS_TEST_MODEL
(
  EMPLID            VARCHAR2(11 BYTE)           NOT NULL,
  ACAD_CAREER       VARCHAR2(4 BYTE)            NOT NULL,
  INSTITUTION       VARCHAR2(5 BYTE)            NOT NULL,
  MODEL_NBR         INTEGER                     NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  MODEL_STATUS      VARCHAR2(1 BYTE)            NOT NULL,
  ACAD_PROG         VARCHAR2(5 BYTE)            NOT NULL,
  ACAD_PLAN         VARCHAR2(10 BYTE)           NOT NULL,
  TRANSCRIPT_LEVEL  VARCHAR2(2 BYTE)            NOT NULL,
  UNT_TRNSFR        NUMBER(8,3)                 NOT NULL,
  TRF_PASSED_GPA    NUMBER(8,3)                 NOT NULL,
  TRF_PASSED_NOGPA  NUMBER(8,3)                 NOT NULL,
  TRF_TAKEN_GPA     NUMBER(8,3)                 NOT NULL,
  TRF_TAKEN_NOGPA   NUMBER(8,3)                 NOT NULL,
  TRF_GRADE_POINTS  NUMBER(9,3)                 NOT NULL,
  TRF_GPA           NUMBER(8,3)                 NOT NULL,
  INCLUDE_IN_GPA    VARCHAR2(1 BYTE)            NOT NULL,
  LOAD_ERROR        VARCHAR2(1 BYTE)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL,
  COMMENTS          VARCHAR2(4000 BYTE)
)
COMPRESS BASIC
/
