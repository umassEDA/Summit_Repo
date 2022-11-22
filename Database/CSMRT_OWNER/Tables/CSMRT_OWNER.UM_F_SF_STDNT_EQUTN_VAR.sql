DROP TABLE CSMRT_OWNER.UM_F_SF_STDNT_EQUTN_VAR CASCADE CONSTRAINTS
/

--
-- UM_F_SF_STDNT_EQUTN_VAR  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_SF_STDNT_EQUTN_VAR
(
  INSTITUTION_CD   VARCHAR2(5 BYTE)             NOT NULL,
  BILLING_CAREER   VARCHAR2(4 BYTE)             NOT NULL,
  TERM_CD          VARCHAR2(4 BYTE)             NOT NULL,
  PERSON_ID        VARCHAR2(11 BYTE)            NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  INSTITUTION_SID  INTEGER                      NOT NULL,
  BILL_CAR_SID     INTEGER                      NOT NULL,
  TERM_SID         INTEGER                      NOT NULL,
  PERSON_SID       INTEGER                      NOT NULL,
  VARIABLE_CHAR1   VARCHAR2(20 BYTE)            NOT NULL,
  VARIABLE_CHAR2   VARCHAR2(20 BYTE)            NOT NULL,
  VARIABLE_CHAR3   VARCHAR2(20 BYTE)            NOT NULL,
  VARIABLE_CHAR4   VARCHAR2(20 BYTE)            NOT NULL,
  VARIABLE_CHAR5   VARCHAR2(20 BYTE)            NOT NULL,
  VARIABLE_CHAR6   VARCHAR2(20 BYTE)            NOT NULL,
  VARIABLE_CHAR7   VARCHAR2(20 BYTE)            NOT NULL,
  VARIABLE_CHAR8   VARCHAR2(20 BYTE)            NOT NULL,
  VARIABLE_CHAR9   VARCHAR2(20 BYTE)            NOT NULL,
  VARIABLE_CHAR10  VARCHAR2(20 BYTE)            NOT NULL,
  VARIABLE_FLAG1   VARCHAR2(1 BYTE)             NOT NULL,
  VARIABLE_FLAG2   VARCHAR2(1 BYTE)             NOT NULL,
  VARIABLE_FLAG3   VARCHAR2(1 BYTE)             NOT NULL,
  VARIABLE_FLAG4   VARCHAR2(1 BYTE)             NOT NULL,
  VARIABLE_FLAG5   VARCHAR2(1 BYTE)             NOT NULL,
  VARIABLE_FLAG6   VARCHAR2(1 BYTE)             NOT NULL,
  VARIABLE_FLAG7   VARCHAR2(1 BYTE)             NOT NULL,
  VARIABLE_FLAG8   VARCHAR2(1 BYTE)             NOT NULL,
  VARIABLE_FLAG9   VARCHAR2(1 BYTE)             NOT NULL,
  VARIABLE_FLAG10  VARCHAR2(1 BYTE)             NOT NULL,
  VARIABLE_NUM1    NUMBER(15,3)                 NOT NULL,
  VARIABLE_NUM2    NUMBER(15,3)                 NOT NULL,
  VARIABLE_NUM3    NUMBER(15,3)                 NOT NULL,
  VARIABLE_NUM4    NUMBER(15,3)                 NOT NULL,
  VARIABLE_NUM5    NUMBER(15,3)                 NOT NULL,
  VARIABLE_NUM6    NUMBER(15,3)                 NOT NULL,
  VARIABLE_NUM7    NUMBER(15,3)                 NOT NULL,
  VARIABLE_NUM8    NUMBER(15,3)                 NOT NULL,
  VARIABLE_NUM9    NUMBER(15,3)                 NOT NULL,
  VARIABLE_NUM10   NUMBER(15,3)                 NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE),
  DATA_ORIGIN      VARCHAR2(1 BYTE),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        INTEGER
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_SF_STDNT_EQUTN_VAR ADD (
  CONSTRAINT PK_UM_F_SF_STDNT_EQUTN_VAR
  PRIMARY KEY
  (INSTITUTION_CD, BILLING_CAREER, TERM_CD, PERSON_ID, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
