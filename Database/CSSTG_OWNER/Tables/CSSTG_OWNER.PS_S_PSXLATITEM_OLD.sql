DROP TABLE CSSTG_OWNER.PS_S_PSXLATITEM_OLD CASCADE CONSTRAINTS
/

--
-- PS_S_PSXLATITEM_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_S_PSXLATITEM_OLD
(
  FIELDNAME        VARCHAR2(18 BYTE)            NOT NULL,
  FIELDVALUE       VARCHAR2(4 BYTE)             NOT NULL,
  EFFDT            DATE,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  EFF_STATUS       VARCHAR2(1 BYTE)             NOT NULL,
  XLATLONGNAME     VARCHAR2(30 BYTE)            NOT NULL,
  XLATSHORTNAME    VARCHAR2(10 BYTE)            NOT NULL,
  LASTUPDDTTM      DATE,
  LASTUPDOPRID     VARCHAR2(30 BYTE)            NOT NULL,
  SYNCID           INTEGER                      NOT NULL,
  TIMEZONE         VARCHAR2(9 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/