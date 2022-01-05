CREATE TABLE UM_F_STDNT_ENRL
(
  TERM_SID                    INTEGER,
  PERSON_SID                  INTEGER,
  CLASS_NUM                   INTEGER,
  SRC_SYS_ID                  VARCHAR2(5 BYTE),
  INSTITUTION_CD              VARCHAR2(5 BYTE),
  ACAD_CAR_CD                 VARCHAR2(4 BYTE),
  TERM_CD                     VARCHAR2(4 BYTE),
  SESSION_CD                  VARCHAR2(3 BYTE),
  PERSON_ID                   VARCHAR2(11 BYTE),
  INSTITUTION_SID             INTEGER,
  ACAD_CAR_SID                INTEGER,
  SESSION_SID                 INTEGER,
  CLASS_SID                   INTEGER,
  ENRLMT_MAX_TERM_SID         INTEGER,
  ENRLMT_MIN_TERM_SID         INTEGER,
  ENRLMT_MIN_PERSON_TERM_SID  INTEGER,
  ENRLMT_PREV_TERM_SID        INTEGER,
  ENRLMT_STAT_SID             INTEGER,
  ENRLMT_REAS_SID             INTEGER,
  ENRL_ACN_LAST_SID           INTEGER,
  ENRL_ACN_RSN_LAST_SID       INTEGER,
  GRADE_SID                   INTEGER,
  GRADE_INPUT_SID             INTEGER,
  MID_TERM_GRADE_SID          INTEGER,
  REPEAT_SID                  INTEGER,
  ASSOCIATED_CLASS            INTEGER,
  CLASS_CD                    VARCHAR2(10 BYTE),
  CLASS_PRMSN_NBR             INTEGER,
  EARN_CREDIT_FLG             VARCHAR2(1 BYTE),
  ENRL_ACTN_PRC_LAST          VARCHAR2(2 BYTE),
  ENRL_ACTN_PRC_LAST_SD       VARCHAR2(10 BYTE),
  ENRL_ACTN_PRC_LAST_LD       VARCHAR2(30 BYTE),
  ENRL_STATUS_DT              DATE,
  ENRL_ADD_DT                 DATE,
  ENRL_DROP_DT                DATE,
  ENRLMT_MAX_TERM_CD          VARCHAR2(4 BYTE),
  ENRLMT_MIN_TERM_CD          VARCHAR2(4 BYTE),
  ENRLMT_MIN_PERSON_TERM_CD   VARCHAR2(4 BYTE),
  ENRLMT_PREV_TERM_CD         VARCHAR2(4 BYTE),
  ENRL_REQ_SOURCE             VARCHAR2(2 BYTE),
  ENRL_REQ_SOURCE_SD          VARCHAR2(10 BYTE),
  ENRL_REQ_SOURCE_LD          VARCHAR2(30 BYTE),
  GRADE_DT                    DATE,
  GRADE_CATEGORY              VARCHAR2(4 BYTE),
  GRADE_BASIS_CD              VARCHAR2(3 BYTE),
  GRADE_BASIS_SD              VARCHAR2(10 BYTE),
  GRADE_BASIS_LD              VARCHAR2(30 BYTE),
  GRADE_BASIS_DT              DATE,
  GRADE_BASIS_OVRD_FLG        VARCHAR2(1 BYTE),
  INCLUDE_IN_GPA_FLG          VARCHAR2(1 BYTE),
  LAST_UPD_ENREQ_SRC          VARCHAR2(2 BYTE),
  LAST_UPD_ENREQ_SRC_SD       VARCHAR2(10 BYTE),
  LAST_UPD_ENREQ_SRC_LD       VARCHAR2(30 BYTE),
  MANDATORY_GRD_BAS_FLG       VARCHAR2(1 BYTE),
  NOTIFY_STDNT_CHNG           VARCHAR2(2 BYTE),
  NOTIFY_STDNT_CHNG_SD        VARCHAR2(10 BYTE),
  NOTIFY_STDNT_CHNG_LD        VARCHAR2(30 BYTE),
  REPEAT_DT                   DATE,
  REPEAT_FLG                  VARCHAR2(1 BYTE),
  RSRV_CAP_NBR                INTEGER,
  STDNT_POSITIN               INTEGER,
  TSCRPT_NOTE_ID              VARCHAR2(4 BYTE),
  TSCRPT_NOTE_DESCR           VARCHAR2(30 BYTE),
  TSCRPT_NOTE_EXISTS          VARCHAR2(1 BYTE),
  TSCRPT_NOTE254              VARCHAR2(254 BYTE),
  UM_STD_COMPL_CRSE_FLG       VARCHAR2(1 BYTE),
  UM_STD_NEVER_ATTND_FLG      VARCHAR2(1 BYTE),
  UM_STD_LST_DT_ATTD          DATE,
  UNITS_ATTEMPTED_CD          VARCHAR2(1 BYTE),
  UNITS_ATTEMPTED_SD          VARCHAR2(10 BYTE),
  UNITS_ATTEMPTED_LD          VARCHAR2(30 BYTE),
  VALID_ATTEMPT_FLG           VARCHAR2(1 BYTE),
  AUDIT_CNT                   NUMBER,
  BILLING_UNIT                NUMBER(5,2),
  CE_CREDITS                  NUMBER,
  CE_FTE                      NUMBER,
  DAY_CREDITS                 NUMBER,
  DAY_FTE                     NUMBER,
  CRSE_CNT                    NUMBER,
  DROP_CNT                    NUMBER,
  ENROLL_CNT                  NUMBER,
  ERN_UNIT                    NUMBER(5,2),
  GRADE_PTS                   NUMBER(9,3),
  GRADE_PTS_FA                NUMBER(9,3),
  GRADE_PTS_PER_UNIT          NUMBER(9,3),
  IFTE_CNT                    NUMBER,
  ONLINE_CNT                  NUMBER,
  ONLINE_CREDITS              NUMBER,
  CE_ONLINE_CREDITS           NUMBER,
  PRGRS_UNIT                  NUMBER(5,2),
  PRGRS_FA_UNIT               NUMBER(5,2),
  TAKEN_UNIT                  NUMBER(5,2),
  WAIT_CNT                    NUMBER,
  LAST_UPD_DT_STMP            DATE,
  LAST_UPD_TM_STMP            DATE,
  LAST_ENRL_DT_STMP           DATE,
  LAST_ENRL_TM_STMP           DATE,
  LAST_DROP_DT_STMP           DATE,
  LAST_DROP_TM_STMP           DATE,
  DATA_ORIGIN                 VARCHAR2(1 BYTE),
  CREATED_EW_DTTM             DATE,
  LASTUPD_EW_DTTM             DATE,
  APPROVAL_DATE               DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;