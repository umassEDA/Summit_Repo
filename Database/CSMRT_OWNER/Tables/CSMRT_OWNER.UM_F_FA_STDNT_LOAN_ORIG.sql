DROP TABLE CSMRT_OWNER.UM_F_FA_STDNT_LOAN_ORIG CASCADE CONSTRAINTS
/

--
-- UM_F_FA_STDNT_LOAN_ORIG  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_FA_STDNT_LOAN_ORIG
(
  INSTITUTION_CD      VARCHAR2(5 BYTE)          NOT NULL,
  ACAD_CAR_CD         VARCHAR2(4 BYTE)          NOT NULL,
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  PERSON_ID           VARCHAR2(11 BYTE)         NOT NULL,
  LOAN_TYPE           VARCHAR2(4 BYTE)          NOT NULL,
  LN_APPL_SEQ         INTEGER                   NOT NULL,
  ITEM_TYPE           VARCHAR2(12 BYTE)         NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  INSTITUTION_SID     INTEGER                   NOT NULL,
  ACAD_CAR_SID        INTEGER                   NOT NULL,
  PERSON_SID          INTEGER                   NOT NULL,
  ITEM_TYPE_SID       INTEGER                   NOT NULL,
  LOAN_TYPE_SD        VARCHAR2(10 BYTE),
  LOAN_TYPE_LD        VARCHAR2(30 BYTE),
  LN_APPL_ID          VARCHAR2(21 BYTE),
  DISBURSEMENT_PLAN   VARCHAR2(2 BYTE),
  SPLIT_CODE          VARCHAR2(2 BYTE),
  LOAN_INTEREST_ATTR  VARCHAR2(1 BYTE),
  LN_BORRQSTD_DTL     NUMBER(11,2),
  LN_AMT_CERTIFIED    NUMBER(11,2),
  LN_ANTIC_FEE_TOT    NUMBER(11,2),
  LN_ANTIC_REBATE     NUMBER(6,2),
  LN_ANTIC_NET_TOT    NUMBER(11,2),
  LN_AMT_APPROVED     NUMBER(11,2),
  ACCEPT_AMOUNT       NUMBER(11,2),
  OFFER_AMOUNT        NUMBER(11,2),
  LN_FEE_AMT          NUMBER(6,2),
  LN_REBATE_AMT       NUMBER(6,2),
  LN_TRNS_OFFER_AMT   NUMBER(11,2),
  LN_TRNS_ACCEPT_AMT  NUMBER(11,2),
  LN_TRNS_CERT_AMT    NUMBER(11,2),
  LN_TRNS_BQSTD_DTL   NUMBER(11,2),
  LOAN_PROC_STAT      VARCHAR2(1 BYTE),
  LOAN_PROC_STAT_SD   VARCHAR2(10 BYTE),
  LOAN_PROC_STAT_LD   VARCHAR2(30 BYTE),
  LN_ORIG_TRANS       VARCHAR2(1 BYTE),
  LN_ORIG_TRANS_SD    VARCHAR2(10 BYTE),
  LN_ORIG_TRANS_LD    VARCHAR2(30 BYTE),
  BORR_EMPLID         VARCHAR2(11 BYTE),
  NSLDS_LOAN_YEAR     VARCHAR2(1 BYTE),
  NSLDS_LOAN_YEAR_SD  VARCHAR2(10 BYTE),
  NSLDS_LOAN_YEAR_LD  VARCHAR2(30 BYTE),
  DIR_LND_YR          VARCHAR2(2 BYTE),
  ACADEMIC_LEVEL      VARCHAR2(3 BYTE),
  LN_DEST_NBR         INTEGER,
  LN_AMT_BORRQSTD     NUMBER(11,2),
  LN_TOTAL_CERT       NUMBER(11,2),
  LN_CERT_DT          DATE,
  LOAN_CREDIT_CHK     VARCHAR2(1 BYTE),
  LOAN_CREDIT_CHK_SD  VARCHAR2(10 BYTE),
  LOAN_CREDIT_CHK_LD  VARCHAR2(30 BYTE),
  LOAN_CRDT_OVRID     VARCHAR2(1 BYTE),
  LOAN_CRDT_DT        DATE,
  ACADEMIC_LOAD       VARCHAR2(1 BYTE),
  LN_PRGCMPLT_DT      DATE,
  EXP_GRAD_TERM       VARCHAR2(4 BYTE),
  LN_PERIOD_START     DATE,
  LN_PERIOD_END       DATE,
  LN_PERIOD_OVRD      VARCHAR2(1 BYTE),
  LN_UPDT_DMGRPHC     VARCHAR2(1 BYTE),
  LN_REFUND_INDC      VARCHAR2(1 BYTE),
  LN_BORR_DFLT_RFND   VARCHAR2(1 BYTE),
  LN_STDNT_DFLT_RFND  VARCHAR2(1 BYTE),
  SSN                 VARCHAR2(9 BYTE),
  BORR_SSN            VARCHAR2(9 BYTE),
  DRIVERS_LIC_NBR     VARCHAR2(20 BYTE),
  BORR_DRIVER_LIC_ST  VARCHAR2(6 BYTE),
  BIRTHDATE           DATE,
  BORR_BIRTHDATE      DATE,
  LN_BORR_DOB_CHGDT   DATE,
  VISA_WRKPMT_NBR     VARCHAR2(15 BYTE),
  BORR_VISA_WKPT_NBR  VARCHAR2(15 BYTE),
  CITIZENSHIP_STATUS  VARCHAR2(1 BYTE),
  BORR_CTZNSHP_STAT   VARCHAR2(1 BYTE),
  DL_DISC_PRT_IND     VARCHAR2(1 BYTE),
  FED_DEPEND_STAT     VARCHAR2(1 BYTE),
  LN_DEST_PROC_LVL    VARCHAR2(2 BYTE),
  LN_BOOK_STAT        VARCHAR2(1 BYTE),
  LN_BOOK_STAT_SD     VARCHAR2(10 BYTE),
  LN_BOOK_STAT_LD     VARCHAR2(30 BYTE),
  LN_BOOK_DT          DATE,
  DL_ADD_USUB_SW      VARCHAR2(1 BYTE),
  LN_MPN_SEQ          VARCHAR2(3 BYTE),
  PHONE               VARCHAR2(24 BYTE),
  LN_PHONE_OVRD       VARCHAR2(1 BYTE),
  LN_TRNS_PER_ST      DATE,
  LN_TRNS_PER_END     DATE,
  LN_TRNS_DEP_STAT    VARCHAR2(1 BYTE),
  LN_TRNS_HEAL_SW     VARCHAR2(1 BYTE),
  LN_TRNS_USUB_SW     VARCHAR2(1 BYTE),
  LN_TRNS_DIR_YR      VARCHAR2(2 BYTE),
  LN_TRNS_NSLDS_YEAR  VARCHAR2(1 BYTE),
  LN_TRNS_PRGCMPLT    DATE,
  LN_TRNS_BORR_CIT    VARCHAR2(1 BYTE),
  LN_TRNS_BORR_DFLT   VARCHAR2(1 BYTE),
  LN_TRNS_BORR_DOB    DATE,
  LN_TRNS_BORR_SSN    VARCHAR2(9 BYTE),
  LN_TRNS_BORR_VISA   VARCHAR2(15 BYTE),
  LN_TRNS_DRIVER_LIC  VARCHAR2(20 BYTE),
  LN_TRNS_DRIVER_ST   VARCHAR2(6 BYTE),
  LN_TRNS_STU_CIT     VARCHAR2(1 BYTE),
  LN_TRNS_STU_DFLT    VARCHAR2(1 BYTE),
  LN_TRNS_STU_DOB     DATE,
  LN_TRNS_STU_SSN     VARCHAR2(9 BYTE),
  LN_TRNS_STU_VISA    VARCHAR2(15 BYTE),
  LN_TRNS_PRNT_OPTN   VARCHAR2(2 BYTE),
  LN_TRNS_DISC_PRT    VARCHAR2(1 BYTE),
  LN_TRNS_DL_FEE      NUMBER(5,3),
  LN_TRNS_ACAD_ST     DATE,
  LN_TRNS_ACAD_END    DATE,
  LN_TRNS_PHONE       VARCHAR2(24 BYTE),
  DL_ORIG_FEE         NUMBER(5,3),
  ACAD_YEAR_START     DATE,
  ACAD_YEAR_END       DATE,
  LN_ORIG_PNOTE_STAT  VARCHAR2(1 BYTE),
  DL_PNOTE_ID         VARCHAR2(21 BYTE),
  LN_FED_DEP_ST_OVRD  VARCHAR2(1 BYTE),
  LN_ACAD_END_OVRD    VARCHAR2(1 BYTE),
  LN_ACAD_ST_OVRD     VARCHAR2(1 BYTE),
  LN_BORR_CIT_ST_OVR  VARCHAR2(1 BYTE),
  LN_BORR_VISA_OVRD   VARCHAR2(1 BYTE),
  LN_BORR_DOB_OVRD    VARCHAR2(1 BYTE),
  LN_BORR_SSN_OVRD    VARCHAR2(1 BYTE),
  LN_ENDORS_AMT       NUMBER(11,2),
  SFA_COD_MPN_EXPIRE  DATE,
  SFA_PP_CRSEWRK_SW   VARCHAR2(1 BYTE),
  SFA_TRNS_PP_CRS_SW  VARCHAR2(1 BYTE),
  SFA_LN_STU_CIT_OVR  VARCHAR2(1 BYTE),
  SFA_ATB_CD          VARCHAR2(2 BYTE),
  SFA_TRNS_ATB_CD     VARCHAR2(2 BYTE),
  SFA_ATB_COMP_DT     DATE,
  SFA_PROG_LENGTH_MN  NUMBER(6,3),
  SFA_PROG_LENGTH_WK  NUMBER(6,3),
  SFA_PROG_LENGTH_YR  NUMBER(6,3),
  SFA_WK_PROG_ACADYR  NUMBER(6,3),
  SFA_SPEC_PROG_FLG   VARCHAR2(1 BYTE),
  SFA_COD_CRED_LVL    VARCHAR2(2 BYTE),
  SFA_TRNS_PROGLN_MN  NUMBER(6,3),
  SFA_TRNS_PROGLN_WK  NUMBER(6,3),
  SFA_TRNS_PROGLN_YR  NUMBER(6,3),
  SFA_TRNS_WKPRGACYR  NUMBER(6,3),
  SFA_TRNS_SPPRG_FLG  VARCHAR2(1 BYTE),
  SFA_TRNS_COD_CRDLV  VARCHAR2(2 BYTE),
  SFA_PROGLN_MN_OVRD  VARCHAR2(1 BYTE),
  SFA_PROGLN_WK_OVRD  VARCHAR2(1 BYTE),
  SFA_PROGLN_YR_OVRD  VARCHAR2(1 BYTE),
  SFA_WKPRGACYR_OVRD  VARCHAR2(1 BYTE),
  SFA_SPEC_PROG_OVRD  VARCHAR2(1 BYTE),
  SFA_COD_CRDLV_OVRD  VARCHAR2(1 BYTE),
  SFA_DL_CRD_DEC_ORG  VARCHAR2(1 BYTE),
  SFA_DL_APPEAL_STAT  VARCHAR2(1 BYTE),
  SFA_DL_CRD_EXP_DT   DATE,
  SFA_DL_CRDT_ACTNST  VARCHAR2(1 BYTE),
  SFA_DL_RECONS_ELG   VARCHAR2(1 BYTE),
  SFA_DL_PLUS_CNSLCP  VARCHAR2(1 BYTE),
  SFA_DL_PLUS_CNSLDT  DATE,
  SFA_DL_CREDIT_REQ   VARCHAR2(1 BYTE),
  SFA_DL_ENDORS_APPR  VARCHAR2(1 BYTE),
  SFA_DL_CRD_DEC_ST   VARCHAR2(1 BYTE),
  LOAD_ERROR          VARCHAR2(1 BYTE),
  DATA_ORIGIN         VARCHAR2(1 BYTE),
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           INTEGER
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_FA_STDNT_LOAN_ORIG ADD (
  CONSTRAINT PK_UM_F_FA_STDNT_LOAN_ORIG
  PRIMARY KEY
  (INSTITUTION_CD, ACAD_CAR_CD, AID_YEAR, PERSON_ID, LOAN_TYPE, LN_APPL_SEQ, ITEM_TYPE, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
