DROP TABLE CSSTG_OWNER.PS_T_CLASS_PRMSN_OLD CASCADE CONSTRAINTS
/

--
-- PS_T_CLASS_PRMSN_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_CLASS_PRMSN_OLD
(
  CRSE_ID             VARCHAR2(6 BYTE)          NOT NULL,
  CRSE_OFFER_NBR      INTEGER                   NOT NULL,
  STRM                VARCHAR2(4 BYTE)          NOT NULL,
  SESSION_CODE        VARCHAR2(3 BYTE)          NOT NULL,
  CLASS_SECTION       VARCHAR2(4 BYTE)          NOT NULL,
  PERMISSION_TYPE     VARCHAR2(1 BYTE)          NOT NULL,
  CLASS_PRMSN_SEQ     INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  CLASS_PRMSN_NBR     INTEGER                   NOT NULL,
  PERMISSION_USED     VARCHAR2(1 BYTE)          NOT NULL,
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  PERMISSION_USE_DT   DATE,
  PRMSN_EXPIRE_DT     DATE,
  OPRID               VARCHAR2(30 BYTE)         NOT NULL,
  CREATION_DT         DATE,
  CREATION_TIME       DATE,
  OPRID_LAST_UPDT     VARCHAR2(30 BYTE)         NOT NULL,
  LAST_UPD_DT_STMP    DATE,
  LAST_UPD_TM_STMP    DATE,
  SSR_ISSUE_FL        VARCHAR2(1 BYTE)          NOT NULL,
  SSR_ISSUE_OPRID     VARCHAR2(30 BYTE)         NOT NULL,
  SSR_ISSUE_DT        DATE,
  SSR_ISSUE_TIME      DATE,
  OVRD_CLASS_LIMIT    VARCHAR2(1 BYTE)          NOT NULL,
  SSR_OVRD_REQ        VARCHAR2(1 BYTE)          NOT NULL,
  SSR_OVRD_CONSENT    VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_CAREER         VARCHAR2(1 BYTE)          NOT NULL,
  SSR_OVRD_TIME_PERD  VARCHAR2(1 BYTE)          NOT NULL,
  DESCR50             VARCHAR2(50 BYTE)         NOT NULL,
  BATCH_SID           INTEGER                   NOT NULL
)
NOCOMPRESS
/
