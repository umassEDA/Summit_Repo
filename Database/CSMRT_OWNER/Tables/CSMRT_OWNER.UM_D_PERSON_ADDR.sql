DROP TABLE CSMRT_OWNER.UM_D_PERSON_ADDR CASCADE CONSTRAINTS
/

--
-- UM_D_PERSON_ADDR  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_PERSON_ADDR
(
  PERSON_ID             VARCHAR2(11 BYTE)       NOT NULL,
  ADDRESS_TYPE          VARCHAR2(4 BYTE)        NOT NULL,
  EFFDT                 DATE                    NOT NULL,
  SRC_SYS_ID            VARCHAR2(5 BYTE)        NOT NULL,
  EFFDT_START           DATE                    NOT NULL,
  EFFDT_END             DATE                    NOT NULL,
  EFFDT_ORDER           INTEGER                 NOT NULL,
  EFF_STATUS            VARCHAR2(1 BYTE)        NOT NULL,
  PERSON_SID            INTEGER                 NOT NULL,
  ADDRESS_TYPE_SD       VARCHAR2(10 BYTE),
  ADDRESS_TYPE_LD       VARCHAR2(30 BYTE),
  ADDRESS1              VARCHAR2(55 BYTE),
  ADDRESS2              VARCHAR2(55 BYTE),
  ADDRESS3              VARCHAR2(55 BYTE),
  ADDRESS4              VARCHAR2(55 BYTE),
  CITY                  VARCHAR2(30 BYTE),
  COUNTY                VARCHAR2(30 BYTE),
  STATE                 VARCHAR2(6 BYTE),
  STATE_LD              VARCHAR2(30 BYTE),
  POSTAL                VARCHAR2(12 BYTE),
  POSTAL3_USA_CD        VARCHAR2(3 BYTE),
  POSTAL5_USA_CD        VARCHAR2(5 BYTE),
  POSTAL_PLUS4_USA_CD   VARCHAR2(4 BYTE),
  UMLOW_GRAD_PROXIMITY  VARCHAR2(10 BYTE),
  UMLOW_UGRD_PROXIMITY  VARCHAR2(10 BYTE),
  COUNTRY               VARCHAR2(3 BYTE),
  COUNTRY_SD            VARCHAR2(10 BYTE),
  COUNTRY_LD            VARCHAR2(30 BYTE),
  COUNTRY_2CHAR         VARCHAR2(2 BYTE),
  EU_MEMBER_STATE       VARCHAR2(1 BYTE),
  BMLP_ADDR_ORDER       INTEGER,
  MLP_ADDR_ORDER        INTEGER,
  MPL_ADDR_ORDER        INTEGER,
  PML_ADDR_ORDER        INTEGER,
  DMLP_ADDR_ORDER       INTEGER,
  DMP_ADDR_ORDER        INTEGER,
  DPM_ADDR_ORDER        INTEGER,
  PERM_ADDR_ORDER       INTEGER,
  MAIL_ADDR_ORDER       INTEGER,
  RESH_ADDR_ORDER       INTEGER,
  RESH_UMBOS_ORDER      INTEGER,
  RESH_UMBOS_FLG        VARCHAR2(1 BYTE),
  RESH_UMDAR_ORDER      INTEGER,
  RESH_UMDAR_FLG        VARCHAR2(1 BYTE),
  RESH_UMLOW_ORDER      INTEGER,
  RESH_UMLOW_FLG        VARCHAR2(1 BYTE),
  PML_HIST_ORDER        INTEGER,
  ADDR_ORDER            INTEGER,
  LASTUPDDTTM           DATE,
  LASTUPDOPRID          VARCHAR2(30 BYTE),
  DATA_ORIGIN           VARCHAR2(1 BYTE),
  CREATED_EW_DTTM       DATE,
  LASTUPD_EW_DTTM       DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_D_PERSON_ADDR ADD (
  CONSTRAINT PK_UM_D_PERSON_ADDR
  PRIMARY KEY
  (PERSON_ID, ADDRESS_TYPE, EFFDT, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
