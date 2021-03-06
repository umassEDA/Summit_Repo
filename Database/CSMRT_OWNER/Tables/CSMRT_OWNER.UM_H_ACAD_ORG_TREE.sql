CREATE TABLE UM_H_ACAD_ORG_TREE
(
  TREE_NAME        VARCHAR2(30 CHAR),
  EFFDT            DATE,
  SRC_SYS_ID       VARCHAR2(5 CHAR),
  ACAD_PLAN_SID    NUMBER(10),
  ACAD_ORG_L6_SID  NUMBER(10),
  ACAD_ORG_L5_SID  NUMBER(10),
  ACAD_ORG_L4_SID  NUMBER(10),
  ACAD_ORG_L3_SID  NUMBER(10),
  ACAD_ORG_L2_SID  NUMBER(10),
  ACAD_ORG_L1_SID  NUMBER(10),
  PERCENT_OWNED    NUMBER(6,3),
  LOAD_ERROR       VARCHAR2(1 CHAR),
  DATA_ORIGIN      VARCHAR2(1 CHAR),
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)
)
NOLOGGING 
NOCOMPRESS 
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
