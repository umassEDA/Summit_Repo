DROP TABLE CSSTG_OWNER.PS_ISIR_00_1_EC CASCADE CONSTRAINTS
/

--
-- PS_ISIR_00_1_EC  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ISIR_00_1_EC
(
  ECTRANSID           VARCHAR2(15 BYTE)         NOT NULL,
  ECQUEUEINSTANCE     INTEGER                   NOT NULL,
  ECTRANSINOUTSW      VARCHAR2(1 BYTE)          NOT NULL,
  ISIR_SEQ_NO         INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  ISIR_LOAD_STATUS    VARCHAR2(1 BYTE)          NOT NULL,
  ISIR_LOAD_ACTION    VARCHAR2(1 BYTE)          NOT NULL,
  ADMIT_LVL           VARCHAR2(1 BYTE)          NOT NULL,
  ORIG_SSN            VARCHAR2(9 BYTE)          NOT NULL,
  NAME_CD             VARCHAR2(2 BYTE)          NOT NULL,
  IWD_TRANS_NBR       VARCHAR2(2 BYTE)          NOT NULL,
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  CPS_SCHOOL_CODE     VARCHAR2(6 BYTE)          NOT NULL,
  IWD_BATCH_YR        VARCHAR2(1 BYTE)          NOT NULL,
  LAST_NAME_SSN_CHNG  VARCHAR2(1 BYTE)          NOT NULL,
  SSN                 VARCHAR2(9 BYTE)          NOT NULL,
  IWD_STD_LAST_NAME   VARCHAR2(16 BYTE)         NOT NULL,
  IWD_STD_FIRST_NM02  VARCHAR2(12 BYTE)         NOT NULL,
  IWD_STU_MI          VARCHAR2(1 BYTE)          NOT NULL,
  IWD_PERM_ADDR02     VARCHAR2(35 BYTE)         NOT NULL,
  IWD_CITY            VARCHAR2(16 BYTE)         NOT NULL,
  IWD_STATE           VARCHAR2(2 BYTE)          NOT NULL,
  IWD_ZIP             VARCHAR2(5 BYTE)          NOT NULL,
  BIRTHDATE           DATE,
  IWD_PERM_PHONE      VARCHAR2(10 BYTE)         NOT NULL,
  IWD_HAVE_DL         VARCHAR2(1 BYTE)          NOT NULL,
  DRIVERS_LICENSE_NO  VARCHAR2(20 BYTE)         NOT NULL,
  IWD_DL_STATE        VARCHAR2(2 BYTE)          NOT NULL,
  CITIZENSHIP_STATUS  VARCHAR2(1 BYTE)          NOT NULL,
  IWD_STU_ALIEN_REG   VARCHAR2(9 BYTE)          NOT NULL,
  MARITAL_STAT        VARCHAR2(1 BYTE)          NOT NULL,
  IWD_MAR_STAT_DT     VARCHAR2(6 BYTE)          NOT NULL,
  ENROLL_CURNT_SUM    VARCHAR2(1 BYTE)          NOT NULL,
  ENROLL_FALL         VARCHAR2(1 BYTE)          NOT NULL,
  ENROLL_WINTER       VARCHAR2(1 BYTE)          NOT NULL,
  ENROLL_SPRING       VARCHAR2(1 BYTE)          NOT NULL,
  ENROLL_NEXT_SUM     VARCHAR2(1 BYTE)          NOT NULL,
  FATHER_GRADE_LVL    VARCHAR2(1 BYTE)          NOT NULL,
  MOTHER_GRADE_LVL    VARCHAR2(1 BYTE)          NOT NULL,
  IWD_STATE_RES       VARCHAR2(2 BYTE)          NOT NULL,
  IWD_RES_PRIOR_94    VARCHAR2(1 BYTE)          NOT NULL,
  IWD_LEGAL_RES_DT    VARCHAR2(6 BYTE)          NOT NULL,
  IWD_MALE            VARCHAR2(1 BYTE)          NOT NULL,
  SEL_SERV_REGISTER   VARCHAR2(1 BYTE)          NOT NULL,
  DEGREE_CERTIF       VARCHAR2(1 BYTE)          NOT NULL,
  IWD_GRADE_LVL       VARCHAR2(1 BYTE)          NOT NULL,
  HS_GED_RCVD         VARCHAR2(1 BYTE)          NOT NULL,
  FIRST_BACH_DEGREE   VARCHAR2(1 BYTE)          NOT NULL,
  INTERESTED_IN_SL    VARCHAR2(1 BYTE)          NOT NULL,
  INTERESTED_IN_WS    VARCHAR2(1 BYTE)          NOT NULL,
  NUM_MONTH_VET_BEN   VARCHAR2(2 BYTE)          NOT NULL,
  IWD_MTHLY_VET_BEN   VARCHAR2(4 BYTE)          NOT NULL,
  TAX_FORM_STU        VARCHAR2(1 BYTE)          NOT NULL,
  TAX_FORM_FILED      VARCHAR2(1 BYTE)          NOT NULL,
  IWD_ELIG_1040A_EZ   VARCHAR2(1 BYTE)          NOT NULL,
  IWD_STU_AGI         VARCHAR2(7 BYTE)          NOT NULL,
  IWD_STU_TAX_PAID    VARCHAR2(10 BYTE)         NOT NULL,
  IWD_STU_NBR_EXEMP   VARCHAR2(2 BYTE)          NOT NULL,
  IWD_STU_EIC         VARCHAR2(10 BYTE)         NOT NULL,
  IWD_STU_WORK_INC    VARCHAR2(10 BYTE)         NOT NULL,
  IWD_SPS_WORK_INC    VARCHAR2(10 BYTE)         NOT NULL,
  IWD_STU_WK_A        VARCHAR2(5 BYTE)          NOT NULL,
  IWD_STU_WK_B        VARCHAR2(8 BYTE)          NOT NULL,
  IWD_STU_CASH        VARCHAR2(10 BYTE)         NOT NULL,
  IWD_STU_INVEST      VARCHAR2(10 BYTE)         NOT NULL,
  IWD_STU_BUS_WORTH   VARCHAR2(10 BYTE)         NOT NULL,
  IWD_STU_FARM_WORTH  VARCHAR2(6 BYTE)          NOT NULL,
  IWD_BORN_PRIOR_76   VARCHAR2(1 BYTE)          NOT NULL,
  GRADUATE_STUDENT    VARCHAR2(1 BYTE)          NOT NULL,
  MARRIED             VARCHAR2(1 BYTE)          NOT NULL,
  ORPHAN              VARCHAR2(1 BYTE)          NOT NULL,
  VETERAN             VARCHAR2(1 BYTE)          NOT NULL,
  DEPENDENTS          VARCHAR2(1 BYTE)          NOT NULL,
  IWD_STU_FAM_MEM     VARCHAR2(2 BYTE)          NOT NULL,
  IWD_STU_MEM_COLL    VARCHAR2(1 BYTE)          NOT NULL,
  TAX_FORM_PAR        VARCHAR2(1 BYTE)          NOT NULL,
  TAX_FORM_FILED_PAR  VARCHAR2(1 BYTE)          NOT NULL,
  IWD_ELIG_1040A_PAR  VARCHAR2(1 BYTE)          NOT NULL,
  IWD_PAR_AGI         VARCHAR2(7 BYTE)          NOT NULL,
  IWD_PAR_TAX_PAID    VARCHAR2(10 BYTE)         NOT NULL,
  IWD_PAR_NBR_EXEMP   VARCHAR2(2 BYTE)          NOT NULL,
  IWD_PAR_EIC         VARCHAR2(10 BYTE)         NOT NULL,
  IWD_FATH_WORK_INC   VARCHAR2(7 BYTE)          NOT NULL,
  IWD_MOM_WORK_INC    VARCHAR2(7 BYTE)          NOT NULL,
  IWD_PAR_WK_A        VARCHAR2(5 BYTE)          NOT NULL,
  IWD_PAR_WK_B        VARCHAR2(8 BYTE)          NOT NULL,
  IWD_PAR_CASH        VARCHAR2(7 BYTE)          NOT NULL,
  IWD_PAR_INVEST      VARCHAR2(7 BYTE)          NOT NULL,
  IWD_PAR_BUS_WORTH   VARCHAR2(7 BYTE)          NOT NULL,
  IWD_PAR_FARM_WORTH  VARCHAR2(6 BYTE)          NOT NULL,
  MARITAL_STAT_PAR    VARCHAR2(1 BYTE)          NOT NULL,
  IWD_PAR_FAM_MEM     VARCHAR2(2 BYTE)          NOT NULL,
  IWD_PAR_MEM_COLL    VARCHAR2(1 BYTE)          NOT NULL,
  IWD_PAR_STATE_RES   VARCHAR2(2 BYTE)          NOT NULL,
  IWD_PAR_RES_PRI_94  VARCHAR2(1 BYTE)          NOT NULL,
  IWD_PAR_RES_DT      VARCHAR2(6 BYTE)          NOT NULL,
  AGE_OLDER_PARENT    VARCHAR2(2 BYTE)          NOT NULL,
  SCHOOL_CHOICE_1     VARCHAR2(6 BYTE)          NOT NULL,
  HOUSING_CODE_1      VARCHAR2(1 BYTE)          NOT NULL,
  SCHOOL_CHOICE_2     VARCHAR2(6 BYTE)          NOT NULL,
  HOUSING_CODE_2      VARCHAR2(1 BYTE)          NOT NULL,
  SCHOOL_CHOICE_3     VARCHAR2(6 BYTE)          NOT NULL,
  HOUSING_CODE_3      VARCHAR2(1 BYTE)          NOT NULL,
  SCHOOL_CHOICE_4     VARCHAR2(6 BYTE)          NOT NULL,
  HOUSING_CODE_4      VARCHAR2(1 BYTE)          NOT NULL,
  SCHOOL_CHOICE_5     VARCHAR2(6 BYTE)          NOT NULL,
  HOUSING_CODE_5      VARCHAR2(1 BYTE)          NOT NULL,
  SCHOOL_CHOICE_6     VARCHAR2(6 BYTE)          NOT NULL,
  HOUSING_CODE_6      VARCHAR2(1 BYTE)          NOT NULL,
  DT_APP_COMPLETED    DATE,
  IWD_APP_SIGNED_BY   VARCHAR2(1 BYTE)          NOT NULL,
  IWD_PREP_SSN        VARCHAR2(9 BYTE)          NOT NULL,
  IWD_PREP_EIN        VARCHAR2(9 BYTE)          NOT NULL,
  IWD_PREP_SIGNATURE  VARCHAR2(1 BYTE)          NOT NULL,
  DEPENDENCY_OVERIDE  VARCHAR2(1 BYTE)          NOT NULL,
  FAA_INSTITUT_NUM    VARCHAR2(6 BYTE)          NOT NULL,
  FAA_SIGNATURE       VARCHAR2(1 BYTE)          NOT NULL,
  ADJ_EFC_CALC_REQ    VARCHAR2(1 BYTE)          NOT NULL,
  IWD_DRN             VARCHAR2(4 BYTE)          NOT NULL,
  TRANS_RECEIPT_DT    DATE,
  IWD_SERIAL_NO       VARCHAR2(5 BYTE)          NOT NULL,
  BATCH_NUMBER        VARCHAR2(23 BYTE)         NOT NULL,
  PROCESS_INSTANCE    NUMBER(10)                NOT NULL,
  SUSPEND_REASON      VARCHAR2(1 BYTE)          NOT NULL,
  DISCARD_REASON      VARCHAR2(1 BYTE)          NOT NULL,
  ERROR_CODE          VARCHAR2(1 BYTE)          NOT NULL,
  MAX_MATCH_LEVEL     INTEGER                   NOT NULL,
  ID_OVERRIDE         VARCHAR2(1 BYTE)          NOT NULL,
  PROCESS_DT          DATE,
  ALT_EFFDT           DATE,
  IWD_RES_PRIOR       VARCHAR2(1 BYTE)          NOT NULL,
  DRUG_OFFENSE_CONV   VARCHAR2(1 BYTE)          NOT NULL,
  IWD_BORN_PRIOR      VARCHAR2(1 BYTE)          NOT NULL,
  FATHER_SSN          VARCHAR2(9 BYTE)          NOT NULL,
  FATHER_LAST_NAME    VARCHAR2(16 BYTE)         NOT NULL,
  MOTHER_SSN          VARCHAR2(9 BYTE)          NOT NULL,
  MOTHER_LAST_NAME    VARCHAR2(16 BYTE)         NOT NULL,
  IWD_PAR_RES_PRI     VARCHAR2(1 BYTE)          NOT NULL,
  IWD_INPUT_REC_TYPE  VARCHAR2(1 BYTE)          NOT NULL,
  IWD_STU_WK_C        VARCHAR2(8 BYTE)          NOT NULL,
  CHILDREN            VARCHAR2(1 BYTE)          NOT NULL,
  IWD_PAR_MAR_ST_DT   VARCHAR2(6 BYTE)          NOT NULL,
  EFC_STATUS_MSG      VARCHAR2(1 BYTE)          NOT NULL,
  FATHER_1ST_NM_INIT  VARCHAR2(1 BYTE)          NOT NULL,
  FATHER_DOB          DATE,
  MOTHER_1ST_NM_INIT  VARCHAR2(1 BYTE)          NOT NULL,
  MOTHER_DOB          DATE,
  ISIR_STU_ENRL_STAT  VARCHAR2(1 BYTE)          NOT NULL,
  IWD_PAR_EMAIL       VARCHAR2(50 BYTE)         NOT NULL,
  SFA_ACTIVE_DUTY     VARCHAR2(1 BYTE)          NOT NULL,
  SFA_SSI_INCOME      VARCHAR2(1 BYTE)          NOT NULL,
  SFA_FOOD_STAMPS     VARCHAR2(1 BYTE)          NOT NULL,
  SFA_SCHL_LUNCH_PRG  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_TANF_BENEFITS   VARCHAR2(1 BYTE)          NOT NULL,
  SFA_WIC_BENEFITS    VARCHAR2(1 BYTE)          NOT NULL,
  SFA_PAR_SSI_INCOME  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_PAR_FOOD_STAMP  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_PAR_LUNCH_BEN   VARCHAR2(1 BYTE)          NOT NULL,
  SFA_PAR_TANF_BEN    VARCHAR2(1 BYTE)          NOT NULL,
  SFA_PAR_WIC_BEN     VARCHAR2(1 BYTE)          NOT NULL,
  SFA_INTRSTD_IN_WSL  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_STDNT_GENDER    VARCHAR2(1 BYTE)          NOT NULL,
  SFA_HS_DIP_EQUIV    VARCHAR2(1 BYTE)          NOT NULL,
  SFA_SCHL_CHOICE_7   VARCHAR2(6 BYTE)          NOT NULL,
  SFA_HOUSING_CODE7   VARCHAR2(1 BYTE)          NOT NULL,
  SFA_SCHL_CHOICE_8   VARCHAR2(6 BYTE)          NOT NULL,
  SFA_HOUSING_CODE8   VARCHAR2(1 BYTE)          NOT NULL,
  SFA_SCHL_CHOICE_9   VARCHAR2(6 BYTE)          NOT NULL,
  SFA_HOUSING_CODE9   VARCHAR2(1 BYTE)          NOT NULL,
  SFA_SCHL_CHOICE_10  VARCHAR2(6 BYTE)          NOT NULL,
  SFA_HOUSING_CODE10  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_TCH_COURSE_WRK  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_EMANCIPT_MINOR  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_LEGAL_GUARDIAN  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_YOUTH_LIASON    VARCHAR2(1 BYTE)          NOT NULL,
  SFA_YOUTH_HUD       VARCHAR2(1 BYTE)          NOT NULL,
  SFA_RISK_HOMELESS   VARCHAR2(1 BYTE)          NOT NULL,
  SFA_STU_DISLOC_WRK  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_STU_EDU_CREDIT  VARCHAR2(7 BYTE)          NOT NULL,
  SFA_STU_SUP_PAID    VARCHAR2(10 BYTE)         NOT NULL,
  SFA_STU_NEED_EMPL   VARCHAR2(7 BYTE)          NOT NULL,
  SFA_STU_GRANT_AID   VARCHAR2(10 BYTE)         NOT NULL,
  SFA_STU_COMBAT_PAY  VARCHAR2(10 BYTE)         NOT NULL,
  SFA_STU_PEN_PAY     VARCHAR2(7 BYTE)          NOT NULL,
  SFA_STU_IRA_PAY     VARCHAR2(7 BYTE)          NOT NULL,
  SFA_STU_SUP_RECV    VARCHAR2(10 BYTE)         NOT NULL,
  SFA_STU_INT_INCOME  VARCHAR2(7 BYTE)          NOT NULL,
  SFA_STU_IRA_DIST    VARCHAR2(7 BYTE)          NOT NULL,
  SFA_STU_UNTAX_PEN   VARCHAR2(7 BYTE)          NOT NULL,
  SFA_STU_MIL_ALLOW   VARCHAR2(7 BYTE)          NOT NULL,
  SFA_STU_VET_ED_BEN  VARCHAR2(10 BYTE)         NOT NULL,
  SFA_STU_UNTAX_INC   VARCHAR2(10 BYTE)         NOT NULL,
  SFA_STU_NREP_MONEY  VARCHAR2(7 BYTE)          NOT NULL,
  SFA_PAR_DISLOC_WRK  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_PAR_EDU_CREDIT  VARCHAR2(10 BYTE)         NOT NULL,
  SFA_PAR_SUP_PAID    VARCHAR2(10 BYTE)         NOT NULL,
  SFA_PAR_NEED_EMPL   VARCHAR2(7 BYTE)          NOT NULL,
  SFA_PAR_GRANT_AID   VARCHAR2(7 BYTE)          NOT NULL,
  SFA_PAR_COMBAT_PAY  VARCHAR2(10 BYTE)         NOT NULL,
  SFA_PAR_PEN_PAY     VARCHAR2(7 BYTE)          NOT NULL,
  SFA_PAR_IRA_PAY     VARCHAR2(7 BYTE)          NOT NULL,
  SFA_PAR_SUP_RECV    VARCHAR2(10 BYTE)         NOT NULL,
  SFA_PAR_INT_INCOME  VARCHAR2(7 BYTE)          NOT NULL,
  SFA_PAR_IRA_DIST    VARCHAR2(7 BYTE)          NOT NULL,
  SFA_PAR_UNTAX_PEN   VARCHAR2(7 BYTE)          NOT NULL,
  SFA_PAR_MIL_ALLOW   VARCHAR2(10 BYTE)         NOT NULL,
  SFA_PAR_VET_ED_BEN  VARCHAR2(7 BYTE)          NOT NULL,
  SFA_PAR_UNTAX_INC   VARCHAR2(7 BYTE)          NOT NULL,
  SFA_RECV_VET_BEN    VARCHAR2(1 BYTE)          NOT NULL,
  SFA_VET_BEN_TYPE    VARCHAR2(1 BYTE)          NOT NULL,
  SFA_STU_COOP_EARN   VARCHAR2(7 BYTE)          NOT NULL,
  SFA_PAR_COOP_EARN   VARCHAR2(7 BYTE)          NOT NULL,
  SFA_HIGH_SCHL_NAME  VARCHAR2(50 BYTE)         NOT NULL,
  SFA_HIGH_SCHL_CITY  VARCHAR2(28 BYTE)         NOT NULL,
  SFA_HIGH_SCHL_STAT  VARCHAR2(2 BYTE)          NOT NULL,
  SFA_HIGH_SCHL_CODE  VARCHAR2(12 BYTE)         NOT NULL,
  SFA_STU_ASSET_THRS  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_PAR_ASSET_THRS  VARCHAR2(1 BYTE)          NOT NULL,
  SFA_STU_TAX_RET     VARCHAR2(1 BYTE)          NOT NULL,
  SFA_PAR_TAX_RET     VARCHAR2(1 BYTE)          NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
