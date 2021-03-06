CREATE TABLE UM_M_AF_STDNT_ADM_AMH
(
  INSTITUTION_CD     VARCHAR2(5 BYTE),
  ACAD_CAR_CD        VARCHAR2(5 BYTE),
  ACAD_PROG_CD       VARCHAR2(8 BYTE),
  ACAD_PLAN_CD       VARCHAR2(10 BYTE),
  ADMIT_TERM_CD      VARCHAR2(4 BYTE),
  PERSON_ID          VARCHAR2(11 BYTE),
  ADM_APPL_NBR       VARCHAR2(8 BYTE),
  SLATE_ID           VARCHAR2(100 BYTE),
  EXT_ADM_APPL_NBR   VARCHAR2(30 BYTE),
  SRC_SYS_ID         VARCHAR2(5 BYTE),
  INSTITUTION_LD     VARCHAR2(50 BYTE),
  ACAD_CAR_LD        VARCHAR2(50 BYTE),
  ACAD_PROG_LD       VARCHAR2(50 BYTE),
  ACAD_PLAN_LD       VARCHAR2(50 BYTE),
  ADMIT_TERM_LD      VARCHAR2(50 BYTE),
  REPORTING_TERM_CD  VARCHAR2(4 BYTE),
  REPORTING_TERM_LD  VARCHAR2(50 BYTE),
  ACAD_YR            VARCHAR2(4 BYTE),
  FISCAL_YR          VARCHAR2(4 BYTE),
  ACAD_ORG_CD        VARCHAR2(5 BYTE),
  ACAD_ORG_LD        VARCHAR2(50 BYTE),
  ADMIT_TYPE_ID      VARCHAR2(5 BYTE),
  ADMIT_TYPE_LD      VARCHAR2(50 BYTE),
  ADMIT_TYPE_GRP     VARCHAR2(50 BYTE),
  APPL_CNTR_ID       VARCHAR2(8 BYTE),
  CE_APPL_FLG        VARCHAR2(1 BYTE),
  EDU_LVL_CD         VARCHAR2(10 BYTE),
  EDU_LVL_LD         VARCHAR2(50 BYTE),
  IS_RSDNCY_FLG      VARCHAR2(1 BYTE),
  PLAN_CIP_CD        VARCHAR2(13 BYTE),
  PLAN_CIP_LD        VARCHAR2(50 BYTE),
  RSDNCY_ID          VARCHAR2(5 BYTE),
  RSDNCY_LD          VARCHAR2(50 BYTE),
  APPL_CNT           NUMBER,
  ADMIT_CNT          NUMBER,
  DENY_CNT           NUMBER,
  DEPOSIT_CNT        NUMBER,
  ENROLL_CNT         NUMBER,
  ENROLL_SUBSEQ_CNT  NUMBER,
  UNDUP_CNT          NUMBER,
  CREATED_EW_DTTM    DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
