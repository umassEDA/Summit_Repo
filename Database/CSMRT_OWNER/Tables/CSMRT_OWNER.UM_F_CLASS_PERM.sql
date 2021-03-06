CREATE TABLE UM_F_CLASS_PERM
(
  CRSE_CD             VARCHAR2(6 BYTE),
  CRSE_OFFER_NUM      INTEGER,
  TERM_CD             VARCHAR2(4 BYTE),
  SESSION_CD          VARCHAR2(3 BYTE),
  CLASS_SECTION_CD    VARCHAR2(4 BYTE),
  PERMISSION_TYPE     VARCHAR2(1 BYTE),
  CLASS_PRMSN_SEQ     INTEGER,
  SRC_SYS_ID          VARCHAR2(5 BYTE),
  CLASS_PRMSN_NBR     INTEGER,
  CLASS_SID           INTEGER,
  PERMISSION_TYPE_SD  VARCHAR2(10 BYTE),
  PERMISSION_TYPE_LD  VARCHAR2(30 BYTE),
  PERMISSION_USED     VARCHAR2(1 BYTE),
  PERMISSION_USED_SD  VARCHAR2(10 BYTE),
  PERMISSION_USED_LD  VARCHAR2(30 BYTE),
  PERSON_SID          INTEGER,
  PERMISSION_USE_DT   DATE,
  PRMSN_EXPIRE_DT     DATE,
  OPRID               VARCHAR2(30 BYTE),
  CREATION_DT         DATE,
  OPRID_LAST_UPDT     VARCHAR2(30 BYTE),
  LAST_UPD_DT         DATE,
  SSR_ISSUE_FL        VARCHAR2(1 BYTE),
  SSR_ISSUE_OPRID     VARCHAR2(30 BYTE),
  SSR_ISSUE_DT        DATE,
  OVRD_CAREER         VARCHAR2(1 BYTE),
  OVRD_CLASS_LIMIT    VARCHAR2(1 BYTE),
  SSR_OVRD_CONSENT    VARCHAR2(1 BYTE),
  SSR_OVRD_REQ        VARCHAR2(1 BYTE),
  SSR_OVRD_TIME_PERD  VARCHAR2(1 BYTE),
  PERM_CNT            INTEGER,
  AVAIL_CNT           INTEGER,
  LOAD_ERROR          VARCHAR2(1 BYTE),
  DATA_ORIGIN         VARCHAR2(1 BYTE),
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)
)
NOLOGGING 
NOCOMPRESS 
NO INMEMORY
NOCACHE
RESULT_CACHE (MODE DEFAULT)
NOPARALLEL;
