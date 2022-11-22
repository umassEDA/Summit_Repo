DROP TABLE CSMRT_OWNER.PS_D_DEG_HONORS CASCADE CONSTRAINTS
/

--
-- PS_D_DEG_HONORS  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_D_DEG_HONORS
(
  DEG_HONORS_SID   NUMBER(10)                   NOT NULL,
  INSTITUTION_CD   VARCHAR2(5 CHAR)             NOT NULL,
  HONORS_TYPE_CD   VARCHAR2(2 CHAR)             NOT NULL,
  HONORS_CD        VARCHAR2(3 CHAR)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 CHAR)             NOT NULL,
  EFFDT            DATE,
  EFF_STAT_CD      VARCHAR2(1 CHAR)             NOT NULL,
  HONORS_TYPE_SD   VARCHAR2(10 CHAR)            NOT NULL,
  HONORS_TYPE_LD   VARCHAR2(30 CHAR)            NOT NULL,
  HONORS_SD        VARCHAR2(10 CHAR)            NOT NULL,
  HONORS_LD        VARCHAR2(30 CHAR)            NOT NULL,
  HONORS_FD        VARCHAR2(50 CHAR)            NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 CHAR)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.PS_D_DEG_HONORS ADD (
  CONSTRAINT PK_PS_D_DEG_HONORS
  PRIMARY KEY
  (DEG_HONORS_SID)
  RELY
  DISABLE NOVALIDATE)
/
