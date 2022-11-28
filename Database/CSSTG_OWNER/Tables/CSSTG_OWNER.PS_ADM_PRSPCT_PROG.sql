DROP TABLE CSSTG_OWNER.PS_ADM_PRSPCT_PROG CASCADE CONSTRAINTS
/

--
-- PS_ADM_PRSPCT_PROG  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ADM_PRSPCT_PROG
(
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  ACAD_CAREER        VARCHAR2(4 BYTE)           NOT NULL,
  INSTITUTION        VARCHAR2(5 BYTE)           NOT NULL,
  ACAD_PROG          VARCHAR2(5 BYTE)           NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  ADM_RECR_CTR       VARCHAR2(4 BYTE)           NOT NULL,
  RECRUITING_STATUS  VARCHAR2(4 BYTE)           NOT NULL,
  RECR_STATUS_DT     DATE,
  CAMPUS             VARCHAR2(5 BYTE)           NOT NULL,
  ADM_APPL_NBR       VARCHAR2(8 BYTE)           NOT NULL,
  LOAD_ERROR         VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL
)
COMPRESS BASIC
/