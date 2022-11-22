DROP TABLE CSMRT_OWNER.PS_R_ACAD_ORG_FS_OWN CASCADE CONSTRAINTS
/

--
-- PS_R_ACAD_ORG_FS_OWN  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_R_ACAD_ORG_FS_OWN
(
  INSTITUTION_CD   VARCHAR2(5 BYTE)             NOT NULL,
  ACAD_ORG_CD      VARCHAR2(10 BYTE)            NOT NULL,
  DEPTID           VARCHAR2(10 BYTE)            NOT NULL,
  EFFDT            DATE                         NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  EFFDT_START      DATE                         NOT NULL,
  EFFDT_END        DATE                         NOT NULL,
  EFFDT_ORDER      INTEGER                      NOT NULL,
  INSTITUTION_SID  INTEGER                      NOT NULL,
  ACAD_ORG_SID     INTEGER                      NOT NULL,
  PERCENT_OWNED    NUMBER(6,3)                  NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE                         DEFAULT SYSDATE,
  LASTUPD_EW_DTTM  DATE                         DEFAULT SYSDATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.PS_R_ACAD_ORG_FS_OWN ADD (
  CONSTRAINT PK_PS_R_ACAD_ORG_FS_OWN
  PRIMARY KEY
  (INSTITUTION_CD, DEPTID, EFFDT, ACAD_ORG_CD, SRC_SYS_ID)
  RELY
  DISABLE NOVALIDATE)
/
