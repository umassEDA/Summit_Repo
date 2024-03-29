DROP TABLE CSMRT_OWNER.UM_F_COMM_PERSON CASCADE CONSTRAINTS
/

--
-- UM_F_COMM_PERSON  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_COMM_PERSON
(
  COMMON_ID             VARCHAR2(11 BYTE)       NOT NULL,
  SEQ_3C                INTEGER                 NOT NULL,
  SRC_SYS_ID            VARCHAR2(5 BYTE)        NOT NULL,
  INSTITUTION           VARCHAR2(5 BYTE)        NOT NULL,
  INSTITUTION_SID       INTEGER                 NOT NULL,
  PERSON_SID            INTEGER                 NOT NULL,
  ADMIN_FUNC_SID        INTEGER                 NOT NULL,
  DEPT_FUNC_SID         INTEGER                 NOT NULL,
  PERSON_ASSIGNED_SID   INTEGER                 NOT NULL,
  PERSON_COMPLETED_SID  INTEGER                 NOT NULL,
  VAR_DATA_SID          INTEGER                 NOT NULL,
  CHECKLIST_SEQ_3C      INTEGER                 NOT NULL,
  CHECKLIST_SEQ         INTEGER                 NOT NULL,
  COMM_CATEGORY         VARCHAR2(6 BYTE)        NOT NULL,
  COMM_CATEGORY_SD      VARCHAR2(10 BYTE)       NOT NULL,
  COMM_CATEGORY_LD      VARCHAR2(30 BYTE)       NOT NULL,
  COMM_CONTEXT          VARCHAR2(6 BYTE)        NOT NULL,
  COMM_CONTEXT_SD       VARCHAR2(10 BYTE)       NOT NULL,
  COMM_CONTEXT_LD       VARCHAR2(30 BYTE)       NOT NULL,
  COMM_DT               DATE,
  COMM_DTTM             DATE,
  COMM_METHOD           VARCHAR2(1 BYTE)        NOT NULL,
  COMPLETED_COMM_FLG    VARCHAR2(1 BYTE)        NOT NULL,
  COMPLETED_DT          DATE,
  COMMENT_PRINT_FLAG    VARCHAR2(1 BYTE)        NOT NULL,
  JOINT_COMM_FLG        VARCHAR2(1 BYTE)        NOT NULL,
  LETTER_PRINTED_DT     DATE,
  ORG_CONTACT           INTEGER                 NOT NULL,
  OUTCOME_REASON        VARCHAR2(1 BYTE)        NOT NULL,
  PROCESS_INSTANCE      NUMBER(10)              NOT NULL,
  SA_ID_TYPE            VARCHAR2(1 BYTE)        NOT NULL,
  SCC_COMM_LANG         VARCHAR2(3 BYTE)        NOT NULL,
  SCC_COMM_MTHD         VARCHAR2(1 BYTE)        NOT NULL,
  SCC_COMM_PROC         VARCHAR2(1 BYTE)        NOT NULL,
  SCC_LETTER_CD         VARCHAR2(3 BYTE)        NOT NULL,
  SCC_LETTER_SD         VARCHAR2(10 BYTE)       NOT NULL,
  SCC_LETTER_LD         VARCHAR2(30 BYTE)       NOT NULL,
  UNSUCCESSFUL_FLG      VARCHAR2(1 BYTE)        NOT NULL,
  VAR_DATA_SEQ          INTEGER                 NOT NULL,
  LOAD_ERROR            VARCHAR2(1 BYTE)        NOT NULL,
  DATA_ORIGIN           VARCHAR2(1 BYTE)        NOT NULL,
  CREATED_EW_DTTM       DATE,
  LASTUPD_EW_DTTM       DATE,
  BATCH_SID             NUMBER(10)              NOT NULL,
  COMM_COMMENTS         VARCHAR2(4000 BYTE)
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_F_COMM_PERSON ADD (
  CONSTRAINT PK_UM_F_COMM_PERSON
  PRIMARY KEY
  (COMMON_ID, SEQ_3C, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
