DROP TABLE CSSTG_OWNER.PS_STDNT_AID_ATRBT CASCADE CONSTRAINTS
/

--
-- PS_STDNT_AID_ATRBT  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_STDNT_AID_ATRBT
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  TABLE_ID            VARCHAR2(1 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  PROCESSING_STATUS   VARCHAR2(1 BYTE)          NOT NULL,
  VERIFICATON_STATUS  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_REVIEW_STATUS   VARCHAR2(1 BYTE)          NOT NULL,
  SCHOLARSHIP_STATUS  VARCHAR2(1 BYTE)          NOT NULL,
  PACKAGING_METHOD    VARCHAR2(1 BYTE)          NOT NULL,
  PKG_PLAN_ID         VARCHAR2(10 BYTE)         NOT NULL,
  SAT_ACADEMIC_PRG    VARCHAR2(1 BYTE)          NOT NULL,
  DISBURSEMENT_HOLD   VARCHAR2(1 BYTE)          NOT NULL,
  COUNSELOR           VARCHAR2(11 BYTE)         NOT NULL,
  COMMUNITY_SERVICE   VARCHAR2(1 BYTE)          NOT NULL,
  QA_VERF_SELECT      VARCHAR2(1 BYTE)          NOT NULL,
  QA_SELECTED         VARCHAR2(1 BYTE)          NOT NULL,
  AID_APP_STATUS      VARCHAR2(1 BYTE)          NOT NULL,
  VERIF_STATUS_CODE   VARCHAR2(1 BYTE)          NOT NULL,
  PELL_PROCESS_FIELD  VARCHAR2(1 BYTE)          NOT NULL,
  ED_RECORD_STATUS    VARCHAR2(1 BYTE)          NOT NULL,
  ED_LEVEL_SAT        VARCHAR2(1 BYTE)          NOT NULL,
  PELL_EFFDT          DATE,
  PELL_EFFSEQ         NUMBER(10)                NOT NULL,
  PELL_TRANS_NBR      NUMBER(10)                NOT NULL,
  USE_SECONDARY_EFC   VARCHAR2(1 BYTE)          NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  PAR_CREDIT_WORTHY   VARCHAR2(1 BYTE)          NOT NULL,
  TITLEIV_ELIG        VARCHAR2(1 BYTE)          NOT NULL,
  SS_MATCH            VARCHAR2(1 BYTE)          NOT NULL,
  SS_REGISTRATION     VARCHAR2(1 BYTE)          NOT NULL,
  INS_MATCH           VARCHAR2(1 BYTE)          NOT NULL,
  SSN_MATCH           VARCHAR2(1 BYTE)          NOT NULL,
  VA_MATCH            VARCHAR2(1 BYTE)          NOT NULL,
  NSLDS_LOAN_DEFAULT  VARCHAR2(1 BYTE)          NOT NULL,
  SSA_CITIZENSHP_IND  VARCHAR2(1 BYTE)          NOT NULL,
  NSLDS_MATCH         VARCHAR2(1 BYTE)          NOT NULL,
  DL_HEAL_LN_SW       VARCHAR2(1 BYTE)          NOT NULL,
  DRUG_OFFENSE_CONV   VARCHAR2(1 BYTE)          NOT NULL,
  PRISONER_MATCH      VARCHAR2(1 BYTE)          NOT NULL,
  LN_INTERVW_STATUS   VARCHAR2(1 BYTE)          NOT NULL,
  LN_EXIT_INTER_STAT  VARCHAR2(1 BYTE)          NOT NULL,
  SSN_MATCH_OVRD      VARCHAR2(1 BYTE)          NOT NULL,
  SSA_CITIZEN_OVRD    VARCHAR2(1 BYTE)          NOT NULL,
  INS_MATCH_OVRD      VARCHAR2(1 BYTE)          NOT NULL,
  VA_MATCH_OVRD       VARCHAR2(1 BYTE)          NOT NULL,
  SS_MATCH_OVRD       VARCHAR2(1 BYTE)          NOT NULL,
  SS_REGISTER_OVRD    VARCHAR2(1 BYTE)          NOT NULL,
  NSLDS_OVRD          VARCHAR2(1 BYTE)          NOT NULL,
  PRISONER_OVRD       VARCHAR2(1 BYTE)          NOT NULL,
  DRUG_OFFENSE_OVRD   VARCHAR2(1 BYTE)          NOT NULL,
  ISIR_SEC_INS_MATCH  VARCHAR2(1 BYTE)          NOT NULL,
  PKG_LASTUPDDTTM     DATE,
  FA_SS_AWD_SECURITY  VARCHAR2(1 BYTE)          NOT NULL,
  FA_SS_INQ_SECURITY  VARCHAR2(1 BYTE)          NOT NULL,
  FA_SS_FAN_SECURITY  VARCHAR2(1 BYTE)          NOT NULL,
  FATHER_SSN_MATCH    VARCHAR2(1 BYTE)          NOT NULL,
  MOTHER_SSN_MATCH    VARCHAR2(1 BYTE)          NOT NULL,
  PAR_SSN_MATCH_OVRD  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_AGGR_SOURCE     VARCHAR2(1 BYTE)          NOT NULL,
  SFA_AGGR_SRC_USED   VARCHAR2(1 BYTE)          NOT NULL,
  SFA_PKG_DEP_STAT    VARCHAR2(1 BYTE)          NOT NULL,
  SFA_RPKG_PLAN_ID    VARCHAR2(10 BYTE)         NOT NULL,
  SFA_EASS_ACCESS     VARCHAR2(1 BYTE)          NOT NULL,
  SFA_PP_CRSEWRK_SW   VARCHAR2(1 BYTE)          NOT NULL,
  SFA_DOD_MATCH       VARCHAR2(1 BYTE)          NOT NULL,
  SFA_DOD_MATCH_OVRD  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_SPL_CIRCUM_FLG  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_SS_GROUP        VARCHAR2(10 BYTE)         NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/