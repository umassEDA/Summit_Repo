DROP TABLE CSSTG_OWNER.PS_ADM_APPL_RCTER CASCADE CONSTRAINTS
/

--
-- PS_ADM_APPL_RCTER  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ADM_APPL_RCTER
(
  EMPLID            VARCHAR2(11 BYTE)           NOT NULL,
  ACAD_CAREER       VARCHAR2(4 BYTE)            NOT NULL,
  STDNT_CAR_NBR     INTEGER                     NOT NULL,
  ADM_APPL_NBR      VARCHAR2(8 BYTE)            NOT NULL,
  INSTITUTION       VARCHAR2(5 BYTE)            NOT NULL,
  RECRUITMENT_CAT   VARCHAR2(4 BYTE)            NOT NULL,
  RECRUITER_ID      VARCHAR2(11 BYTE)           NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  PROMPT_RECRUITER  VARCHAR2(1 BYTE)            NOT NULL,
  PROMPT_REGN_CATG  VARCHAR2(1 BYTE)            NOT NULL,
  PRIMARY_FLAG      VARCHAR2(1 BYTE)            NOT NULL,
  LOAD_ERROR        VARCHAR2(1 BYTE)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL
)
COMPRESS BASIC
/
