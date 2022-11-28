DROP TABLE CSSTG_OWNER.PS_CLASS_ATTRIBUTE CASCADE CONSTRAINTS
/

--
-- PS_CLASS_ATTRIBUTE  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_CLASS_ATTRIBUTE
(
  CRSE_ID          VARCHAR2(6 BYTE)             NOT NULL,
  CRSE_OFFER_NBR   INTEGER                      NOT NULL,
  STRM             VARCHAR2(4 BYTE)             NOT NULL,
  SESSION_CODE     VARCHAR2(3 BYTE)             NOT NULL,
  CLASS_SECTION    VARCHAR2(4 BYTE)             NOT NULL,
  CRSE_ATTR        VARCHAR2(4 BYTE)             NOT NULL,
  CRSE_ATTR_VALUE  VARCHAR2(10 BYTE)            NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/