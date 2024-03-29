DROP TABLE CSMRT_OWNER.UM_F_CLASS_ENRLMT CASCADE CONSTRAINTS
/

--
-- UM_F_CLASS_ENRLMT  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_CLASS_ENRLMT
(
  TERM_SID                NUMBER(10)            NOT NULL,
  PERSON_SID              INTEGER               NOT NULL,
  CLASS_NUM               NUMBER(10)            NOT NULL,
  SRC_SYS_ID              VARCHAR2(5 BYTE)      NOT NULL,
  INSTITUTION_CD          VARCHAR2(5 BYTE)      NOT NULL,
  ACAD_CAR_CD             VARCHAR2(4 BYTE)      NOT NULL,
  TERM_CD                 VARCHAR2(4 BYTE)      NOT NULL,
  SESSION_CD              VARCHAR2(3 BYTE)      NOT NULL,
  CLASS_SECTION_CD        VARCHAR2(4 BYTE)      NOT NULL,
  PERSON_ID               VARCHAR2(11 BYTE)     NOT NULL,
  INSTITUTION_SID         INTEGER               NOT NULL,
  ACAD_CAR_SID            INTEGER               NOT NULL,
  SESSION_SID             INTEGER               NOT NULL,
  CLASS_SID               INTEGER               NOT NULL,
  ENRLMT_STAT_SID         INTEGER               NOT NULL,
  ENRLMT_REAS_SID         INTEGER               NOT NULL,
  ENRL_ACN_LAST_SID       INTEGER               NOT NULL,
  ENRL_ACN_RSN_LAST_SID   INTEGER               NOT NULL,
  GRADE_SID               INTEGER               NOT NULL,
  GRADE_INPUT_SID         INTEGER               NOT NULL,
  MID_TERM_GRADE_SID      INTEGER               NOT NULL,
  REPEAT_SID              NUMBER(10)            NOT NULL,
  ASSOCIATED_CLASS        INTEGER               NOT NULL,
  CLASS_PRMSN_NBR         INTEGER               NOT NULL,
  EARN_CREDIT_FLG         VARCHAR2(1 BYTE)      NOT NULL,
  ENRL_ACTN_PRC_LAST      VARCHAR2(2 BYTE)      NOT NULL,
  ENRL_STATUS_DT          DATE,
  ENRL_ADD_DT             DATE,
  ENRL_DROP_DT            DATE,
  ENRL_REQ_SOURCE         VARCHAR2(2 BYTE)      NOT NULL,
  GRADE_DT                DATE,
  GRADE_CATEGORY          VARCHAR2(4 BYTE)      NOT NULL,
  GRADE_BASIS_CD          VARCHAR2(3 BYTE)      NOT NULL,
  GRADE_BASIS_DT          DATE,
  GRADE_BASIS_OVRD_FLG    VARCHAR2(1 BYTE)      NOT NULL,
  INCLUDE_IN_GPA_FLG      VARCHAR2(1 BYTE)      NOT NULL,
  LAST_UPD_ENREQ_SRC      VARCHAR2(2 BYTE)      NOT NULL,
  MANDATORY_GRD_BAS_FLG   VARCHAR2(1 BYTE)      NOT NULL,
  NOTIFY_STDNT_CHNG       VARCHAR2(2 BYTE)      NOT NULL,
  REPEAT_DT               DATE,
  REPEAT_FLG              VARCHAR2(1 BYTE)      NOT NULL,
  RSRV_CAP_NBR            INTEGER               NOT NULL,
  STDNT_POSITIN           INTEGER               NOT NULL,
  TSCRPT_NOTE_ID          VARCHAR2(4 BYTE)      NOT NULL,
  TSCRPT_NOTE_DESCR       VARCHAR2(30 BYTE),
  TSCRPT_NOTE_EXISTS      VARCHAR2(1 BYTE)      NOT NULL,
  TSCRPT_NOTE254          VARCHAR2(254 BYTE),
  UM_STD_COMPL_CRSE_FLG   VARCHAR2(1 BYTE)      NOT NULL,
  UM_STD_NEVER_ATTND_FLG  VARCHAR2(1 BYTE)      NOT NULL,
  UM_STD_LST_DT_ATTD      DATE,
  UNITS_ATTEMPTED_CD      VARCHAR2(1 BYTE)      NOT NULL,
  VALID_ATTEMPT_FLG       VARCHAR2(1 BYTE)      NOT NULL,
  BILLING_UNIT            NUMBER(5,2)           NOT NULL,
  AUDIT_CNT               NUMBER,
  CE_CREDITS              NUMBER,
  CE_FTE                  NUMBER,
  CRSE_CNT                NUMBER,
  DAY_CREDITS             NUMBER,
  DAY_FTE                 NUMBER,
  DROP_CNT                NUMBER,
  ENROLL_CNT              NUMBER,
  ERN_UNIT                NUMBER(5,2)           NOT NULL,
  GRADE_PTS               NUMBER(9,3)           NOT NULL,
  GRADE_PTS_FA            NUMBER(9,3)           NOT NULL,
  GRADE_PTS_PER_UNIT      NUMBER(9,3)           NOT NULL,
  HEAD_CNT                NUMBER,
  IFTE_CNT                NUMBER,
  PRGRS_UNIT              NUMBER(5,2)           NOT NULL,
  PRGRS_FA_UNIT           NUMBER(5,2)           NOT NULL,
  TAKEN_UNIT              NUMBER(5,2)           NOT NULL,
  WAIT_CNT                NUMBER,
  ONLINE_CNT              NUMBER,
  ENRLMT_MAX_TERM_CD      VARCHAR2(4 BYTE)      NOT NULL,
  LAST_UPD_DT_STMP        DATE,
  LAST_UPD_TM_STMP        DATE,
  LAST_ENRL_DT_STMP       DATE,
  LAST_ENRL_TM_STMP       DATE,
  LAST_DROP_DT_STMP       DATE,
  LAST_DROP_TM_STMP       DATE,
  LOAD_ERROR              VARCHAR2(1 BYTE)      NOT NULL,
  DATA_ORIGIN             VARCHAR2(1 BYTE)      NOT NULL,
  CREATED_EW_DTTM         DATE,
  LASTUPD_EW_DTTM         DATE,
  BATCH_SID               NUMBER(10)            NOT NULL,
  APPROVAL_DATE           DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_CLASS_ENRLMT ADD (
  CONSTRAINT PK_UM_F_CLASS_ENRLMT
  PRIMARY KEY
  (TERM_SID, PERSON_SID, CLASS_NUM, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
