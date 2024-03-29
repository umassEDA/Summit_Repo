DROP TABLE CSMRT_OWNER.UM_F_FA_STDNT_AID_ADM CASCADE CONSTRAINTS
/

--
-- UM_F_FA_STDNT_AID_ADM  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_FA_STDNT_AID_ADM
(
  INSTITUTION_CD             VARCHAR2(5 BYTE)   NOT NULL,
  PERSON_ID                  VARCHAR2(11 BYTE)  NOT NULL,
  INSTITUTION_SID            INTEGER            NOT NULL,
  PERSON_SID                 INTEGER            NOT NULL,
  ACAD_CAR_SID               NUMBER             NOT NULL,
  STU_CAR_NBR                NUMBER             NOT NULL,
  ADM_APPL_NBR               VARCHAR2(8 BYTE)   NOT NULL,
  APPL_PROG_NBR              NUMBER             NOT NULL,
  ACAD_PROG_SID              NUMBER             NOT NULL,
  ACAD_PLAN_SID              NUMBER             NOT NULL,
  ACAD_SPLAN_SID             NUMBER             NOT NULL,
  EFFDT                      DATE,
  EFFSEQ                     INTEGER,
  SRC_SYS_ID                 VARCHAR2(5 BYTE)   NOT NULL,
  ADMIT_TERM_SID             NUMBER,
  ADMIT_TYPE_SID             NUMBER,
  ACAD_LVL_SID               NUMBER,
  ACAD_LOAD_SID              NUMBER,
  PROG_STAT_SID              NUMBER,
  PROG_ACN_SID               NUMBER,
  PROG_ACN_RSN_SID           NUMBER,
  ACTION_DT                  DATE,
  APPL_DT                    DATE,
  APPL_CNTR_SID              NUMBER,
  APPL_MTHD_SID              NUMBER,
  EXT_DEG_SID                NUMBER,
  EXT_DEG_DT                 DATE,
  EXT_DEG_STAT_ID            VARCHAR2(1 BYTE),
  EXT_DEG_STAT_SD            VARCHAR2(10 BYTE),
  EXT_DEG_STAT_LD            VARCHAR2(30 BYTE),
  FIN_AID_INTEREST           VARCHAR2(1 BYTE),
  HOUSING_INTEREST           VARCHAR2(1 BYTE),
  HOUSING_INTEREST_SD        VARCHAR2(10 BYTE),
  HOUSING_INTEREST_LD        VARCHAR2(30 BYTE),
  LST_SCHL_ATTND_SID         NUMBER,
  LST_SCHL_GRDDT             NUMBER,
  NOTIFICATION_PLAN          VARCHAR2(4 BYTE),
  NOTIFICATION_PLAN_SD       VARCHAR2(10 BYTE),
  NOTIFICATION_PLAN_LD       VARCHAR2(30 BYTE),
  UM_BHE                     VARCHAR2(1 BYTE),
  UM_BHE_SD                  VARCHAR2(10 BYTE),
  UM_BHE_LD                  VARCHAR2(30 BYTE),
  UM_BHE_ENG                 VARCHAR2(1 BYTE),
  UM_BHE_SOCSCI              VARCHAR2(1 BYTE),
  UM_BHE_SCI                 VARCHAR2(1 BYTE),
  UM_BHE_MATH                VARCHAR2(1 BYTE),
  UM_BHE_ELT                 VARCHAR2(1 BYTE),
  UM_BHE_FRLG                VARCHAR2(1 BYTE),
  UM_BHE_CMPLT               VARCHAR2(1 BYTE),
  UM_BHE_EXP_VOCTEC          VARCHAR2(1 BYTE),
  UM_BHE_EXP_ESL             VARCHAR2(1 BYTE),
  UM_BHE_EXP_INTL            VARCHAR2(1 BYTE),
  UM_BHE_PRECOLLEGE          VARCHAR2(1 BYTE),
  UM_BHE_EXP_LD              VARCHAR2(30 BYTE),
  UM_BHE_TRANS_CR            NUMBER,
  UM_BHE_TRANS_GPA           NUMBER,
  UM_CA_FIRST_GEN            VARCHAR2(1 BYTE),
  UM_RA_TA_INTEREST          VARCHAR2(1 BYTE),
  UM_RA_TA_INTEREST_SD       VARCHAR2(10 BYTE),
  UM_RA_TA_INTEREST_LD       VARCHAR2(30 BYTE),
  STU_CAR_NBR_SR             INTEGER,
  UM_TCA_COMPLETE            VARCHAR2(1 BYTE),
  UM_TCA_CREDITS             NUMBER,
  EXT_SUMM_TYPE_ID           VARCHAR2(4 BYTE),
  EXT_GPA                    NUMBER,
  CONVERTED_GPA              NUMBER,
  UM_CUM_CREDIT              NUMBER,
  UM_CUM_GPA                 NUMBER,
  UM_CUM_QP                  NUMBER,
  UM_CUM_CREDIT_AGG          NUMBER,
  UM_CUM_GPA_AGG             NUMBER,
  UM_CUM_QP_AGG              NUMBER,
  UM_GPA_EXCLUDE_FLG         VARCHAR2(1 BYTE),
  UM_EXT_ORG_CR              NUMBER,
  UM_EXT_ORG_QP              NUMBER,
  UM_EXT_ORG_GPA             NUMBER,
  UM_EXT_ORG_CNV_CR          NUMBER,
  UM_EXT_ORG_CNV_GPA         NUMBER,
  UM_EXT_ORG_CNV_QP          NUMBER,
  UM_GPA_OVRD_FLG            VARCHAR2(1 BYTE),
  UM_1_OVRD_HSGPA_FLG        VARCHAR2(1 BYTE),
  UM_CONVERT_GPA             NUMBER,
  SAT_TOTAL_UM_SCORE         NUMBER,
  SAT_TOTAL_1600_CONV_SCORE  NUMBER,
  SAT_CONV_2016_SCORE        NUMBER,
  UM_EXT_OR_MTSC_GPA         NUMBER,
  MS_CONVERT_GPA             NUMBER,
  MAX_DATA_ROW               VARCHAR2(1 BYTE),
  DATA_ORIGIN                VARCHAR2(1 BYTE),
  CREATED_EW_DTTM            DATE,
  LASTUPD_EW_DTTM            DATE,
  ABTS_FLAG                  VARCHAR2(1 BYTE),
  BSMS_FLAG                  VARCHAR2(1 BYTE)
)
COMPRESS BASIC
/
