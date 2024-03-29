DROP TABLE CSSTG_OWNER.PS_T_STDNT_ENRL CASCADE CONSTRAINTS
/

--
-- PS_T_STDNT_ENRL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_STDNT_ENRL
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  STRM                VARCHAR2(4 BYTE)          NOT NULL,
  CLASS_NBR           INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  CRSE_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  SESSION_CODE        VARCHAR2(3 BYTE)          NOT NULL,
  SESSN_ENRL_CNTL     VARCHAR2(3 BYTE)          NOT NULL,
  STDNT_ENRL_STATUS   VARCHAR2(2 BYTE)          NOT NULL,
  ENRL_STATUS_REASON  VARCHAR2(4 BYTE)          NOT NULL,
  ENRL_ACTION_LAST    VARCHAR2(2 BYTE)          NOT NULL,
  ENRL_ACTN_RSN_LAST  VARCHAR2(4 BYTE)          NOT NULL,
  ENRL_ACTN_PRC_LAST  VARCHAR2(2 BYTE)          NOT NULL,
  STATUS_DT           DATE,
  ENRL_ADD_DT         DATE,
  ENRL_DROP_DT        DATE,
  UNT_TAKEN           NUMBER(5,2)               NOT NULL,
  UNT_PRGRSS          NUMBER(5,2)               NOT NULL,
  UNT_PRGRSS_FA       NUMBER(5,2)               NOT NULL,
  UNT_BILLING         NUMBER(5,2)               NOT NULL,
  CRSE_COUNT          NUMBER(4,2)               NOT NULL,
  GRADING_BASIS_ENRL  VARCHAR2(3 BYTE)          NOT NULL,
  GRADING_BASIS_DT    DATE,
  OVRD_GRADING_BASIS  VARCHAR2(1 BYTE)          NOT NULL,
  CRSE_GRADE_OFF      VARCHAR2(3 BYTE)          NOT NULL,
  CRSE_GRADE_INPUT    VARCHAR2(3 BYTE)          NOT NULL,
  GRADE_DT            DATE,
  REPEAT_CODE         VARCHAR2(4 BYTE)          NOT NULL,
  REPEAT_DT           DATE,
  CLASS_PRMSN_NBR     INTEGER                   NOT NULL,
  ASSOCIATED_CLASS    INTEGER                   NOT NULL,
  STDNT_POSITIN       INTEGER                   NOT NULL,
  AUDIT_GRADE_BASIS   VARCHAR2(1 BYTE)          NOT NULL,
  EARN_CREDIT         VARCHAR2(1 BYTE)          NOT NULL,
  INCLUDE_IN_GPA      VARCHAR2(1 BYTE)          NOT NULL,
  UNITS_ATTEMPTED     VARCHAR2(1 BYTE)          NOT NULL,
  GRADE_POINTS        NUMBER(9,3)               NOT NULL,
  GRADE_POINTS_FA     NUMBER(9,3)               NOT NULL,
  GRD_PTS_PER_UNIT    NUMBER(9,3)               NOT NULL,
  MANDATORY_GRD_BAS   VARCHAR2(1 BYTE)          NOT NULL,
  RSRV_CAP_NBR        INTEGER                   NOT NULL,
  RQMNT_DESIGNTN      VARCHAR2(4 BYTE)          NOT NULL,
  RQMNT_DESIGNTN_OPT  VARCHAR2(1 BYTE)          NOT NULL,
  RQMNT_DESIGNTN_GRD  VARCHAR2(1 BYTE)          NOT NULL,
  INSTRUCTOR_ID       VARCHAR2(11 BYTE)         NOT NULL,
  DROP_CLASS_IF_ENRL  INTEGER                   NOT NULL,
  ASSOCIATION_99      VARCHAR2(1 BYTE)          NOT NULL,
  OPRID               VARCHAR2(30 BYTE)         NOT NULL,
  TSCRPT_NOTE_ID      VARCHAR2(4 BYTE)          NOT NULL,
  TSCRPT_NOTE_EXISTS  VARCHAR2(1 BYTE)          NOT NULL,
  NOTIFY_STDNT_CHNG   VARCHAR2(2 BYTE)          NOT NULL,
  REPEAT_CANDIDATE    VARCHAR2(1 BYTE)          NOT NULL,
  VALID_ATTEMPT       VARCHAR2(1 BYTE)          NOT NULL,
  GRADE_CATEGORY      VARCHAR2(4 BYTE)          NOT NULL,
  SEL_GROUP           VARCHAR2(10 BYTE)         NOT NULL,
  DYN_CLASS_NBR       INTEGER                   NOT NULL,
  UNT_EARNED          NUMBER(5,2)               NOT NULL,
  LAST_UPD_DT_STMP    DATE,
  LAST_UPD_TM_STMP    DATE,
  LAST_ENRL_DT_STMP   DATE,
  LAST_ENRL_TM_STMP   DATE,
  LAST_DROP_DT_STMP   DATE,
  LAST_DROP_TM_STMP   DATE,
  ENRL_REQ_SOURCE     VARCHAR2(2 BYTE)          NOT NULL,
  LAST_UPD_ENREQ_SRC  VARCHAR2(2 BYTE)          NOT NULL,
  GRADING_SCHEME_ENR  VARCHAR2(3 BYTE)          NOT NULL,
  RELATE_CLASS_NBR_1  INTEGER                   NOT NULL,
  RELATE_CLASS_NBR_2  INTEGER                   NOT NULL,
  ACAD_PROG           VARCHAR2(5 BYTE)          NOT NULL,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
