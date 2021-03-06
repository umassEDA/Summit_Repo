CREATE TABLE PS_D_EXT_ORG
(
  EXT_ORG_SID         INTEGER,
  EXT_ORG_ID          VARCHAR2(11 BYTE),
  SRC_SYS_ID          VARCHAR2(5 BYTE),
  EFFDT               DATE,
  EFF_STAT_CD         VARCHAR2(1 BYTE),
  EXT_ORG_SD          VARCHAR2(10 BYTE),
  EXT_ORG_LD          VARCHAR2(30 BYTE),
  EXT_ORG_FD          VARCHAR2(50 BYTE),
  EXT_ORG_TYPE_ID     VARCHAR2(4 BYTE),
  EXT_ORG_TYPE_SD     VARCHAR2(10 BYTE),
  EXT_ORG_TYPE_LD     VARCHAR2(30 BYTE),
  SCHOOL_TYPE_ID      VARCHAR2(3 BYTE),
  SCHOOL_TYPE_SD      VARCHAR2(10 BYTE),
  SCHOOL_TYPE_LD      VARCHAR2(30 BYTE),
  ADDR1_LD            VARCHAR2(55 BYTE),
  ADDR2_LD            VARCHAR2(55 BYTE),
  ADDR3_LD            VARCHAR2(55 BYTE),
  ADDR4_LD            VARCHAR2(55 BYTE),
  CITY_NM             VARCHAR2(30 BYTE),
  CNTY_NM             VARCHAR2(30 BYTE),
  STATE_ID            VARCHAR2(6 BYTE),
  STATE_LD            VARCHAR2(30 BYTE),
  POSTAL_CD           VARCHAR2(12 BYTE),
  CNTRY_ID            VARCHAR2(3 BYTE),
  CNTRY_SD            VARCHAR2(10 BYTE),
  CNTRY_LD            VARCHAR2(30 BYTE),
  ACCREDITED_FLG      VARCHAR2(1 BYTE),
  ATP_CD              VARCHAR2(6 BYTE),
  EXT_CAREER          VARCHAR2(4 BYTE),
  EXT_CAREER_SD       VARCHAR2(10 BYTE),
  EXT_CAREER_LD       VARCHAR2(30 BYTE),
  EXT_TERM_TYPE       VARCHAR2(4 BYTE),
  EXT_TERM_TYPE_SD    VARCHAR2(10 BYTE),
  EXT_TERM_TYPE_LD    VARCHAR2(30 BYTE),
  OFFERS_COURSES_FLG  VARCHAR2(1 BYTE),
  ORG_LOCATION        INTEGER,
  PROPRIETORSHIP      VARCHAR2(4 BYTE),
  PROPRIETORSHIP_SD   VARCHAR2(10 BYTE),
  PROPRIETORSHIP_LD   VARCHAR2(30 BYTE),
  SHARED_CATALOG_FLG  VARCHAR2(1 BYTE),
  UNT_TYPE            VARCHAR2(3 BYTE),
  UNT_TYPE_SD         VARCHAR2(10 BYTE),
  UNT_TYPE_LD         VARCHAR2(30 BYTE),
  DATA_ORIGIN         VARCHAR2(1 BYTE),
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
