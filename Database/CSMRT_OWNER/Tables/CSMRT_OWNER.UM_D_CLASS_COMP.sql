DROP TABLE CSMRT_OWNER.UM_D_CLASS_COMP CASCADE CONSTRAINTS
/

--
-- UM_D_CLASS_COMP  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_CLASS_COMP
(
  CRSE_CD            VARCHAR2(6 BYTE)           NOT NULL,
  CRSE_OFFER_NUM     INTEGER                    NOT NULL,
  TERM_CD            VARCHAR2(4 BYTE)           NOT NULL,
  SESSION_CD         VARCHAR2(3 BYTE)           NOT NULL,
  ASSOCIATED_CLASS   INTEGER                    NOT NULL,
  SSR_COMP_CD        VARCHAR2(3 BYTE)           NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  CLASS_ASSOC_SID    INTEGER                    NOT NULL,
  SSR_COMP_SID       INTEGER                    NOT NULL,
  OPTIONAL_SECTION   VARCHAR2(1 BYTE),
  CONTACT_HOURS      NUMBER(7,3),
  FINAL_EXAM         VARCHAR2(2 BYTE),
  AUTO_CREATE_CMPNT  VARCHAR2(1 BYTE),
  WEEK_WORKLOAD_HRS  NUMBER(5,2),
  DATA_ORIGIN        VARCHAR2(1 BYTE),
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE
)
NOCOMPRESS
/


ALTER TABLE CSMRT_OWNER.UM_D_CLASS_COMP ADD (
  CONSTRAINT PK_UM_D_CLASS_COMP
  PRIMARY KEY
  (CRSE_CD, CRSE_OFFER_NUM, TERM_CD, SESSION_CD, ASSOCIATED_CLASS, SSR_COMP_CD, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
