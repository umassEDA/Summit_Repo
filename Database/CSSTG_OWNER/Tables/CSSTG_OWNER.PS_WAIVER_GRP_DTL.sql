DROP TABLE CSSTG_OWNER.PS_WAIVER_GRP_DTL CASCADE CONSTRAINTS
/

--
-- PS_WAIVER_GRP_DTL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_WAIVER_GRP_DTL
(
  SETID             VARCHAR2(5 BYTE)            NOT NULL,
  WAIVER_GROUP      VARCHAR2(10 BYTE)           NOT NULL,
  EFFDT             DATE                        NOT NULL,
  WAIVER_CODE       VARCHAR2(6 BYTE)            NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  SSF_WVR_PRIORITY  INTEGER,
  LOAD_ERROR        VARCHAR2(1 BYTE)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL
)
COMPRESS BASIC
/
