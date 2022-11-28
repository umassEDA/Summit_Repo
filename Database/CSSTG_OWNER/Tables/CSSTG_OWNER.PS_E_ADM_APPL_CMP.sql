DROP TABLE CSSTG_OWNER.PS_E_ADM_APPL_CMP CASCADE CONSTRAINTS
/

--
-- PS_E_ADM_APPL_CMP  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_E_ADM_APPL_CMP
(
  ERROR_SID           INTEGER                   NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  STDNT_CAR_NBR       INTEGER                   NOT NULL,
  ADM_APPL_NBR        VARCHAR2(8 BYTE)          NOT NULL,
  APPL_PROG_NBR       INTEGER                   NOT NULL,
  EVALUATION_CODE     VARCHAR2(10 BYTE)         NOT NULL,
  APPL_EVAL_NBR       INTEGER                   NOT NULL,
  RATING_CMP          VARCHAR2(5 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  TARGET_TABLE_NAME   VARCHAR2(15 BYTE)         NOT NULL,
  TARGET_TABLE_TYPE   VARCHAR2(3 BYTE)          NOT NULL,
  SOURCE_COLUMN_LIST  VARCHAR2(254 BYTE)        NOT NULL,
  LOOKUP_TABLE        VARCHAR2(15 BYTE)         NOT NULL,
  LOOKUP_COL_LIST     VARCHAR2(254 BYTE)        NOT NULL,
  ERR_DATA_VAL_LIST   VARCHAR2(1000 BYTE),
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/