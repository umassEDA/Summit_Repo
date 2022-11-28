DROP TABLE CSSTG_OWNER.PS_UM_CA_UMBOS CASCADE CONSTRAINTS
/

--
-- PS_UM_CA_UMBOS  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_UM_CA_UMBOS
(
  UM_ADM_USERID       VARCHAR2(15 BYTE)         NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  UM_ADM_REC_NBR      VARCHAR2(15 BYTE)         NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  UM_CA_FIRST_NAME    VARCHAR2(200 BYTE),
  UM_CA_MIDDLE_NAME   VARCHAR2(200 BYTE),
  UM_CA_LAST_NAME     VARCHAR2(200 BYTE),
  UM_CA_SUFFIX        VARCHAR2(200 BYTE),
  UM_CA_SEX           VARCHAR2(200 BYTE),
  UM_CA_FORMER_LAST   VARCHAR2(200 BYTE),
  UM_CA_PREF_NAME     VARCHAR2(200 BYTE),
  UM_CA_DOB           VARCHAR2(200 BYTE),
  UM_CA_CITIZEN_STAT  VARCHAR2(200 BYTE),
  UM_CA_CITIZENSHIPS  VARCHAR2(200 BYTE),
  UM_CA_VISA_TYPE     VARCHAR2(200 BYTE),
  UM_CA_ALIEN_RG_NBR  VARCHAR2(200 BYTE),
  UM_CA_VISA_NUMBER   VARCHAR2(200 BYTE),
  UM_CA_SSN           VARCHAR2(200 BYTE),
  UM_CA_BIRTH_CITY    VARCHAR2(200 BYTE),
  UM_CA_BIRTH_CNTRY   VARCHAR2(200 BYTE),
  UM_CA_MILITRY_STAT  VARCHAR2(200 BYTE),
  UM_CA_HISP_LATINO   VARCHAR2(200 BYTE),
  UM_CA_HISP_LAT_BCK  VARCHAR2(200 BYTE),
  UM_CA_BACKGROUND    VARCHAR2(200 BYTE),
  UM_CA_AMER_IND_BCK  VARCHAR2(200 BYTE),
  UM_CA_AMER_IND_OTH  VARCHAR2(200 BYTE),
  UM_CA_ASIAN_BCK     VARCHAR2(200 BYTE),
  UM_CA_E_ASIA_OTH    VARCHAR2(200 BYTE),
  UM_CA_S_ASIA_OTH    VARCHAR2(200 BYTE),
  UM_CA_SE_ASIA_OTH   VARCHAR2(200 BYTE),
  UM_CA_AFRICAN_BCK   VARCHAR2(200 BYTE),
  UM_CA_AFRICAN_OTH   VARCHAR2(200 BYTE),
  UM_CA_HAWAIIAN_BCK  VARCHAR2(200 BYTE),
  UM_CA_HAWAIIAN_OTH  VARCHAR2(200 BYTE),
  UM_CA_WHITE_BCK     VARCHAR2(200 BYTE),
  UM_CA_PERM_ADDR1    VARCHAR2(200 BYTE),
  UM_CA_PERM_ADDR2    VARCHAR2(200 BYTE),
  UM_CA_PERM_ADDR3    VARCHAR2(200 BYTE),
  UM_CA_PERM_CITY     VARCHAR2(200 BYTE),
  UM_CA_PERM_STATE    VARCHAR2(200 BYTE),
  UM_CA_PERM_ZIP      VARCHAR2(200 BYTE),
  UM_CA_PERM_COUNTRY  VARCHAR2(200 BYTE),
  UM_CA_PREF_PHONE    VARCHAR2(200 BYTE),
  UM_CA_ALT_PHONE     VARCHAR2(200 BYTE),
  UM_CA_EMAIL_ADDR    VARCHAR2(200 BYTE),
  UM_CA_CURR_ADDR1    VARCHAR2(200 BYTE),
  UM_CA_CURR_ADDR2    VARCHAR2(200 BYTE),
  UM_CA_CURR_ADDR3    VARCHAR2(200 BYTE),
  UM_CA_CURR_CITY     VARCHAR2(200 BYTE),
  UM_CA_CURR_STATE    VARCHAR2(200 BYTE),
  UM_CA_CURR_ZIP      VARCHAR2(200 BYTE),
  UM_CA_CURR_COUNTRY  VARCHAR2(200 BYTE),
  UM_CA_ALT_ADR_TODT  VARCHAR2(200 BYTE),
  UM_CA_ALT_ADDR_FRM  VARCHAR2(200 BYTE),
  UM_CA_SCHL_CEEBCD   VARCHAR2(200 BYTE),
  UM_CA_SCHL_CEEBNM   VARCHAR2(200 BYTE),
  UM_CA_ENTRY_DATE    VARCHAR2(200 BYTE),
  UM_CA_GRAD_DATE     VARCHAR2(200 BYTE),
  UM_CA_SCHL_TYPECD   VARCHAR2(200 BYTE),
  UM_CA_SCHL_STATE    VARCHAR2(200 BYTE),
  UM_CA_SCHL_COUNTRY  VARCHAR2(200 BYTE),
  UM_CA_COUNSLR_PFIX  VARCHAR2(200 BYTE),
  UM_CA_COUNSLR_FNAM  VARCHAR2(200 BYTE),
  UM_CA_COUNSLR_LNAM  VARCHAR2(200 BYTE),
  UM_CA_COUNSLR_EML   VARCHAR2(200 BYTE),
  UM_CA_COUNSLR_PH    VARCHAR2(200 BYTE),
  UM_CA_GED_DATE      VARCHAR2(200 BYTE),
  UM_CA_COL1_CEEBCD   VARCHAR2(200 BYTE),
  UM_CA_COL1_CEEBNM   VARCHAR2(200 BYTE),
  UM_CA_COL1_FROM     VARCHAR2(200 BYTE),
  UM_CA_COL1_TODT     VARCHAR2(200 BYTE),
  UM_CA_COL1_DEG      VARCHAR2(200 BYTE),
  UM_CA_COL2_CEEBCD   VARCHAR2(200 BYTE),
  UM_CA_COL2_CEEBNM   VARCHAR2(200 BYTE),
  UM_CA_COL2_FROM     VARCHAR2(200 BYTE),
  UM_CA_COL2_TODT     VARCHAR2(200 BYTE),
  UM_CA_COL2_DEG      VARCHAR2(200 BYTE),
  UM_CA_COL3_CEEBCD   VARCHAR2(200 BYTE),
  UM_CA_COL3_CEEBNM   VARCHAR2(200 BYTE),
  UM_CA_COL3_FROM     VARCHAR2(200 BYTE),
  UM_CA_COL3_TODT     VARCHAR2(200 BYTE),
  UM_CA_COL3_DEG      VARCHAR2(200 BYTE),
  UM_CA_SCHL_DISCIPL  VARCHAR2(200 BYTE),
  UM_CA_CRIMNL_HIST   VARCHAR2(200 BYTE),
  UM_CA_APP_SUB_DT    VARCHAR2(200 BYTE),
  UM_CA_COM_APP_ID    VARCHAR2(200 BYTE),
  UM_CA_APP_CREAT_DT  VARCHAR2(200 BYTE),
  UM_CA_APP_PRINT_DT  VARCHAR2(200 BYTE),
  UM_CA_APP_EXPRT_DT  VARCHAR2(200 BYTE),
  UM_CA_PAY_STATUS    VARCHAR2(200 BYTE),
  UM_CA_PAY_TYPE      VARCHAR2(200 BYTE),
  UM_CA_PAY_DT        VARCHAR2(200 BYTE),
  UM_CA_PAY_AMT       VARCHAR2(200 BYTE),
  UM_CA_TRANS_ID      VARCHAR2(200 BYTE),
  UM_CA_ORDER_ID      VARCHAR2(200 BYTE),
  UM_CA_PRNT_RES_TYP  VARCHAR2(200 BYTE),
  UM_CA_INSTATE_TUIT  VARCHAR2(200 BYTE),
  UM_CA_LANG1         VARCHAR2(200 BYTE),
  UM_CA_LAN1_PROF     VARCHAR2(200 BYTE),
  UM_CA_LANG2         VARCHAR2(200 BYTE),
  UM_CA_LAN2_PROF     VARCHAR2(200 BYTE),
  UM_CA_LANG3         VARCHAR2(200 BYTE),
  UM_CA_LAN3_PROF     VARCHAR2(200 BYTE),
  UM_CA_LANG4         VARCHAR2(200 BYTE),
  UM_CA_LAN4_PROF     VARCHAR2(200 BYTE),
  UM_CA_LANG5         VARCHAR2(200 BYTE),
  UM_CA_LAN5_PROF     VARCHAR2(200 BYTE),
  UM_CA_ACAD1_QUES1   VARCHAR2(200 BYTE),
  UM_CA_ACAD2_QUEST1  VARCHAR2(200 BYTE),
  UM_CA_PRF_STRT_TRM  VARCHAR2(200 BYTE),
  UM_CA_STUDENT_TYPE  VARCHAR2(200 BYTE),
  UM_CA_ADM_PLAN      VARCHAR2(200 BYTE),
  UM_CA_DACA          VARCHAR2(200 BYTE),
  UM_CA_OTH_COLLEGE   VARCHAR2(200 BYTE),
  UM_CA_SCHL_FEE_WAV  VARCHAR2(200 BYTE),
  UM_CA_TST_SCOR_EXP  VARCHAR2(200 BYTE),
  UM_CA_FIN_AID       VARCHAR2(200 BYTE),
  UM_CA_PREV_APPLIED  VARCHAR2(200 BYTE),
  UM_CA_PREV_APPL_DT  VARCHAR2(200 BYTE),
  UM_CA_CONTACT1      VARCHAR2(200 BYTE),
  UM_CA_CONTACT2      VARCHAR2(200 BYTE),
  UM_CA_CONTACT3      VARCHAR2(200 BYTE),
  UM_CA_CONTACT4      VARCHAR2(200 BYTE),
  UM_CA_CONTACT5      VARCHAR2(200 BYTE),
  UM_CA_CONTACT6      VARCHAR2(200 BYTE),
  UM_CA_CONTACT7      VARCHAR2(200 BYTE),
  UM_CA_CONTACT8      VARCHAR2(200 BYTE),
  UM_CA_CONTACT9      VARCHAR2(200 BYTE),
  UM_CA_CONTACT10     VARCHAR2(200 BYTE),
  UM_CA_CONTCT_CNSNT  VARCHAR2(200 BYTE),
  UM_CA_PHON_NBR      VARCHAR2(200 BYTE),
  UM_CA_AT_REL_ATTEN  VARCHAR2(200 BYTE),
  UM_CA_ALT_REL_DET   VARCHAR2(200 BYTE),
  UM_CA_STATE_RES     VARCHAR2(200 BYTE),
  UM_CA_STATE_CURR    VARCHAR2(200 BYTE),
  UM_CA_CURR_ADDR     VARCHAR2(200 BYTE),
  UM_CA_ID_CARD       VARCHAR2(200 BYTE),
  UM_CA_ID_CARD_ST    VARCHAR2(200 BYTE),
  UM_CA_ID_CARD_DT    VARCHAR2(200 BYTE),
  UM_CA_APP_EMPLOYED  VARCHAR2(200 BYTE),
  UM_CA_APP_OFFCE_ST  VARCHAR2(200 BYTE),
  UM_CA_TAX_LST_YEAR  VARCHAR2(200 BYTE),
  UM_CA_TAX_LST_Y_ST  VARCHAR2(200 BYTE),
  UM_CA_TAX_THIS_YR   VARCHAR2(200 BYTE),
  UM_CA_TAX_YR_STATE  VARCHAR2(200 BYTE),
  UM_CA_PARNT_RES_TY  VARCHAR2(200 BYTE),
  UM_CA_PRNT_CUR_ADR  VARCHAR2(200 BYTE),
  UM_CA_PARNT_CITIZN  VARCHAR2(200 BYTE),
  UM_CA_PARNT_CITSHP  VARCHAR2(200 BYTE),
  UM_CA_PARNT_VISA    VARCHAR2(200 BYTE),
  UM_CA_PARNT_VSA_TY  VARCHAR2(200 BYTE),
  UM_CA_P_TAX_LST_YR  VARCHAR2(200 BYTE),
  UM_CA_P_TAX_LST_ST  VARCHAR2(200 BYTE),
  UM_CA_P_CLAIMED_AP  VARCHAR2(200 BYTE),
  UM_CA_PARNT_TAX     VARCHAR2(200 BYTE),
  UM_CA_PARNT_TAX_ST  VARCHAR2(200 BYTE),
  UM_CA_P_CLAIM_AP_T  VARCHAR2(200 BYTE),
  UM_CA_SELF_RPT_GPA  VARCHAR2(200 BYTE),
  UM_CA_GPA_SCALE     VARCHAR2(200 BYTE),
  UM_CA_GPA_WEIGHT    VARCHAR2(200 BYTE),
  PROCESS_INSTANCE    NUMBER(10),
  UM_CA_COVID19       VARCHAR2(200 BYTE),
  UM_CA_GENDER_IDENT  VARCHAR2(200 BYTE),
  DATETIME_CREATED    DATE,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
