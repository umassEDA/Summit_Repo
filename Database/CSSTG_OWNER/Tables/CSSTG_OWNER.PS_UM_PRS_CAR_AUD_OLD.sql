DROP TABLE CSSTG_OWNER.PS_UM_PRS_CAR_AUD_OLD CASCADE CONSTRAINTS
/

--
-- PS_UM_PRS_CAR_AUD_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_UM_PRS_CAR_AUD_OLD
(
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  ACAD_CAREER        VARCHAR2(4 BYTE)           NOT NULL,
  INSTITUTION        VARCHAR2(5 BYTE)           NOT NULL,
  ADMIT_TERM         VARCHAR2(4 BYTE)           NOT NULL,
  ADMIT_TYPE         VARCHAR2(3 BYTE)           NOT NULL,
  ADM_RECR_CTR       VARCHAR2(4 BYTE)           NOT NULL,
  LAST_SCH_ATTEND    VARCHAR2(11 BYTE)          NOT NULL,
  GRADUATION_DT      DATE,
  RECRUITING_STATUS  VARCHAR2(4 BYTE)           NOT NULL,
  RECR_STATUS_DT     DATE,
  APPL_ON_FILE       VARCHAR2(1 BYTE)           NOT NULL,
  FIN_AID_INTEREST   VARCHAR2(1 BYTE)           NOT NULL,
  HOUSING_INTEREST   VARCHAR2(1 BYTE)           NOT NULL,
  ACAD_LOAD_APPR     VARCHAR2(1 BYTE)           NOT NULL,
  ADM_REFRL_SRCE     VARCHAR2(4 BYTE)           NOT NULL,
  REFERRAL_SRCE_DT   DATE,
  REGION             VARCHAR2(10 BYTE)          NOT NULL,
  REGION_FROM        VARCHAR2(1 BYTE)           NOT NULL,
  RECRUITER_ID       VARCHAR2(11 BYTE)          NOT NULL,
  ADM_CREATION_DT    DATE,
  ACADEMIC_LEVEL     VARCHAR2(3 BYTE)           NOT NULL,
  CAMPUS             VARCHAR2(5 BYTE)           NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  LOAD_ERROR         VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL
)
COMPRESS BASIC
/
