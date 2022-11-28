DROP TABLE CSSTG_OWNER.PS_UM_ADM_HEAR_TBL CASCADE CONSTRAINTS
/

--
-- PS_UM_ADM_HEAR_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_UM_ADM_HEAR_TBL
(
  INSTITUTION        VARCHAR2(5 BYTE)           NOT NULL,
  ACAD_CAREER        VARCHAR2(4 BYTE)           NOT NULL,
  ADM_APPL_CTR       VARCHAR2(4 BYTE)           NOT NULL,
  UM_ADM_HEAR_US_CD  VARCHAR2(10 BYTE)          NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  DESCR              VARCHAR2(30 BYTE)          NOT NULL,
  LOAD_ERROR         VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL
)
COMPRESS BASIC
/
