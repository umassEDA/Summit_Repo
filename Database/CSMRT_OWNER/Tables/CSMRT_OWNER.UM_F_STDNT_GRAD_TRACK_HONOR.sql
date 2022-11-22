DROP TABLE CSMRT_OWNER.UM_F_STDNT_GRAD_TRACK_HONOR CASCADE CONSTRAINTS
/

--
-- UM_F_STDNT_GRAD_TRACK_HONOR  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_STDNT_GRAD_TRACK_HONOR
(
  PERSON_ID        VARCHAR2(11 BYTE)            NOT NULL,
  INSTITUTION_CD   VARCHAR2(5 BYTE)             NOT NULL,
  ACAD_CAR_CD      VARCHAR2(4 BYTE)             NOT NULL,
  STDNT_CAR_NUM    INTEGER                      NOT NULL,
  ACAD_PROG_CD     VARCHAR2(5 BYTE)             NOT NULL,
  EXP_GRAD_TERM    VARCHAR2(4 BYTE)             NOT NULL,
  DEG_CD           VARCHAR2(8 BYTE)             NOT NULL,
  SEQNUM           INTEGER                      NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  HONORS_CODE      VARCHAR2(3 BYTE)             NOT NULL,
  DESCR            VARCHAR2(30 BYTE),
  DATA_ORIGIN      VARCHAR2(1 BYTE),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_STDNT_GRAD_TRACK_HONOR ADD (
  CONSTRAINT PK_UM_F_STDNT_GRAD_TRACK_HONOR
  PRIMARY KEY
  (PERSON_ID, INSTITUTION_CD, ACAD_CAR_CD, STDNT_CAR_NUM, ACAD_PROG_CD, EXP_GRAD_TERM, DEG_CD, SEQNUM, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
