DROP TABLE CSMRT_OWNER.PS_R_CHKLST_ITEM CASCADE CONSTRAINTS
/

--
-- PS_R_CHKLST_ITEM  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_R_CHKLST_ITEM
(
  COMMON_ID         VARCHAR2(11 CHAR)           NOT NULL,
  SEQ_3C            INTEGER                     NOT NULL,
  CHECKLIST_SEQ     INTEGER                     NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 CHAR)            NOT NULL,
  INSTITUTION_CD    VARCHAR2(5 CHAR)            NOT NULL,
  INSTITUTION_SID   INTEGER                     NOT NULL,
  PERSON_SID        INTEGER                     NOT NULL,
  ITEM_CD_SID       INTEGER                     NOT NULL,
  ITEM_STATUS       VARCHAR2(1 CHAR),
  ITEM_STATUS_SD    VARCHAR2(10 CHAR),
  ITEM_STATUS_LD    VARCHAR2(30 CHAR),
  STATUS_DT         DATE,
  STATUS_CHANGE_ID  VARCHAR2(11 CHAR),
  DUE_DT            DATE,
  CURRENCY_CD       VARCHAR2(3 CHAR),
  DUE_AMT           NUMBER(16,2),
  RESPONSIBLE_ID    VARCHAR2(11 CHAR),
  ASSOC_ID          VARCHAR2(11 CHAR),
  NAME              VARCHAR2(50 CHAR),
  COMM_KEY          VARCHAR2(8 CHAR),
  ITEM_ORDER        INTEGER                     NOT NULL,
  LOAD_ERROR        VARCHAR2(1 CHAR)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 CHAR)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL
)
NOCOMPRESS
/


ALTER TABLE CSMRT_OWNER.PS_R_CHKLST_ITEM ADD (
  CONSTRAINT PK_PS_R_CHKLST_ITEM
  PRIMARY KEY
  (COMMON_ID, SEQ_3C, CHECKLIST_SEQ, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
