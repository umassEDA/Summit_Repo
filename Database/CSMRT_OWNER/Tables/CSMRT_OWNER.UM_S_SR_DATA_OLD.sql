CREATE TABLE UM_S_SR_DATA_OLD
(
  RUN_DT                DATE,
  INSTITUTION_CD        VARCHAR2(5 BYTE),
  ACAD_CAR_CD           VARCHAR2(4 BYTE),
  TERM_CD               VARCHAR2(4 BYTE),
  PERSON_ID             VARCHAR2(11 BYTE),
  STDNT_CAR_NUM         INTEGER,
  ACAD_PROG_CD          VARCHAR2(5 BYTE),
  ACAD_PLAN_CD          VARCHAR2(10 BYTE),
  ACAD_SPLAN_CD         VARCHAR2(10 BYTE),
  SRC_SYS_ID            VARCHAR2(5 BYTE),
  ONLINE_CREDITS        NUMBER,
  TOT_CREDITS           NUMBER,
  DAY_CREDITS           NUMBER,
  CE_CREDITS            NUMBER,
  DAY_ONLY_FLG          VARCHAR2(1 BYTE),
  ONLINE_ONLY_FLG       VARCHAR2(1 BYTE),
  ENROLL_FLG            VARCHAR2(1 BYTE),
  CE_ONLY_FLG           VARCHAR2(1 BYTE),
  AUDIT_ONLY_FLG        VARCHAR2(1 BYTE),
  UNDUP_STDNT_CNT       NUMBER,
  UGRD_SECOND_DEGR_FLG  VARCHAR2(1 BYTE),
  STACK_READMIT_FLG     VARCHAR2(1 BYTE),
  STACK_BEGIN_FLG       VARCHAR2(1 BYTE),
  DEGREE_SEEKING_FLG    VARCHAR2(1 BYTE),
  STACK_CONTINUE_FLG    VARCHAR2(1 BYTE),
  CERTIFICATE_ONLY_FLG  VARCHAR2(1 BYTE),
  STDNT_ATTR_VAL_LD     VARCHAR2(30 BYTE),
  STDNT_ATTR_VALUE      VARCHAR2(10 BYTE),
  ACAD_GRP_CD           VARCHAR2(5 BYTE),
  EDU_LVL_CD            VARCHAR2(2 BYTE),
  ACAD_PLAN_TYPE_CD     VARCHAR2(3 BYTE),
  PROG_STAT_CD          VARCHAR2(4 BYTE),
  ETHNIC_GRP_FED_CD     VARCHAR2(8 BYTE),
  GENDER_CD             VARCHAR2(1 BYTE),
  ETHNIC_GRP_ST_CD      VARCHAR2(8 BYTE),
  RSDNCY_ID             VARCHAR2(5 BYTE),
  ACAD_LVL_CD           VARCHAR2(4 BYTE),
  COUNTRY               VARCHAR2(3 BYTE),
  CITIZENSHIP_STATUS    VARCHAR2(1 BYTE),
  PROG_ACN_CD           VARCHAR2(4 BYTE),
  PROG_ACN_RSN_CD       VARCHAR2(4 BYTE)
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
