DROP TABLE CSMRT_OWNER.PS_D_INSTITUTION CASCADE CONSTRAINTS
/

--
-- PS_D_INSTITUTION  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_D_INSTITUTION
(
  INSTITUTION_SID  INTEGER                      NOT NULL,
  INSTITUTION_CD   VARCHAR2(5 CHAR)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 CHAR)             NOT NULL,
  EFFDT            DATE,
  EFF_STAT_CD      VARCHAR2(1 CHAR)             NOT NULL,
  INSTITUTION_SD   VARCHAR2(10 CHAR)            NOT NULL,
  INSTITUTION_LD   VARCHAR2(30 CHAR)            NOT NULL,
  INSTITUTION_FD   VARCHAR2(50 CHAR)            NOT NULL,
  ADDR1_LD         VARCHAR2(55 CHAR)            NOT NULL,
  ADDR2_LD         VARCHAR2(55 CHAR)            NOT NULL,
  ADDR3_LD         VARCHAR2(55 CHAR)            NOT NULL,
  ADDR4_LD         VARCHAR2(55 CHAR)            NOT NULL,
  CITY_NM          VARCHAR2(30 CHAR)            NOT NULL,
  CNTY_NM          VARCHAR2(30 CHAR)            NOT NULL,
  STATE_CD         VARCHAR2(6 CHAR)             NOT NULL,
  POSTAL_CD        VARCHAR2(12 CHAR)            NOT NULL,
  GEO_CD           VARCHAR2(11 CHAR)            NOT NULL,
  CNTRY_CD         VARCHAR2(3 CHAR)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 CHAR)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.PS_D_INSTITUTION ADD (
  CONSTRAINT PK_PS_D_INSTITUTION
  PRIMARY KEY
  (INSTITUTION_SID)
  RELY
  DISABLE NOVALIDATE)
/
