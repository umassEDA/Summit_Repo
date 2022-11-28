DROP TABLE CSSTG_OWNER.PS_S_COUNTRY_TBL_OLD CASCADE CONSTRAINTS
/

--
-- PS_S_COUNTRY_TBL_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_S_COUNTRY_TBL_OLD
(
  COUNTRY            VARCHAR2(3 BYTE)           NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  DESCR              VARCHAR2(30 BYTE)          NOT NULL,
  DESCRSHORT         VARCHAR2(10 BYTE)          NOT NULL,
  COUNTRY_2CHAR      VARCHAR2(2 BYTE)           NOT NULL,
  EU_MEMBER_STATE    VARCHAR2(1 BYTE)           NOT NULL,
  ADDR1_LBL          VARCHAR2(15 BYTE)          NOT NULL,
  ADDR1_AVAIL        VARCHAR2(1 BYTE)           NOT NULL,
  ADDR2_LBL          VARCHAR2(15 BYTE)          NOT NULL,
  ADDR2_AVAIL        VARCHAR2(1 BYTE)           NOT NULL,
  ADDR3_LBL          VARCHAR2(15 BYTE)          NOT NULL,
  ADDR3_AVAIL        VARCHAR2(1 BYTE)           NOT NULL,
  ADDR4_LBL          VARCHAR2(15 BYTE)          NOT NULL,
  ADDR4_AVAIL        VARCHAR2(1 BYTE)           NOT NULL,
  CITY_LBL           VARCHAR2(15 BYTE)          NOT NULL,
  CITY_AVAIL         VARCHAR2(1 BYTE)           NOT NULL,
  NUM1_LBL           VARCHAR2(15 BYTE)          NOT NULL,
  NUM1_AVAIL         VARCHAR2(1 BYTE)           NOT NULL,
  NUM2_LBL           VARCHAR2(15 BYTE)          NOT NULL,
  NUM2_AVAIL         VARCHAR2(1 BYTE)           NOT NULL,
  HOUSE_TYPE_LBL     VARCHAR2(15 BYTE)          NOT NULL,
  HOUSE_TYPE_AVAIL   VARCHAR2(1 BYTE)           NOT NULL,
  ADDR_FIELD1_LBL    VARCHAR2(15 BYTE)          NOT NULL,
  ADDR_FIELD1_AVAIL  VARCHAR2(1 BYTE)           NOT NULL,
  ADDR_FIELD2_LBL    VARCHAR2(15 BYTE)          NOT NULL,
  ADDR_FIELD2_AVAIL  VARCHAR2(1 BYTE)           NOT NULL,
  ADDR_FIELD3_LBL    VARCHAR2(15 BYTE)          NOT NULL,
  ADDR_FIELD3_AVAIL  VARCHAR2(1 BYTE)           NOT NULL,
  COUNTY_LBL         VARCHAR2(15 BYTE)          NOT NULL,
  COUNTY_AVAIL       VARCHAR2(1 BYTE)           NOT NULL,
  STATE_LBL          VARCHAR2(15 BYTE)          NOT NULL,
  STATE_AVAIL        VARCHAR2(1 BYTE)           NOT NULL,
  POSTAL_LBL         VARCHAR2(15 BYTE)          NOT NULL,
  POSTAL_AVAIL       VARCHAR2(1 BYTE)           NOT NULL,
  IN_CITY_LIM_AVAIL  VARCHAR2(1 BYTE)           NOT NULL,
  IN_CITY_LIM_LBL    VARCHAR2(15 BYTE)          NOT NULL,
  GEO_CODE_AVAIL     VARCHAR2(1 BYTE)           NOT NULL,
  GEO_CODE_LBL       VARCHAR2(15 BYTE)          NOT NULL,
  POST_SRCH_AVAIL    VARCHAR2(1 BYTE)           NOT NULL,
  GBSYS_NRPATH_UK    VARCHAR2(254 BYTE)         NOT NULL,
  GBSYS_CFGPATH_UK   VARCHAR2(254 BYTE)         NOT NULL,
  SYNCID             INTEGER                    NOT NULL,
  SYNCDTTM           DATE,
  ADDR_VALIDAT       VARCHAR2(1 BYTE)           NOT NULL,
  EO_SEC_PAGE_NAME   VARCHAR2(18 BYTE)          NOT NULL,
  LOAD_ERROR         VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL
)
COMPRESS BASIC
/
