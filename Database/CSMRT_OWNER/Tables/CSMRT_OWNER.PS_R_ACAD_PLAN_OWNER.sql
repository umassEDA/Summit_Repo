CREATE TABLE PS_R_ACAD_PLAN_OWNER
(
  INSTITUTION_CD   VARCHAR2(5 BYTE),
  ACAD_PLAN_CD     VARCHAR2(10 BYTE),
  EFFDT            DATE,
  ACAD_ORG_CD      VARCHAR2(10 BYTE),
  SRC_SYS_ID       VARCHAR2(5 BYTE),
  EFFDT_START      DATE,
  EFFDT_END        DATE,
  EFFDT_ORDER      INTEGER,
  INSTITUTION_SID  INTEGER,
  ACAD_PLAN_SID    INTEGER,
  ACAD_ORG_SID     INTEGER,
  PERCENT_OWNED    NUMBER(6,3),
  DATA_ORIGIN      VARCHAR2(1 BYTE),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
