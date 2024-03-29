DROP TABLE CSSTG_OWNER.PS_ADM_APPL_CMP_OLD CASCADE CONSTRAINTS
/

--
-- PS_ADM_APPL_CMP_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ADM_APPL_CMP_OLD
(
  EMPLID            VARCHAR2(11 BYTE)           NOT NULL,
  ACAD_CAREER       VARCHAR2(4 BYTE)            NOT NULL,
  STDNT_CAR_NBR     INTEGER                     NOT NULL,
  ADM_APPL_NBR      VARCHAR2(8 BYTE)            NOT NULL,
  APPL_PROG_NBR     INTEGER                     NOT NULL,
  EVALUATION_CODE   VARCHAR2(10 BYTE)           NOT NULL,
  APPL_EVAL_NBR     INTEGER                     NOT NULL,
  RATING_CMP        VARCHAR2(5 BYTE)            NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  RATING_CMP_VALUE  NUMBER(9,4)                 NOT NULL,
  EVALUATION_FLAG   VARCHAR2(1 BYTE)            NOT NULL,
  LOAD_ERROR        VARCHAR2(1 BYTE)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL
)
COMPRESS BASIC
/
