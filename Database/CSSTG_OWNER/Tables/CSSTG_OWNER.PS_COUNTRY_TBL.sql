DROP TABLE CSSTG_OWNER.PS_COUNTRY_TBL CASCADE CONSTRAINTS
/

--
-- PS_COUNTRY_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_COUNTRY_TBL
(
  COUNTRY           VARCHAR2(3 BYTE)            NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  DESCR             VARCHAR2(30 BYTE)           NOT NULL,
  DESCRSHORT        VARCHAR2(10 BYTE)           NOT NULL,
  COUNTRY_2CHAR     VARCHAR2(2 BYTE)            NOT NULL,
  EU_MEMBER_STATE   VARCHAR2(1 BYTE)            NOT NULL,
  POST_SRCH_AVAIL   VARCHAR2(1 BYTE)            NOT NULL,
  ADDR_VALIDAT      VARCHAR2(1 BYTE)            NOT NULL,
  EO_SEC_PAGE_NAME  VARCHAR2(18 BYTE)           NOT NULL,
  LOAD_ERROR        VARCHAR2(1 BYTE)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL
)
NOCOMPRESS
/
