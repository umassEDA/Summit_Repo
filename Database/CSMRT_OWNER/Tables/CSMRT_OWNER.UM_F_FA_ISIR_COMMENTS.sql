CREATE TABLE UM_F_FA_ISIR_COMMENTS
(
  INSTITUTION_CD    VARCHAR2(5 BYTE),
  PERSON_ID         VARCHAR2(11 BYTE),
  AID_YEAR          VARCHAR2(4 BYTE),
  COMMENT_CODE      VARCHAR2(3 BYTE),
  SRC_SYS_ID        VARCHAR2(5 BYTE),
  EFFDT             DATE,
  EFFSEQ            INTEGER,
  INSTITUTION_SID   INTEGER,
  PERSON_SID        INTEGER,
  SFA_DB_MATCH_USE  VARCHAR2(2 BYTE),
  SEVERITY_LVL      VARCHAR2(1 BYTE),
  SEVERITY_LVL_LD   VARCHAR2(30 BYTE),
  DESCRLONG         VARCHAR2(4000 BYTE),
  LOAD_ERROR        VARCHAR2(1 BYTE),
  DATA_ORIGIN       VARCHAR2(1 BYTE),
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         INTEGER
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
