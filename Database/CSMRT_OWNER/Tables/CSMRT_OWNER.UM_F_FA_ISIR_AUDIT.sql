CREATE TABLE UM_F_FA_ISIR_AUDIT
(
  PERSON_ID           VARCHAR2(11 BYTE),
  INSTITUTION_CD      VARCHAR2(5 BYTE),
  AID_YEAR            VARCHAR2(4 BYTE),
  DTTM_STAMP          TIMESTAMP(6),
  ISIR_FIELD_NUM      VARCHAR2(4 BYTE),
  SRC_SYS_ID          VARCHAR2(5 BYTE),
  PERSON_SID          INTEGER,
  INSTITUTION_SID     INTEGER,
  ISIR_TXN_NBR        INTEGER,
  OPRID               VARCHAR2(30 BYTE),
  OLDVALUE            VARCHAR2(65 BYTE),
  NEWVALUE            VARCHAR2(65 BYTE),
  CORRECTION_STATUS   VARCHAR2(1 BYTE),
  CORR_STAT_DT        DATE,
  RECNAME             VARCHAR2(15 BYTE),
  FIELDNAME           VARCHAR2(18 BYTE),
  ISIR_FIELD_LENGTH   INTEGER,
  ISIR_FIELD_TYPE     VARCHAR2(1 BYTE),
  ISIR_CORR_TO_BLANK  VARCHAR2(1 BYTE),
  DESCR               VARCHAR2(30 BYTE),
  DATA_ORIGIN         VARCHAR2(1 BYTE),
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
