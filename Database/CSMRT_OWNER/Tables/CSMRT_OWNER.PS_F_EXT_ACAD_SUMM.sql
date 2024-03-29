DROP TABLE CSMRT_OWNER.PS_F_EXT_ACAD_SUMM CASCADE CONSTRAINTS
/

--
-- PS_F_EXT_ACAD_SUMM  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_F_EXT_ACAD_SUMM
(
  INSTITUTION_CD          VARCHAR2(5 BYTE)      NOT NULL,
  PERSON_ID               VARCHAR2(11 BYTE)     NOT NULL,
  EXT_ORG_ID              VARCHAR2(11 BYTE)     NOT NULL,
  EXT_ACAD_CAR_ID         VARCHAR2(4 BYTE)      NOT NULL,
  EXT_DATA_NBR            INTEGER               NOT NULL,
  EXT_SUMM_TYPE_ID        VARCHAR2(4 BYTE)      NOT NULL,
  SRC_SYS_ID              VARCHAR2(5 BYTE)      NOT NULL,
  INSTITUTION_SID         INTEGER               NOT NULL,
  PERSON_SID              INTEGER               NOT NULL,
  EXT_ORG_SID             INTEGER               NOT NULL,
  EXT_ACAD_CAR_SID        INTEGER               NOT NULL,
  EXT_SUMM_TYPE_SID       INTEGER               NOT NULL,
  ACAD_RANK_TYPE_SID      INTEGER               NOT NULL,
  ACAD_UNIT_TYPE_SID      INTEGER               NOT NULL,
  EXT_ACAD_LVL_SID        INTEGER               NOT NULL,
  EXT_TERM_SID            INTEGER               NOT NULL,
  EXT_TERM_YEAR_SID       INTEGER               NOT NULL,
  GPA_TYPE_SID            INTEGER               NOT NULL,
  D_EXT_ACAD_LVL_SID      INTEGER               NOT NULL,
  D_EXT_TERM_YEAR_SID     INTEGER               NOT NULL,
  D_EXT_TERM_SID          INTEGER               NOT NULL,
  BEST_SUMM_TYPE_GPA_FLG  VARCHAR2(1 BYTE)      NOT NULL,
  CLASS_RANK              INTEGER               NOT NULL,
  CLASS_SIZE              INTEGER               NOT NULL,
  CLASS_PERCENTILE        INTEGER               NOT NULL,
  FROM_DT                 DATE,
  TO_DT                   DATE,
  LS_DATA_SOURCE          VARCHAR2(3 BYTE)      NOT NULL,
  TRNSCR_FLG              VARCHAR2(1 BYTE)      NOT NULL,
  TRNSCR_TYPE             VARCHAR2(3 BYTE)      NOT NULL,
  TRNSCR_STATUS           VARCHAR2(1 BYTE)      NOT NULL,
  TRNSCR_DT               DATE,
  CONVERTED_GPA           NUMBER,
  EXT_GPA                 NUMBER,
  UNITS_ATTMPTD           NUMBER,
  UNITS_CMPLTD            NUMBER,
  UM_CONVERT_GPA          NUMBER,
  UM_CUM_CREDIT           NUMBER,
  UM_CUM_GPA              NUMBER,
  UM_CUM_QP               NUMBER,
  UM_CUM_CREDIT_AGG       NUMBER,
  UM_CUM_GPA_AGG          NUMBER,
  UM_CUM_QP_AGG           NUMBER,
  UM_EXT_ORG_CR           NUMBER,
  UM_EXT_ORG_QP           NUMBER,
  UM_EXT_ORG_GPA          NUMBER,
  UM_EXT_ORG_CNV_CR       NUMBER,
  UM_EXT_ORG_CNV_GPA      NUMBER,
  UM_EXT_ORG_CNV_QP       NUMBER,
  UM_GPA_EXCLUDE_FLG      VARCHAR2(1 BYTE)      NOT NULL,
  UM_GPA_OVRD_FLG         VARCHAR2(1 BYTE)      NOT NULL,
  UM_1_OVRD_HSGPA_FLG     VARCHAR2(1 BYTE)      NOT NULL,
  UM_EXT_OR_MTSC_GPA      NUMBER,
  MS_CONVERT_GPA          NUMBER,
  MAX_DATA_ROW            VARCHAR2(1 BYTE)      NOT NULL,
  LOAD_ERROR              VARCHAR2(1 BYTE)      NOT NULL,
  DATA_ORIGIN             VARCHAR2(1 BYTE)      NOT NULL,
  CREATED_EW_DTTM         DATE,
  LASTUPD_EW_DTTM         DATE,
  BATCH_SID               INTEGER               NOT NULL
)
COMPRESS BASIC
/
