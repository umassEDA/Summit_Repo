DROP TABLE CSSTG_OWNER.UM_AF_AMH_STUDENT_ENROLL_S2 CASCADE CONSTRAINTS
/

--
-- UM_AF_AMH_STUDENT_ENROLL_S2  (Table) 
--
CREATE TABLE CSSTG_OWNER.UM_AF_AMH_STUDENT_ENROLL_S2
(
  INSTITUTION_CD         VARCHAR2(5 BYTE)       NOT NULL,
  INSTITUTION_LD         VARCHAR2(50 BYTE),
  TERM_CD                VARCHAR2(4 BYTE)       NOT NULL,
  TERM_LD                VARCHAR2(50 BYTE),
  ACAD_YR                VARCHAR2(4 BYTE),
  AID_YEAR               VARCHAR2(4 BYTE),
  PERSON_ID              VARCHAR2(11 BYTE)      NOT NULL,
  ACAD_CAR_CD            VARCHAR2(5 BYTE)       NOT NULL,
  ACAD_CAR_LD            VARCHAR2(50 BYTE),
  CE_ONLY_FLG            VARCHAR2(1 BYTE),
  ACAD_ORG_CD            VARCHAR2(5 BYTE),
  ACAD_ORG_LD            VARCHAR2(50 BYTE),
  ACAD_LEVEL_BOT         VARCHAR2(3 BYTE),
  ACAD_PROG_CD           VARCHAR2(5 BYTE),
  ACAD_PROG_LD           VARCHAR2(50 BYTE),
  PROG_CIP_CD            VARCHAR2(13 BYTE),
  PROG_CIP_LD            VARCHAR2(50 BYTE),
  ACAD_PLAN_CD           VARCHAR2(10 BYTE),
  ACAD_PLAN_LD           VARCHAR2(50 BYTE),
  PLAN_CIP_CD            VARCHAR2(13 BYTE),
  PLAN_CIP_LD            VARCHAR2(50 BYTE),
  NEW_CONT_IND           VARCHAR2(10 BYTE),
  RSDNCY_ID              VARCHAR2(5 BYTE),
  RSDNCY_LD              VARCHAR2(50 BYTE),
  IS_RSDNCY_FLG          VARCHAR2(1 BYTE),
  ONLINE_ONLY_FLG        VARCHAR2(1 BYTE),
  ONLINE_HYBRID_FLG      VARCHAR2(1 BYTE),
  TOT_FTE                NUMBER,
  ONLINE_FTE             NUMBER,
  TOT_CREDITS            NUMBER,
  ONLINE_CREDITS         NUMBER,
  NON_ONLINE_CREDITS     NUMBER,
  CE_CREDITS             NUMBER,
  NON_CE_CREDITS         NUMBER,
  ENROLL_CNT             NUMBER,
  ONLINE_CNT             NUMBER,
  CE_CNT                 NUMBER,
  BIRTHDATE              DATE,
  SEX                    VARCHAR2(1 BYTE),
  ETHNIC_GRP_CD          VARCHAR2(10 BYTE),
  CITIZENSHIP_STATUS     VARCHAR2(1 BYTE),
  CITIZENSHIP_STATUS_LD  VARCHAR2(50 BYTE),
  UM_CITIZENSHIP         VARCHAR2(3 BYTE),
  UM_CITIZENSHIP_LD      VARCHAR2(50 BYTE),
  MILITARY_STATUS        VARCHAR2(1 BYTE),
  MILITARY_STATUS_LD     VARCHAR2(50 BYTE),
  UM_PRIMARY_STATE       VARCHAR2(20 BYTE),
  UM_PRIMARY_POSTAL      VARCHAR2(12 BYTE),
  CREATED_EW_DTTM        DATE                   DEFAULT SYSDATE
)
COMPRESS BASIC
/


ALTER TABLE CSSTG_OWNER.UM_AF_AMH_STUDENT_ENROLL_S2 ADD (
  CONSTRAINT PK_UM_AF_AMH_STUDENT_ENROLL_S2
  PRIMARY KEY
  (INSTITUTION_CD, TERM_CD, PERSON_ID, ACAD_CAR_CD)
  RELY
  ENABLE VALIDATE)
/