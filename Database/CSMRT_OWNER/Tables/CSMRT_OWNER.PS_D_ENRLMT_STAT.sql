DROP TABLE CSMRT_OWNER.PS_D_ENRLMT_STAT CASCADE CONSTRAINTS
/

--
-- PS_D_ENRLMT_STAT  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_D_ENRLMT_STAT
(
  ENRLMT_STAT_SID  INTEGER                      NOT NULL,
  ENRLMT_STAT_ID   VARCHAR2(4 CHAR)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 CHAR)             NOT NULL,
  ENRLMT_STAT_SD   VARCHAR2(10 CHAR)            NOT NULL,
  ENRLMT_STAT_LD   VARCHAR2(30 CHAR)            NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 CHAR)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.PS_D_ENRLMT_STAT ADD (
  CONSTRAINT PK_PS_D_ENRLMT_STAT
  PRIMARY KEY
  (ENRLMT_STAT_SID)
  RELY
  DISABLE NOVALIDATE)
/
