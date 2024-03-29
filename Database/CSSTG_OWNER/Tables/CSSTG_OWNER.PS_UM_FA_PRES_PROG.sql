DROP TABLE CSSTG_OWNER.PS_UM_FA_PRES_PROG CASCADE CONSTRAINTS
/

--
-- PS_UM_FA_PRES_PROG  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_UM_FA_PRES_PROG
(
  SETID             VARCHAR2(5 BYTE)            NOT NULL,
  UM_FA_PRES_MODEL  VARCHAR2(12 BYTE)           NOT NULL,
  AID_YEAR          VARCHAR2(4 BYTE)            NOT NULL,
  UM_FA_PRES_PROG   VARCHAR2(10 BYTE)           NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  UM_FA_PRES_CAT    VARCHAR2(1 BYTE)            NOT NULL,
  NEED_BASED        VARCHAR2(1 BYTE)            NOT NULL,
  DESCR50           VARCHAR2(50 BYTE)           NOT NULL,
  LOAD_ERROR        VARCHAR2(1 BYTE)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL
)
COMPRESS BASIC
/
