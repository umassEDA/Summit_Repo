DROP TABLE CSMRT_OWNER.UM_D_PRSPCT_CAR_AGG CASCADE CONSTRAINTS
/

--
-- UM_D_PRSPCT_CAR_AGG  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_PRSPCT_CAR_AGG
(
  PRSPCT_CAR_SID       NUMBER(10)               NOT NULL,
  INSTITUTION_CD       VARCHAR2(5 BYTE)         NOT NULL,
  ACAD_CAR_CD          VARCHAR2(4 BYTE)         NOT NULL,
  ADMIT_TERM           VARCHAR2(4 BYTE)         NOT NULL,
  EMPLID               VARCHAR2(11 BYTE)        NOT NULL,
  SRC_SYS_ID           VARCHAR2(5 BYTE)         NOT NULL,
  ACAD_CAR_SID         NUMBER(10)               NOT NULL,
  ACAD_LOAD_SID        NUMBER(10)               NOT NULL,
  ACAD_LVL_SID         NUMBER(10)               NOT NULL,
  ADM_CREATION_DT      DATE,
  ADM_RECR_CTR         VARCHAR2(4 BYTE)         NOT NULL,
  ADMIT_TERM_SID       NUMBER(10)               NOT NULL,
  ADMIT_TYPE_SID       NUMBER(10)               NOT NULL,
  APPL_ON_FILE         VARCHAR2(1 BYTE)         NOT NULL,
  CAMPUS_SID           NUMBER(10)               NOT NULL,
  FIN_AID_INTEREST     VARCHAR2(1 BYTE)         NOT NULL,
  HOUSING_INTEREST     VARCHAR2(1 BYTE)         NOT NULL,
  HOUSING_INTEREST_SD  VARCHAR2(10 BYTE),
  HOUSING_INTEREST_LD  VARCHAR2(30 BYTE),
  INSTITUTION_SID      NUMBER(10)               NOT NULL,
  LST_SCHL_ATTND_SID   NUMBER(10)               NOT NULL,
  LST_SCHL_GRDDT_SID   NUMBER(10),
  LST_SCHL_GRDDT_DT    DATE,
  PERSON_ATHL_SID      NUMBER(10)               NOT NULL,
  PERSON_SRVC_IND_SID  NUMBER(10)               NOT NULL,
  PERSON_SID           NUMBER(10)               NOT NULL,
  RECRT_CNTR_SID       NUMBER(10)               NOT NULL,
  RECRT_STAT_SID       NUMBER(10)               NOT NULL,
  RECRT_STAT_DT        DATE,
  RECRT_STAT_DT_SID    NUMBER(10),
  RECRTR_SID           NUMBER(10)               NOT NULL,
  REGION_CS_SID        NUMBER(10)               NOT NULL,
  REGION_FROM          VARCHAR2(1 BYTE)         NOT NULL,
  RSDNCY_SID           NUMBER(10)               NOT NULL,
  RFRL_SRC_SID         NUMBER(10)               NOT NULL,
  RFRL_SRC_DT          DATE,
  RFRL_SRC_DT_SID      NUMBER(10),
  CLASS_RANK           NUMBER,
  CLASS_SIZE           NUMBER,
  ACT_COMP_SCORE       NUMBER,
  GMAT_TOTAL_SCORE     NUMBER,
  GRE_QUAN_SCORE       NUMBER,
  GRE_VERB_SCORE       NUMBER,
  GRE_ANLY_SCORE       NUMBER,
  LSAT_COMP_SCORE      NUMBER,
  SAT_MATH_SCORE       NUMBER,
  SAT_VERB_SCORE       NUMBER,
  LOAD_ERROR           VARCHAR2(1 BYTE)         NOT NULL,
  DATA_ORIGIN          VARCHAR2(1 BYTE)         NOT NULL,
  CREATED_EW_DTTM      DATE,
  LASTUPD_EW_DTTM      DATE,
  BATCH_SID            NUMBER(10)               NOT NULL
)
COMPRESS BASIC
/
