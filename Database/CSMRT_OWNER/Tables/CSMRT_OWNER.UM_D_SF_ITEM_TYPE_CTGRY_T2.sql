DROP TABLE CSMRT_OWNER.UM_D_SF_ITEM_TYPE_CTGRY_T2 CASCADE CONSTRAINTS
/

--
-- UM_D_SF_ITEM_TYPE_CTGRY_T2  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_SF_ITEM_TYPE_CTGRY_T2
(
  INSTITUTION_CD           VARCHAR2(5 BYTE)     NOT NULL,
  AID_YEAR                 VARCHAR2(4 BYTE)     NOT NULL,
  REPORT_NAME              VARCHAR2(30 BYTE)    NOT NULL,
  CATEGORY_1               VARCHAR2(30 BYTE),
  CATEGORY_1_DESCR         VARCHAR2(60 BYTE),
  CATEGORY_2               VARCHAR2(30 BYTE),
  CATEGORY_2_DESCR         VARCHAR2(60 BYTE),
  CATEGORY_3               VARCHAR2(30 BYTE),
  CATEGORY_3_DESCR         VARCHAR2(60 BYTE),
  CATEGORY_4               VARCHAR2(30 BYTE),
  CATEGORY_4_DESCR         VARCHAR2(60 BYTE),
  CATEGORY_5               VARCHAR2(30 BYTE),
  CATEGORY_5_DESCR         VARCHAR2(60 BYTE),
  SF_ITEM_TYPE             VARCHAR2(12 BYTE),
  SF_ITEM_TYPE_DESCR       VARCHAR2(400 BYTE),
  SF_ITEM_TYPE_RANGE_FROM  VARCHAR2(12 BYTE),
  SF_ITEM_TYPE_RANGE_TO    VARCHAR2(12 BYTE),
  EQ_VAR_CHAR1             VARCHAR2(20 BYTE),
  EQ_VAR_CHAR2             VARCHAR2(20 BYTE),
  EQ_VAR_CHAR3             VARCHAR2(20 BYTE),
  SF_ITEM_TYPE_CD          VARCHAR2(30 BYTE),
  WAIVER_DESCR             VARCHAR2(400 BYTE),
  SRC_SYS_ID               VARCHAR2(5 CHAR)     NOT NULL,
  DATA_ORIGIN              VARCHAR2(1 CHAR)     NOT NULL,
  CREATED_EW_DTTM          DATE,
  LASTUPD_EW_DTTM          DATE
)
COMPRESS BASIC
/
