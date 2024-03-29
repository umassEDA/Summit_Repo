DROP TABLE CSMRT_OWNER.PS_D_CHKLST_CD CASCADE CONSTRAINTS
/

--
-- PS_D_CHKLST_CD  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_D_CHKLST_CD
(
  CHKLIST_CD_SID      INTEGER                   NOT NULL,
  INSTITUTION_CD      VARCHAR2(5 BYTE)          NOT NULL,
  CHECKLIST_CD        VARCHAR2(6 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  EFFDT               DATE,
  EFF_STAT_CD         VARCHAR2(1 BYTE)          NOT NULL,
  CHKLIST_CD_SD       VARCHAR2(10 BYTE)         NOT NULL,
  CHKLIST_CD_LD       VARCHAR2(30 BYTE)         NOT NULL,
  ADMIN_FUNCTION      VARCHAR2(4 BYTE)          NOT NULL,
  COMM_KEY            VARCHAR2(8 BYTE)          NOT NULL,
  DEFAULT_DUE_DT      DATE,
  DUE_DAYS            INTEGER                   NOT NULL,
  SCC_CHECKLIST_TYPE  VARCHAR2(3 BYTE)          NOT NULL,
  SCC_TODO_SS_DISP    VARCHAR2(1 BYTE)          NOT NULL,
  TRACKING_GROUP      VARCHAR2(6 BYTE)          NOT NULL,
  TRACKING_GROUP_SD   VARCHAR2(10 BYTE)         NOT NULL,
  TRACKING_GROUP_LD   VARCHAR2(30 BYTE)         NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.PS_D_CHKLST_CD ADD (
  CONSTRAINT PK_PS_D_CHKLST_CD
  PRIMARY KEY
  (CHKLIST_CD_SID)
  RELY
  DISABLE NOVALIDATE)
/
