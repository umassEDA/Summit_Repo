CREATE TABLE PS_D_ACAD_GRP
(
  ACAD_GRP_SID      INTEGER,
  EFFDT             DATE,
  INSTITUTION_CD    VARCHAR2(5 CHAR),
  ACAD_GRP_CD       VARCHAR2(5 CHAR),
  SRC_SYS_ID        VARCHAR2(5 CHAR),
  EFFDT_START       DATE,
  EFFDT_END         DATE,
  EFFDT_ORDER       INTEGER,
  EFF_STAT_CD       VARCHAR2(1 CHAR),
  ACAD_GRP_SD       VARCHAR2(10 CHAR),
  ACAD_GRP_LD       VARCHAR2(30 CHAR),
  ACAD_GRP_CD_DESC  VARCHAR2(50 CHAR),
  DATA_ORIGIN       VARCHAR2(1 CHAR),
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;