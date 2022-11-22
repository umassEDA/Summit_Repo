DROP TABLE CSMRT_OWNER.UM_D_FA_ITEM_TYPE_CTGRY CASCADE CONSTRAINTS
/

--
-- UM_D_FA_ITEM_TYPE_CTGRY  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_FA_ITEM_TYPE_CTGRY
(
  INSTITUTION_CD        VARCHAR2(5 BYTE)        NOT NULL,
  AID_YEAR              VARCHAR2(4 BYTE)        NOT NULL,
  ITEM_TYPE             VARCHAR2(12 BYTE)       NOT NULL,
  INSTITUTION_SID       INTEGER                 NOT NULL,
  ITEM_TYPE_SID         INTEGER                 NOT NULL,
  REPORT_NAME           VARCHAR2(30 BYTE)       NOT NULL,
  CATEGORY_1            VARCHAR2(30 BYTE),
  CATEGORY_1_DESCR      VARCHAR2(60 BYTE),
  CATEGORY_2            VARCHAR2(30 BYTE),
  CATEGORY_2_DESCR      VARCHAR2(60 BYTE),
  CATEGORY_3            VARCHAR2(30 BYTE),
  CATEGORY_3_DESCR      VARCHAR2(60 BYTE),
  CATEGORY_4            VARCHAR2(30 BYTE),
  CATEGORY_4_DESCR      VARCHAR2(60 BYTE),
  CATEGORY_5            VARCHAR2(30 BYTE),
  CATEGORY_5_DESCR      VARCHAR2(60 BYTE),
  SRC_SYS_ID            VARCHAR2(5 CHAR)        NOT NULL,
  LOAD_ERROR            VARCHAR2(1 CHAR)        NOT NULL,
  DATA_ORIGIN           VARCHAR2(1 CHAR)        NOT NULL,
  CREATED_EW_DTTM       DATE,
  LASTUPD_EW_DTTM       DATE,
  BATCH_SID             NUMBER(10)              NOT NULL,
  USE_FA_SF_BRIDGE      VARCHAR2(1 BYTE),
  AWARD_AMT_TYPE        VARCHAR2(1 BYTE),
  NEED_BASED_CTGRY_FLG  VARCHAR2(1 BYTE)
)
COMPRESS BASIC
/
