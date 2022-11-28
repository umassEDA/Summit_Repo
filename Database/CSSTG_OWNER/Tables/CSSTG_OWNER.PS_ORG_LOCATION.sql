DROP TABLE CSSTG_OWNER.PS_ORG_LOCATION CASCADE CONSTRAINTS
/

--
-- PS_ORG_LOCATION  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ORG_LOCATION
(
  EXT_ORG_ID       VARCHAR2(11 BYTE)            NOT NULL,
  ORG_LOCATION     INTEGER                      NOT NULL,
  EFFDT            DATE,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  EFF_STATUS       VARCHAR2(1 BYTE)             NOT NULL,
  DESCR            VARCHAR2(30 BYTE)            NOT NULL,
  DESCRSHORT       VARCHAR2(10 BYTE)            NOT NULL,
  COUNTRY          VARCHAR2(3 BYTE)             NOT NULL,
  ADDRESS1         VARCHAR2(55 BYTE)            NOT NULL,
  ADDRESS2         VARCHAR2(55 BYTE)            NOT NULL,
  ADDRESS3         VARCHAR2(55 BYTE)            NOT NULL,
  ADDRESS4         VARCHAR2(55 BYTE)            NOT NULL,
  CITY             VARCHAR2(30 BYTE)            NOT NULL,
  NUM1             VARCHAR2(6 BYTE)             NOT NULL,
  NUM2             VARCHAR2(6 BYTE)             NOT NULL,
  HOUSE_TYPE       VARCHAR2(2 BYTE)             NOT NULL,
  ADDR_FIELD1      VARCHAR2(2 BYTE)             NOT NULL,
  ADDR_FIELD2      VARCHAR2(4 BYTE)             NOT NULL,
  ADDR_FIELD3      VARCHAR2(4 BYTE)             NOT NULL,
  COUNTY           VARCHAR2(30 BYTE)            NOT NULL,
  STATE            VARCHAR2(6 BYTE)             NOT NULL,
  POSTAL           VARCHAR2(12 BYTE)            NOT NULL,
  GEO_CODE         VARCHAR2(11 BYTE)            NOT NULL,
  IN_CITY_LIMIT    VARCHAR2(1 BYTE)             NOT NULL,
  URL_ADDRESS      VARCHAR2(254 BYTE)           NOT NULL,
  EMAILID          VARCHAR2(70 BYTE)            NOT NULL,
  EDI_ADDRESS      VARCHAR2(999 BYTE),
  LASTUPDDTTM      DATE,
  LASTUPDOPRID     VARCHAR2(30 BYTE)            NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
