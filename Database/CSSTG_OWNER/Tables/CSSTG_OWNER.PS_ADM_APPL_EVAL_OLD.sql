DROP TABLE CSSTG_OWNER.PS_ADM_APPL_EVAL_OLD CASCADE CONSTRAINTS
/

--
-- PS_ADM_APPL_EVAL_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ADM_APPL_EVAL_OLD
(
  EMPLID           VARCHAR2(11 BYTE)            NOT NULL,
  ACAD_CAREER      VARCHAR2(4 BYTE)             NOT NULL,
  STDNT_CAR_NBR    INTEGER                      NOT NULL,
  ADM_APPL_NBR     VARCHAR2(8 BYTE)             NOT NULL,
  APPL_PROG_NBR    INTEGER                      NOT NULL,
  EVALUATION_CODE  VARCHAR2(10 BYTE)            NOT NULL,
  APPL_EVAL_NBR    INTEGER                      NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  RATING_SCHEME    VARCHAR2(10 BYTE)            NOT NULL,
  RATING_SCHEME_2  VARCHAR2(10 BYTE)            NOT NULL,
  EVALUATN_STATUS  VARCHAR2(2 BYTE)             NOT NULL,
  EVALUATION_DT    DATE,
  GENL_MATL_NEW    VARCHAR2(1 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL,
  COMMENTS         CLOB
)
LOB (COMMENTS) STORE AS BASICFILE (
  TABLESPACE  CSSTG_DATA1
  ENABLE      STORAGE IN ROW
  CHUNK       16384
  RETENTION
  STORAGE    (
              INITIAL          1M
              NEXT             1M
              MINEXTENTS       1
              MAXEXTENTS       UNLIMITED
              PCTINCREASE      0
              BUFFER_POOL      DEFAULT
             ))
COMPRESS BASIC
/
