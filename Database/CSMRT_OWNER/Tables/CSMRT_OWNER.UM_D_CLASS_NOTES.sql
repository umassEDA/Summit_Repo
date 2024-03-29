DROP TABLE CSMRT_OWNER.UM_D_CLASS_NOTES CASCADE CONSTRAINTS
/

--
-- UM_D_CLASS_NOTES  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_CLASS_NOTES
(
  CRSE_CD             VARCHAR2(6 BYTE)          NOT NULL,
  CRSE_OFFER_NUM      INTEGER                   NOT NULL,
  TERM_CD             VARCHAR2(4 BYTE)          NOT NULL,
  SESSION_CD          VARCHAR2(3 BYTE)          NOT NULL,
  CLASS_SECTION_CD    VARCHAR2(4 BYTE)          NOT NULL,
  CLASS_NOTES_SEQ     INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  INSTITUTION_CD      VARCHAR2(5 BYTE)          NOT NULL,
  CLASS_SID           INTEGER                   NOT NULL,
  PRINT_AT            VARCHAR2(1 BYTE)          NOT NULL,
  CLASS_NOTE_NBR      VARCHAR2(4 BYTE)          NOT NULL,
  PRINT_NOTE_W_O_CLS  VARCHAR2(1 BYTE)          NOT NULL,
  DESCRLONG           VARCHAR2(4000 BYTE),
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_D_CLASS_NOTES ADD (
  CONSTRAINT PK_UM_D_CLASS_NOTES
  PRIMARY KEY
  (CRSE_CD, CRSE_OFFER_NUM, TERM_CD, SESSION_CD, CLASS_SECTION_CD, CLASS_NOTES_SEQ, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
