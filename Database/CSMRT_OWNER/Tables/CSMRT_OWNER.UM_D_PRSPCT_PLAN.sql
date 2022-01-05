CREATE TABLE UM_D_PRSPCT_PLAN
(
  PRSPCT_PLAN_SID  NUMBER(10),
  INSTITUTION_CD   VARCHAR2(5 BYTE),
  ACAD_CAR_CD      VARCHAR2(4 BYTE),
  ADMIT_TERM       VARCHAR2(4 BYTE),
  EMPLID           VARCHAR2(11 BYTE),
  ACAD_PROG_CD     VARCHAR2(5 BYTE),
  ACAD_PLAN_CD     VARCHAR2(10 BYTE),
  SRC_SYS_ID       VARCHAR2(5 BYTE),
  ACAD_PLAN_SID    NUMBER(10),
  ACAD_PROG_SID    NUMBER(10),
  ADM_RECR_CTR     VARCHAR2(4 BYTE),
  PRSPCT_PROG_SID  NUMBER(10),
  RECRT_CNTR_SID   NUMBER(10),
  LOAD_ERROR       VARCHAR2(1 BYTE),
  DATA_ORIGIN      VARCHAR2(1 BYTE),
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