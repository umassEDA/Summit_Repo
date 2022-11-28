DROP TABLE CSSTG_OWNER.PS_T_GRADE_ROSTER CASCADE CONSTRAINTS
/

--
-- PS_T_GRADE_ROSTER  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_GRADE_ROSTER
(
  STRM                VARCHAR2(4 BYTE)          NOT NULL,
  CLASS_NBR           INTEGER                   NOT NULL,
  GRD_RSTR_TYPE_SEQ   INTEGER                   NOT NULL,
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  BLIND_GRADING_ID    INTEGER                   NOT NULL,
  LAST_NAME_SRCH      VARCHAR2(30 BYTE)         NOT NULL,
  FIRST_NAME_SRCH     VARCHAR2(30 BYTE)         NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  CRSE_GRADE_INPUT    VARCHAR2(3 BYTE)          NOT NULL,
  RQMNT_DESIGNTN_GRD  VARCHAR2(1 BYTE)          NOT NULL,
  TSCRPT_NOTE_ID      VARCHAR2(4 BYTE)          NOT NULL,
  TSCRPT_NOTE_EXISTS  VARCHAR2(1 BYTE)          NOT NULL,
  GRADE_ROSTER_STAT   VARCHAR2(1 BYTE)          NOT NULL,
  INSTRUCTOR_ID       VARCHAR2(11 BYTE)         NOT NULL,
  GRADING_SCHEME      VARCHAR2(3 BYTE)          NOT NULL,
  GRADING_BASIS_ENRL  VARCHAR2(3 BYTE)          NOT NULL,
  DYN_CLASS_NBR       INTEGER                   NOT NULL,
  BATCH_SID           NUMBER(10)                NOT NULL
)
NOCOMPRESS
/
