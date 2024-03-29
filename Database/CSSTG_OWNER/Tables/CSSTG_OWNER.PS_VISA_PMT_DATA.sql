DROP TABLE CSSTG_OWNER.PS_VISA_PMT_DATA CASCADE CONSTRAINTS
/

--
-- PS_VISA_PMT_DATA  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_VISA_PMT_DATA
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  DEPENDENT_ID        VARCHAR2(2 BYTE)          NOT NULL,
  COUNTRY             VARCHAR2(3 BYTE)          NOT NULL,
  VISA_PERMIT_TYPE    VARCHAR2(3 BYTE)          NOT NULL,
  EFFDT               DATE                      NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  VISA_WRKPMT_NBR     VARCHAR2(15 BYTE)         NOT NULL,
  VISA_WRKPMT_STATUS  VARCHAR2(1 BYTE)          NOT NULL,
  STATUS_DT           DATE                      NOT NULL,
  DT_ISSUED           DATE,
  PLACE_ISSUED        VARCHAR2(30 BYTE)         NOT NULL,
  DURATION_TIME       NUMBER(5,1)               NOT NULL,
  DURATION_TYPE       VARCHAR2(1 BYTE)          NOT NULL,
  ENTRY_DT            DATE,
  EXPIRATN_DT         DATE,
  ISSUING_AUTHORITY   VARCHAR2(50 BYTE)         NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
