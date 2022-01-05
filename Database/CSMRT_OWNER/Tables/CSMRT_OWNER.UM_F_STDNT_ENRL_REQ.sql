CREATE TABLE UM_F_STDNT_ENRL_REQ
(
  ENRL_REQUEST_ID        VARCHAR2(10 BYTE),
  ENRL_REQ_DETL_SEQ      INTEGER,
  SRC_SYS_ID             VARCHAR2(5 BYTE),
  INSTITUTION_SID        INTEGER,
  ACAD_CAR_SID           INTEGER,
  TERM_SID               INTEGER,
  PERSON_SID             INTEGER,
  CLASS_SID              INTEGER,
  INSTITUTION_CD         VARCHAR2(5 BYTE),
  ACAD_CAREER            VARCHAR2(4 BYTE),
  TERM_CD                VARCHAR2(4 BYTE),
  PERSON_ID              VARCHAR2(11 BYTE),
  CLASS_NBR              INTEGER,
  ENRL_REQ_ACTION        VARCHAR2(2 BYTE),
  ENRL_REQ_ACTION_LD     VARCHAR2(30 BYTE),
  ENRL_ACTION_REASON     VARCHAR2(4 BYTE),
  ENRL_ACTION_REASON_LD  VARCHAR2(30 BYTE),
  ENRL_ACTION_DT         DATE,
  UNT_TAKEN              NUMBER(5,2),
  UNT_EARNED             NUMBER(5,2),
  CRSE_COUNT             NUMBER(4,2),
  REPEAT_CODE            VARCHAR2(4 BYTE),
  REPEAT_SID             INTEGER,
  CRSE_GRADE_INPUT       VARCHAR2(3 BYTE),
  GRADING_BASIS_ENRL     VARCHAR2(3 BYTE),
  GRADING_BASIS_ENRL_LD  VARCHAR2(50 BYTE),
  CLASS_PRMSN_NBR        INTEGER,
  CLASS_NBR_CHG_TO       INTEGER,
  DROP_CLASS_IF_ENRL     INTEGER,
  CHG_TO_WL_NUM          INTEGER,
  RELATE_CLASS_NBR_1     INTEGER,
  RELATE_CLASS_NBR_2     INTEGER,
  OVRD_CLASS_LIMIT       VARCHAR2(1 BYTE),
  OVRD_GRADING_BASIS     VARCHAR2(1 BYTE),
  OVRD_CLASS_UNITS       VARCHAR2(1 BYTE),
  OVRD_UNIT_LOAD         VARCHAR2(1 BYTE),
  OVRD_CLASS_LINKS       VARCHAR2(1 BYTE),
  OVRD_CLASS_PRMSN       VARCHAR2(1 BYTE),
  OVRD_REQUISITES        VARCHAR2(1 BYTE),
  OVRD_TIME_CNFLCT       VARCHAR2(1 BYTE),
  OVRD_CAREER            VARCHAR2(1 BYTE),
  WAIT_LIST_OKAY         VARCHAR2(1 BYTE),
  OVRD_ENRL_ACTN_DT      VARCHAR2(1 BYTE),
  OVRD_RQMNT_DESIG       VARCHAR2(1 BYTE),
  OVRD_SRVC_INDIC        VARCHAR2(1 BYTE),
  OVRD_APPT              VARCHAR2(1 BYTE),
  INSTRUCTOR_ID          VARCHAR2(11 BYTE),
  ENRL_REQ_DETL_STAT     VARCHAR2(1 BYTE),
  ENRL_REQ_DETL_STAT_LD  VARCHAR2(30 BYTE),
  RQMNT_DESIGNTN         VARCHAR2(4 BYTE),
  RQMNT_DESIGNTN_OPT     VARCHAR2(1 BYTE),
  RQMNT_DESIGNTN_GRD     VARCHAR2(1 BYTE),
  TSCRPT_NOTE_ID         VARCHAR2(4 BYTE),
  TSCRPT_NOTE_EXISTS     VARCHAR2(1 BYTE),
  OPRID                  VARCHAR2(30 BYTE),
  DTTM_STAMP_SEC         DATE,
  START_DT               DATE,
  ACAD_PROG              VARCHAR2(5 BYTE),
  ENRL_REQ_SOURCE        VARCHAR2(2 BYTE),
  ENRL_REQ_SOURCE_LD     VARCHAR2(30 BYTE),
  LOAD_ERROR             VARCHAR2(1 CHAR),
  DATA_ORIGIN            VARCHAR2(1 CHAR),
  CREATED_EW_DTTM        DATE,
  LASTUPD_EW_DTTM        DATE,
  BATCH_SID              NUMBER(10)
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;