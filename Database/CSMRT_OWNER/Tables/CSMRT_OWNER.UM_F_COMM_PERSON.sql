CREATE TABLE UM_F_COMM_PERSON
(
  COMMON_ID             VARCHAR2(11 BYTE),
  SEQ_3C                INTEGER,
  SRC_SYS_ID            VARCHAR2(5 BYTE),
  INSTITUTION           VARCHAR2(5 BYTE),
  INSTITUTION_SID       INTEGER,
  PERSON_SID            INTEGER,
  ADMIN_FUNC_SID        INTEGER,
  DEPT_FUNC_SID         INTEGER,
  PERSON_ASSIGNED_SID   INTEGER,
  PERSON_COMPLETED_SID  INTEGER,
  VAR_DATA_SID          INTEGER,
  CHECKLIST_SEQ_3C      INTEGER,
  CHECKLIST_SEQ         INTEGER,
  COMM_CATEGORY         VARCHAR2(6 BYTE),
  COMM_CATEGORY_SD      VARCHAR2(10 BYTE),
  COMM_CATEGORY_LD      VARCHAR2(30 BYTE),
  COMM_CONTEXT          VARCHAR2(6 BYTE),
  COMM_CONTEXT_SD       VARCHAR2(10 BYTE),
  COMM_CONTEXT_LD       VARCHAR2(30 BYTE),
  COMM_DT               DATE,
  COMM_DTTM             DATE,
  COMM_METHOD           VARCHAR2(1 BYTE),
  COMPLETED_COMM_FLG    VARCHAR2(1 BYTE),
  COMPLETED_DT          DATE,
  COMMENT_PRINT_FLAG    VARCHAR2(1 BYTE),
  JOINT_COMM_FLG        VARCHAR2(1 BYTE),
  LETTER_PRINTED_DT     DATE,
  ORG_CONTACT           INTEGER,
  OUTCOME_REASON        VARCHAR2(1 BYTE),
  PROCESS_INSTANCE      NUMBER(10),
  SA_ID_TYPE            VARCHAR2(1 BYTE),
  SCC_COMM_LANG         VARCHAR2(3 BYTE),
  SCC_COMM_MTHD         VARCHAR2(1 BYTE),
  SCC_COMM_PROC         VARCHAR2(1 BYTE),
  SCC_LETTER_CD         VARCHAR2(3 BYTE),
  SCC_LETTER_SD         VARCHAR2(10 BYTE),
  SCC_LETTER_LD         VARCHAR2(30 BYTE),
  UNSUCCESSFUL_FLG      VARCHAR2(1 BYTE),
  VAR_DATA_SEQ          INTEGER,
  LOAD_ERROR            VARCHAR2(1 BYTE),
  DATA_ORIGIN           VARCHAR2(1 BYTE),
  CREATED_EW_DTTM       DATE,
  LASTUPD_EW_DTTM       DATE,
  BATCH_SID             NUMBER(10),
  COMM_COMMENTS         VARCHAR2(4000 BYTE)
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
