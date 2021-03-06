CREATE TABLE UM_F_FA_STDNT_BDGT_ITEM
(
  INSTITUTION_CD        VARCHAR2(5 BYTE),
  ACAD_CAR_CD           VARCHAR2(4 BYTE),
  AID_YEAR              VARCHAR2(4 BYTE),
  TERM_CD               VARCHAR2(4 BYTE),
  PERSON_ID             VARCHAR2(11 BYTE),
  BGT_ITEM_CATEGORY     VARCHAR2(4 BYTE),
  SRC_SYS_ID            VARCHAR2(5 BYTE),
  EFFDT                 DATE,
  EFFSEQ                INTEGER,
  INSTITUTION_SID       INTEGER,
  ACAD_CAR_SID          INTEGER,
  TERM_SID              INTEGER,
  PERSON_SID            INTEGER,
  BGT_ITEM_CATEGORY_LD  VARCHAR2(30 BYTE),
  BUDGET_ITEM_CD        VARCHAR2(6 BYTE),
  BUDGET_ITEM_CD_LD     VARCHAR2(30 BYTE),
  BUDGET_ITEM_AMOUNT    NUMBER(7,2),
  OPRID                 VARCHAR2(30 BYTE),
  PELL_ITEM_AMOUNT      NUMBER(7,2),
  SFA_PELITMAMT_LHT     NUMBER(7,2),
  LOAD_ERROR            VARCHAR2(1 BYTE),
  DATA_ORIGIN           VARCHAR2(1 BYTE),
  CREATED_EW_DTTM       DATE,
  LASTUPD_EW_DTTM       DATE,
  BATCH_SID             INTEGER
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
