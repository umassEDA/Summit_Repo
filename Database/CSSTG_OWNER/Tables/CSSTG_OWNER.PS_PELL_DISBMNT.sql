DROP TABLE CSSTG_OWNER.PS_PELL_DISBMNT CASCADE CONSTRAINTS
/

--
-- PS_PELL_DISBMNT  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_PELL_DISBMNT
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  PELL_ORIG_ID        VARCHAR2(23 BYTE)         NOT NULL,
  PELL_DISB_SEQ_NBR   INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE),
  ITEM_TYPE           VARCHAR2(12 BYTE),
  DISBURSEMENT_ID     VARCHAR2(2 BYTE),
  PELL_DISB_AMT       NUMBER(7,2),
  PELL_DISB_DT        DATE,
  PELL_DISB_STATUS    VARCHAR2(1 BYTE),
  PELL_DISB_STAT_DT   DATE,
  AWARD_PERIOD        VARCHAR2(1 BYTE),
  PELL_YTD_DSB_AMT    NUMBER(7,2),
  ACTION_CODE         VARCHAR2(1 BYTE),
  PELL_PAYPR_NBR      INTEGER,
  PELL_PAYPR_STRT_DT  DATE,
  PELL_PAYPR_END_DT   DATE,
  PELL_PAY_PERIODS    INTEGER,
  PELL_PAYPR_AMOUNT   NUMBER(7,2),
  PELL_PAYPR_ACD_CAL  VARCHAR2(1 BYTE),
  PELL_PAYPR_PMT_MTH  VARCHAR2(1 BYTE),
  PELL_PAYPR_COA      NUMBER(7,2),
  PELL_PAYPR_ENRL_ST  VARCHAR2(1 BYTE),
  PELL_PAYPR_WEEKS    VARCHAR2(2 BYTE),
  WEEKS_PROG_ACADYR   VARCHAR2(2 BYTE),
  PELL_PAYPR_HOURS    VARCHAR2(4 BYTE),
  HRS_CREDITS_ACADYR  VARCHAR2(4 BYTE),
  PG_ED_USE_FLAG_1    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_2    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_3    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_4    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_5    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_6    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_7    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_8    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_9    VARCHAR2(1 BYTE),
  PG_ED_USE_FLAG_10   VARCHAR2(1 BYTE),
  PELL_RFMS_DISB_SEQ  INTEGER,
  PELL_PREV_DISB_REG  NUMBER(7,2),
  PELL_DISB_TYPE      VARCHAR2(1 BYTE),
  PELL_COD_DISB_NUM   INTEGER,
  PELL_COD_DISB_SEQ   INTEGER,
  PELL_COD_DISB_AMT   NUMBER(7,2),
  PELL_ACT_DISB_DT    DATE,
  SFA_COD_ENR_SCHLCD  VARCHAR2(8 BYTE),
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
NOCOMPRESS
/