DROP TABLE CSMRT_OWNER.UM_R_PERSON_RSDNCY CASCADE CONSTRAINTS
/

--
-- UM_R_PERSON_RSDNCY  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_R_PERSON_RSDNCY
(
  INSTITUTION_CD            VARCHAR2(5 BYTE)    NOT NULL,
  ACAD_CAR_CD               VARCHAR2(4 BYTE)    NOT NULL,
  EFF_TERM_CD               VARCHAR2(4 BYTE)    NOT NULL,
  PERSON_ID                 VARCHAR2(11 BYTE)   NOT NULL,
  SRC_SYS_ID                VARCHAR2(5 BYTE)    NOT NULL,
  INSTITUTION_SID           INTEGER             NOT NULL,
  ACAD_CAR_SID              INTEGER             NOT NULL,
  EFF_TERM_SID              INTEGER             NOT NULL,
  PERSON_SID                INTEGER             NOT NULL,
  RSDNCY_SID                INTEGER             NOT NULL,
  RSDNCY_ID                 VARCHAR2(5 BYTE)    NOT NULL,
  RSDNCY_LD                 VARCHAR2(30 BYTE)   NOT NULL,
  ADM_RSDNCY_SID            INTEGER             NOT NULL,
  ADM_RSDNCY_ID             VARCHAR2(5 BYTE)    NOT NULL,
  ADM_RSDNCY_LD             VARCHAR2(30 BYTE)   NOT NULL,
  FA_FED_RSDNCY_SID         INTEGER             NOT NULL,
  FA_FED_RSDNCY_ID          VARCHAR2(5 BYTE)    NOT NULL,
  FA_FED_RSDNCY_LD          VARCHAR2(30 BYTE)   NOT NULL,
  FA_ST_RSDNCY_SID          INTEGER             NOT NULL,
  FA_ST_RSDNCY_ID           VARCHAR2(5 BYTE)    NOT NULL,
  FA_ST_RSDNCY_LD           VARCHAR2(30 BYTE)   NOT NULL,
  TUITION_RSDNCY_SID        INTEGER             NOT NULL,
  TUITION_RSDNCY_ID         VARCHAR2(5 BYTE)    NOT NULL,
  TUITION_RSDNCY_LD         VARCHAR2(30 BYTE)   NOT NULL,
  RSDNCY_TERM_SID           INTEGER             NOT NULL,
  RSDNCY_TERM_CD            VARCHAR2(4 BYTE)    NOT NULL,
  ADM_EXCPT_SID             INTEGER             NOT NULL,
  ADM_RSDNCY_EXCPTN         VARCHAR2(5 BYTE)    NOT NULL,
  ADM_RSDNCY_EXCPTN_LD      VARCHAR2(30 BYTE)   NOT NULL,
  FA_FED_EXCPT_SID          INTEGER             NOT NULL,
  FA_FED_RSDNCY_EXCPTN      VARCHAR2(5 BYTE)    NOT NULL,
  FA_FED_RSDNCY_EXCPTN_LD   VARCHAR2(30 BYTE)   NOT NULL,
  FA_ST_EXCPT_SID           INTEGER             NOT NULL,
  FA_ST_RSDNCY_EXCPTN       VARCHAR2(5 BYTE)    NOT NULL,
  FA_ST_RSDNCY_EXCPTN_LD    VARCHAR2(30 BYTE)   NOT NULL,
  TUITION_EXCPT_SID         INTEGER             NOT NULL,
  TUITION_RSDNCY_EXCPTN     VARCHAR2(5 BYTE)    NOT NULL,
  TUITION_RSDNCY_EXCPTN_LD  VARCHAR2(30 BYTE)   NOT NULL,
  RSDNCY_DT                 DATE,
  APPEAL_EFFDT              DATE,
  APPEAL_STATUS             VARCHAR2(1 BYTE),
  APPEAL_STATUS_SD          VARCHAR2(10 BYTE),
  APPEAL_STATUS_LD          VARCHAR2(30 BYTE),
  APPEAL_COMMENTS           VARCHAR2(4000 BYTE),
  DATA_ORIGIN               VARCHAR2(1 BYTE)    NOT NULL,
  CREATED_EW_DTTM           DATE,
  LASTUPD_EW_DTTM           DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_R_PERSON_RSDNCY ADD (
  CONSTRAINT PK_UM_R_PERSON_RSDNCY
  PRIMARY KEY
  (INSTITUTION_CD, ACAD_CAR_CD, EFF_TERM_CD, PERSON_ID, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
