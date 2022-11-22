DROP TABLE CSMRT_OWNER.UM_D_PERSON_CITIZEN CASCADE CONSTRAINTS
/

--
-- UM_D_PERSON_CITIZEN  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_PERSON_CITIZEN
(
  PERSON_ID                  VARCHAR2(11 BYTE)  NOT NULL,
  DEPENDENT_ID               VARCHAR2(2 BYTE)   NOT NULL,
  COUNTRY                    VARCHAR2(3 BYTE)   NOT NULL,
  SRC_SYS_ID                 VARCHAR2(5 BYTE)   NOT NULL,
  PERSON_SID                 INTEGER            NOT NULL,
  CITIZENSHIP_STATUS         VARCHAR2(1 BYTE)   NOT NULL,
  CITIZENSHIP_STATUS_SD      VARCHAR2(10 BYTE)  NOT NULL,
  CITIZENSHIP_STATUS_LD      VARCHAR2(30 BYTE)  NOT NULL,
  COUNTRY_SD                 VARCHAR2(10 BYTE)  NOT NULL,
  COUNTRY_LD                 VARCHAR2(30 BYTE)  NOT NULL,
  COUNTRY_2CHAR              VARCHAR2(2 BYTE)   NOT NULL,
  EU_MEMBER_STATE            VARCHAR2(1 BYTE)   NOT NULL,
  CITIZENSHIP_STATUS_USA     VARCHAR2(1 BYTE)   NOT NULL,
  CITIZENSHIP_STATUS_SD_USA  VARCHAR2(10 BYTE)  NOT NULL,
  CITIZENSHIP_STATUS_LD_USA  VARCHAR2(30 BYTE)  NOT NULL,
  CIT_ORDER                  INTEGER            NOT NULL,
  DATA_ORIGIN                VARCHAR2(1 BYTE)   NOT NULL,
  CREATED_EW_DTTM            DATE,
  LASTUPD_EW_DTTM            DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_D_PERSON_CITIZEN ADD (
  CONSTRAINT PK_UM_D_PERSON_CITIZEN
  PRIMARY KEY
  (PERSON_ID, DEPENDENT_ID, COUNTRY, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
