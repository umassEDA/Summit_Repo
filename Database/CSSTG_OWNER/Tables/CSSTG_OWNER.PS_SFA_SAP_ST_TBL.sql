DROP TABLE CSSTG_OWNER.PS_SFA_SAP_ST_TBL CASCADE CONSTRAINTS
/

--
-- PS_SFA_SAP_ST_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_SFA_SAP_ST_TBL
(
  INSTITUTION       VARCHAR2(5 BYTE)            NOT NULL,
  ACAD_CAREER       VARCHAR2(4 BYTE)            NOT NULL,
  EFFDT             DATE,
  SFA_SAP_STATUS    VARCHAR2(4 BYTE)            NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  EFF_STATUS        VARCHAR2(1 BYTE)            NOT NULL,
  SFA_SAP_SEVERITY  INTEGER                     NOT NULL,
  DESCRSHORT        VARCHAR2(10 BYTE)           NOT NULL,
  DESCR             VARCHAR2(30 BYTE)           NOT NULL,
  SAT_ACADEMIC_PRG  VARCHAR2(1 BYTE)            NOT NULL,
  LOAD_ERROR        VARCHAR2(1 BYTE)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL
)
COMPRESS BASIC
/
