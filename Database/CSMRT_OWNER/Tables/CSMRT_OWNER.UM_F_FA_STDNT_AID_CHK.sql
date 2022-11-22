DROP TABLE CSMRT_OWNER.UM_F_FA_STDNT_AID_CHK CASCADE CONSTRAINTS
/

--
-- UM_F_FA_STDNT_AID_CHK  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_F_FA_STDNT_AID_CHK
(
  INSTITUTION_CD         VARCHAR2(5 BYTE)       NOT NULL,
  PERSON_ID              VARCHAR2(11 BYTE)      NOT NULL,
  AID_YEAR               VARCHAR2(4 CHAR)       NOT NULL,
  SEQ_3C                 INTEGER                NOT NULL,
  CHECKLIST_SEQ          INTEGER                NOT NULL,
  SRC_SYS_ID             VARCHAR2(5 BYTE)       NOT NULL,
  INSTITUTION_SID        INTEGER                NOT NULL,
  PERSON_SID             INTEGER                NOT NULL,
  COMMON_ID              VARCHAR2(11 BYTE),
  CHKLIST_DT             DATE,
  CHKLIST_TM             DATE,
  ADMIN_FUNC_SID         NUMBER,
  CHKLIST_CD_SID         NUMBER,
  CHKLIST_STAT_SID       NUMBER,
  STATUS_DT              DATE,
  STAT_CHG_SID           NUMBER,
  DUE_DT                 DATE,
  DEPT_SID               NUMBER,
  RESPONSIBLE_SID        NUMBER,
  VAR_DATA_SID           NUMBER,
  TRACKING_SEQ           INTEGER,
  DUE_AMT                NUMBER(16,2),
  ADMIN_FUNC_AREA        VARCHAR2(10 CHAR),
  ADM_APPL_NBR           VARCHAR2(8 CHAR),
  CHECKLIST_CD           VARCHAR2(6 CHAR),
  CHKLIST_STAT_ID        VARCHAR2(4 CHAR),
  ITEM_CD_SID            INTEGER,
  CHKLST_ITEM_CD         VARCHAR2(6 CHAR),
  ITEM_STATUS            VARCHAR2(1 CHAR),
  ITEM_STATUS_SD         VARCHAR2(10 CHAR),
  ITEM_STATUS_LD         VARCHAR2(30 CHAR),
  ITEM_STATUS_DT         DATE,
  ITEM_STATUS_CHANGE_ID  VARCHAR2(11 CHAR),
  ITEM_DUE_DT            DATE,
  ITEM_DUE_AMT           NUMBER(16,2),
  ITEM_RESPONSIBLE_ID    VARCHAR2(11 CHAR),
  ASSOC_ID               VARCHAR2(11 CHAR),
  NAME                   VARCHAR2(50 CHAR),
  COMM_KEY               VARCHAR2(8 CHAR),
  CHKLIST_ORDER          INTEGER,
  CHKLIST_CD_ORDER       INTEGER,
  CHKLIST_ITEM_ORDER     INTEGER,
  DATA_ORIGIN            VARCHAR2(1 BYTE),
  CREATED_EW_DTTM        DATE,
  LASTUPD_EW_DTTM        DATE,
  COMM_COMMENTS          VARCHAR2(4000 BYTE)
)
NOCOMPRESS
/


ALTER TABLE CSMRT_OWNER.UM_F_FA_STDNT_AID_CHK ADD (
  CONSTRAINT PK_UM_F_FA_STDNT_AID_CHK
  PRIMARY KEY
  (INSTITUTION_CD, PERSON_ID, AID_YEAR, SEQ_3C, CHECKLIST_SEQ, SRC_SYS_ID)
  RELY
  ENABLE VALIDATE)
/
