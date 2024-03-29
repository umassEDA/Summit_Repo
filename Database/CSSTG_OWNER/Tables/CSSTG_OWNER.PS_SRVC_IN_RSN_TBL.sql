DROP TABLE CSSTG_OWNER.PS_SRVC_IN_RSN_TBL CASCADE CONSTRAINTS
/

--
-- PS_SRVC_IN_RSN_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_SRVC_IN_RSN_TBL
(
  INSTITUTION        VARCHAR2(5 BYTE)           NOT NULL,
  SRVC_IND_CD        VARCHAR2(3 BYTE)           NOT NULL,
  EFFDT              DATE                       NOT NULL,
  SRVC_IND_REASON    VARCHAR2(5 BYTE)           NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  DESCR              VARCHAR2(30 BYTE)          NOT NULL,
  DESCRSHORT         VARCHAR2(10 BYTE)          NOT NULL,
  SRVC_IN_REF_TYPE   VARCHAR2(3 BYTE)           NOT NULL,
  DEPTID             VARCHAR2(10 BYTE)          NOT NULL,
  POSITION_NBR       VARCHAR2(8 BYTE)           NOT NULL,
  CHECKLIST_CONTROL  VARCHAR2(1 BYTE)           NOT NULL,
  MULTPLE_OCCUR      VARCHAR2(1 BYTE)           NOT NULL,
  LOAD_ERROR         VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL,
  DESCRLONG          VARCHAR2(4000 BYTE)
)
COMPRESS BASIC
/
