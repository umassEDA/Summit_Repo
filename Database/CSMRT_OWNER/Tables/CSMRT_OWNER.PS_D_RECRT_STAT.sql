DROP TABLE CSMRT_OWNER.PS_D_RECRT_STAT CASCADE CONSTRAINTS
/

--
-- PS_D_RECRT_STAT  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_D_RECRT_STAT
(
  RECRT_STAT_SID   INTEGER                      NOT NULL,
  RECRT_STAT_ID    VARCHAR2(4 CHAR)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 CHAR)             NOT NULL,
  RECRT_STAT_SD    VARCHAR2(10 CHAR)            NOT NULL,
  RECRT_STAT_LD    VARCHAR2(30 CHAR)            NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 CHAR)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.PS_D_RECRT_STAT ADD (
  CONSTRAINT PK_PS_D_RECRT_STAT
  PRIMARY KEY
  (RECRT_STAT_SID)
  RELY
  DISABLE NOVALIDATE)
/
