DROP TABLE CSMRT_OWNER.PS_D_STDNT_GRP CASCADE CONSTRAINTS
/

--
-- PS_D_STDNT_GRP  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_D_STDNT_GRP
(
  STDNT_GRP_SID    INTEGER                      NOT NULL,
  INSTITUTION_CD   VARCHAR2(5 CHAR)             NOT NULL,
  STDNT_GRP_CD     VARCHAR2(4 CHAR)             NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 CHAR)             NOT NULL,
  EFFDT            DATE,
  EFF_STAT_CD      VARCHAR2(1 CHAR)             NOT NULL,
  STDNT_GRP_SD     VARCHAR2(10 CHAR)            NOT NULL,
  STDNT_GRP_LD     VARCHAR2(30 CHAR)            NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 CHAR)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.PS_D_STDNT_GRP ADD (
  CONSTRAINT PK_PS_D_STDNT_GRP
  PRIMARY KEY
  (STDNT_GRP_SID)
  RELY
  DISABLE NOVALIDATE)
/
