DROP TABLE CSMRT_OWNER.UM_R_PERSON_ASSOC CASCADE CONSTRAINTS
/

--
-- UM_R_PERSON_ASSOC  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_R_PERSON_ASSOC
(
  INSTITUTION_CD              VARCHAR2(5 BYTE)  NOT NULL,
  PERSON_ID                   VARCHAR2(11 BYTE) NOT NULL,
  SRC_SYS_ID                  VARCHAR2(5 BYTE)  NOT NULL,
  PERSON_SID                  INTEGER           NOT NULL,
  CURRENT_ATHL_FLG            VARCHAR2(1 BYTE)  NOT NULL,
  CURRENT_HONORS_FLG          VARCHAR2(1 BYTE)  NOT NULL,
  BEACON_CARD_ID              VARCHAR2(20 BYTE) NOT NULL,
  ENRLMT_MIN_PERSON_TERM_SID  INTEGER           NOT NULL,
  PERSON_ACCOM_SID            INTEGER           NOT NULL,
  PERSON_ADDR_SID             INTEGER           NOT NULL,
  PERSON_ATHL_SID             INTEGER           NOT NULL,
  PERSON_ATTRIBUTE_SID        INTEGER           NOT NULL,
  PERSON_CITIZEN_SID          INTEGER           NOT NULL,
  PERSON_EMAIL_SID            INTEGER           NOT NULL,
  PERSON_ETHNICITY_SID        INTEGER           NOT NULL,
  PERSON_HOUSING_SID          INTEGER           NOT NULL,
  PERSON_INTL_SID             INTEGER           NOT NULL,
  PERSON_NAME_SID             INTEGER           NOT NULL,
  PERSON_PHONE_SID            INTEGER           NOT NULL,
  PERSON_RSDNCY_SID           INTEGER           NOT NULL,
  PERSON_SRVC_IND_SID         INTEGER           NOT NULL,
  PERSON_VISA_SID             INTEGER           NOT NULL,
  DATA_ORIGIN                 VARCHAR2(1 BYTE)  NOT NULL,
  CREATED_EW_DTTM             DATE,
  LASTUPD_EW_DTTM             DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_R_PERSON_ASSOC ADD (
  CONSTRAINT PK_UM_R_PERSON_ASSOC
  PRIMARY KEY
  (INSTITUTION_CD, PERSON_ID, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
