DROP TABLE CSSTG_OWNER.PS_ISIR_SAR_XREF CASCADE CONSTRAINTS
/

--
-- PS_ISIR_SAR_XREF  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ISIR_SAR_XREF
(
  AID_YEAR            VARCHAR2(4 BYTE)          NOT NULL,
  RECNAME             VARCHAR2(15 BYTE)         NOT NULL,
  FIELDNAME           VARCHAR2(18 BYTE)         NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  ISIR_FIELD_NUM      VARCHAR2(4 BYTE)          NOT NULL,
  EFF_STATUS          VARCHAR2(1 BYTE)          NOT NULL,
  FAFSA_QUESTION_NUM  VARCHAR2(4 BYTE)          NOT NULL,
  ISIR_START_POS      INTEGER                   NOT NULL,
  ISIR_FIELD_LENGTH   INTEGER                   NOT NULL,
  ISIR_FIELD_TYPE     VARCHAR2(1 BYTE)          NOT NULL,
  ISIR_CORR_TO_BLANK  VARCHAR2(1 BYTE)          NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE
)
COMPRESS BASIC
/
