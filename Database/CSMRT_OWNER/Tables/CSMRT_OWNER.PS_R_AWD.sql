DROP TABLE CSMRT_OWNER.PS_R_AWD CASCADE CONSTRAINTS
/

--
-- PS_R_AWD  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_R_AWD
(
  PERSON_SID       INTEGER                      NOT NULL,
  AWD_SID          NUMBER(10)                   NOT NULL,
  AWD_RCVD_DT      DATE,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  PERSON_ID        VARCHAR2(15 BYTE)            NOT NULL,
  INSTITUTION_CD   VARCHAR2(5 BYTE)             NOT NULL,
  AWD_CD           VARCHAR2(6 BYTE)             NOT NULL,
  ACAD_CAR_CD      VARCHAR2(4 BYTE)             NOT NULL,
  ACAD_CAR_SD      VARCHAR2(10 BYTE)            NOT NULL,
  ACAD_PROG_CD     VARCHAR2(5 BYTE)             NOT NULL,
  ACAD_PROG_SD     VARCHAR2(10 BYTE)            NOT NULL,
  ACAD_PLAN_CD     VARCHAR2(10 BYTE)            NOT NULL,
  ACAD_PLAN_SD     VARCHAR2(10 BYTE)            NOT NULL,
  TERM_CD          VARCHAR2(4 BYTE)             NOT NULL,
  TERM_SD          VARCHAR2(10 BYTE)            NOT NULL,
  DESCRFORMAL      VARCHAR2(50 BYTE)            NOT NULL,
  GRANTOR          VARCHAR2(20 BYTE)            NOT NULL,
  COMMENTS         VARCHAR2(2000 BYTE),
  EFF_START_DT     DATE,
  EFF_END_DT       DATE,
  CURRENT_IND      VARCHAR2(1 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
NOCOMPRESS
/


ALTER TABLE CSMRT_OWNER.PS_R_AWD ADD (
  CONSTRAINT PK_PS_R_AWD
  PRIMARY KEY
  (PERSON_SID, AWD_SID, AWD_RCVD_DT, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
