CREATE TABLE UM_F_FA_STDNT_AID_COMM
(
  INSTITUTION_CD        VARCHAR2(5 BYTE),
  PERSON_ID             VARCHAR2(11 BYTE),
  AID_YEAR              VARCHAR2(4 CHAR),
  SEQ_3C                INTEGER,
  SRC_SYS_ID            VARCHAR2(5 BYTE),
  INSTITUTION_SID       INTEGER,
  PERSON_SID            INTEGER,
  SA_ID_TYPE            VARCHAR2(1 BYTE),
  COMM_DTTM             DATE,
  ADMIN_FUNC_SID        NUMBER,
  COMM_CATEGORY         VARCHAR2(6 BYTE),
  COMM_CATEGORY_SD      VARCHAR2(10 BYTE),
  COMM_CATEGORY_LD      VARCHAR2(30 BYTE),
  COMM_CONTEXT          VARCHAR2(6 BYTE),
  COMM_CONTEXT_SD       VARCHAR2(10 BYTE),
  COMM_CONTEXT_LD       VARCHAR2(30 BYTE),
  COMM_METHOD           VARCHAR2(1 BYTE),
  COMM_METHOD_SD        VARCHAR2(10 BYTE),
  COMM_METHOD_LD        VARCHAR2(30 BYTE),
  DEPT_FUNC_SID         NUMBER,
  COMM_DT               DATE,
  PERSON_ASSIGNED_SID   NUMBER,
  PERSON_COMPLETED_SID  NUMBER,
  COMPLETED_COMM_FLG    VARCHAR2(1 BYTE),
  COMPLETED_DT          DATE,
  UNSUCCESSFUL_FLG      VARCHAR2(1 BYTE),
  OUTCOME_REASON        VARCHAR2(1 BYTE),
  OUTCOME_REASON_SD     VARCHAR2(10 BYTE),
  OUTCOME_REASON_LD     VARCHAR2(30 BYTE),
  SCC_LETTER_CD         VARCHAR2(3 BYTE),
  SCC_LETTER_SD         VARCHAR2(10 BYTE),
  SCC_LETTER_LD         VARCHAR2(30 BYTE),
  LETTER_PRINTED_DT     DATE,
  CHECKLIST_SEQ_3C      INTEGER,
  CHECKLIST_SEQ         INTEGER,
  COMMENT_PRINT_FLAG    VARCHAR2(1 BYTE),
  ORG_CONTACT           INTEGER,
  PROCESS_INSTANCE      NUMBER(10),
  VAR_DATA_SEQ          INTEGER,
  VAR_DATA_SID          INTEGER,
  JOINT_COMM_FLG        VARCHAR2(1 BYTE),
  SCC_COMM_LANG         VARCHAR2(3 BYTE),
  SCC_COMM_MTHD         VARCHAR2(1 BYTE),
  SCC_COMM_PROC         VARCHAR2(1 BYTE),
  COMM_COMMENTS         VARCHAR2(4000 BYTE),
  COMM_ORDER            NUMBER
)
NOLOGGING 
NOCOMPRESS 
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;