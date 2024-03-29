DROP TABLE CSMRT_OWNER.UM_F_ADM_APPL_PRSPCT_CPPS CASCADE CONSTRAINTS
/

--
-- UM_F_ADM_APPL_PRSPCT_CPPS  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_ADM_APPL_PRSPCT_CPPS
(
  ADM_APPL_SID        INTEGER                   NOT NULL,
  PRSPCT_CAR_SID      INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  INSTITUTION_CD      VARCHAR2(5 BYTE)          NOT NULL,
  ACAD_CAR_CD         VARCHAR2(4 BYTE),
  CAR_ADMIT_TERM_SID  INTEGER                   NOT NULL,
  ADMIT_TERM          VARCHAR2(4 BYTE),
  EMPLID              VARCHAR2(11 BYTE),
  INSTITUTION_SID     INTEGER                   NOT NULL,
  ACAD_CAR_SID        INTEGER                   NOT NULL,
  ADMIT_TERM_SID      INTEGER                   NOT NULL,
  PERSON_SID          INTEGER                   NOT NULL,
  ACAD_PROG_SID       INTEGER                   NOT NULL,
  ACAD_PLAN_SID       INTEGER                   NOT NULL,
  ACAD_SPLAN_SID      INTEGER                   NOT NULL,
  PRSPCT_DSP_CNT      INTEGER
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_ADM_APPL_PRSPCT_CPPS ADD (
  CONSTRAINT PK_UM_F_ADM_APPL_PRSPCT_CPPS
  PRIMARY KEY
  (ADM_APPL_SID, PRSPCT_CAR_SID, ACAD_PROG_SID, ACAD_PLAN_SID, ACAD_SPLAN_SID, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
