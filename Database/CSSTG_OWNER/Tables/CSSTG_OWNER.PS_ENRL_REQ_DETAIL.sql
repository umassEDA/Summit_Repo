DROP TABLE CSSTG_OWNER.PS_ENRL_REQ_DETAIL CASCADE CONSTRAINTS
/

--
-- PS_ENRL_REQ_DETAIL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ENRL_REQ_DETAIL
(
  ENRL_REQUEST_ID     VARCHAR2(10 BYTE)         NOT NULL,
  ENRL_REQ_DETL_SEQ   INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  STRM                VARCHAR2(4 BYTE)          NOT NULL,
  CLASS_NBR           INTEGER                   NOT NULL,
  ENRL_REQ_ACTION     VARCHAR2(2 BYTE)          NOT NULL,
  ENRL_ACTION_REASON  VARCHAR2(4 BYTE)          NOT NULL,
  ENRL_ACTION_DT      DATE,
  UNT_TAKEN           NUMBER(5,2)               NOT NULL,
  UNT_EARNED          NUMBER(5,2)               NOT NULL,
  CRSE_COUNT          NUMBER(4,2)               NOT NULL,
  REPEAT_CODE         VARCHAR2(4 BYTE)          NOT NULL,
  CRSE_GRADE_INPUT    VARCHAR2(3 BYTE)          NOT NULL,
  GRADING_BASIS_ENRL  VARCHAR2(3 BYTE)          NOT NULL,
  CLASS_PRMSN_NBR     INTEGER                   NOT NULL,
  CLASS_NBR_CHG_TO    INTEGER                   NOT NULL,
  DROP_CLASS_IF_ENRL  INTEGER                   NOT NULL,
  CHG_TO_WL_NUM       INTEGER                   NOT NULL,
  RELATE_CLASS_NBR_1  INTEGER                   NOT NULL,
  RELATE_CLASS_NBR_2  INTEGER                   NOT NULL,
  OVRD_CLASS_LIMIT    VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_GRADING_BASIS  VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_CLASS_UNITS    VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_UNIT_LOAD      VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_CLASS_LINKS    VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_CLASS_PRMSN    VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_REQUISITES     VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_TIME_CNFLCT    VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_CAREER         VARCHAR2(1 BYTE)          NOT NULL,
  WAIT_LIST_OKAY      VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_ENRL_ACTN_DT   VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_RQMNT_DESIG    VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_SRVC_INDIC     VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_APPT           VARCHAR2(1 BYTE)          NOT NULL,
  INSTRUCTOR_ID       VARCHAR2(11 BYTE)         NOT NULL,
  ENRL_REQ_DETL_STAT  VARCHAR2(4 BYTE)          NOT NULL,
  RQMNT_DESIGNTN      VARCHAR2(4 BYTE)          NOT NULL,
  RQMNT_DESIGNTN_OPT  VARCHAR2(1 BYTE)          NOT NULL,
  RQMNT_DESIGNTN_GRD  VARCHAR2(1 BYTE)          NOT NULL,
  TSCRPT_NOTE_ID      VARCHAR2(4 BYTE)          NOT NULL,
  TSCRPT_NOTE_EXISTS  VARCHAR2(1 BYTE)          NOT NULL,
  OPRID               VARCHAR2(30 BYTE)         NOT NULL,
  DTTM_STAMP_SEC      DATE,
  START_DT            DATE,
  ACAD_PROG           VARCHAR2(5 BYTE)          NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/