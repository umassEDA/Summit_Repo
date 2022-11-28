DROP TABLE CSSTG_OWNER.PS_RECRUITER_CAT CASCADE CONSTRAINTS
/

--
-- PS_RECRUITER_CAT  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_RECRUITER_CAT
(
  INSTITUTION       VARCHAR2(5 BYTE)            NOT NULL,
  ACAD_CAREER       VARCHAR2(4 BYTE)            NOT NULL,
  RECRUITER_ID      VARCHAR2(11 BYTE)           NOT NULL,
  EFFDT             DATE                        NOT NULL,
  ASSIGNMENT_STAGE  VARCHAR2(1 BYTE)            NOT NULL,
  RECRUITMENT_CAT   VARCHAR2(4 BYTE)            NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  LOAD_ERROR        VARCHAR2(1 BYTE)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL
)
COMPRESS BASIC
/
