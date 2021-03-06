CREATE TABLE UM_F_ADM_APPL_CHK
(
  APPLCNT_SID            INTEGER,
  ADM_APPL_NBR           VARCHAR2(8 BYTE),
  SEQ_3C                 INTEGER,
  CHECKLIST_SEQ          INTEGER,
  SRC_SYS_ID             VARCHAR2(5 BYTE),
  COMMON_ID              VARCHAR2(11 BYTE),
  INSTITUTION_SID        INTEGER,
  ADMIN_FUNC_SID         INTEGER,
  CHKLIST_CD_SID         INTEGER,
  CHKLIST_STAT_SID       INTEGER,
  ITEM_CD_SID            INTEGER,
  RESPONSIBLE_SID        INTEGER,
  VAR_DATA_SID           INTEGER,
  CHKLIST_DT             DATE,
  CHKLIST_TM             DATE,
  DUE_AMT                NUMBER(16,2),
  DUE_DT                 DATE,
  ITEM_DUE_DT            DATE,
  ITEM_DUE_AMT           NUMBER(16,2),
  ITEM_RESPONSIBLE_ID    VARCHAR2(11 CHAR),
  ITEM_STATUS            VARCHAR2(1 CHAR),
  ITEM_STATUS_SD         VARCHAR2(10 CHAR),
  ITEM_STATUS_LD         VARCHAR2(30 CHAR),
  ITEM_STATUS_DT         DATE,
  ITEM_STATUS_CHANGE_ID  VARCHAR2(11 CHAR),
  STATUS_DT              DATE,
  TRACKING_SEQ           INTEGER,
  ASSOC_ID               VARCHAR2(11 CHAR),
  NAME                   VARCHAR2(50 CHAR),
  COMM_KEY               VARCHAR2(8 CHAR),
  CHKLIST_ORDER          NUMBER
)
NOLOGGING 
COMPRESS BASIC
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
