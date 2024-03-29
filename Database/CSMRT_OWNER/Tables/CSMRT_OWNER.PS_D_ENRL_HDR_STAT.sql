DROP TABLE CSMRT_OWNER.PS_D_ENRL_HDR_STAT CASCADE CONSTRAINTS
/

--
-- PS_D_ENRL_HDR_STAT  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_D_ENRL_HDR_STAT
(
  ENRL_HDR_STAT_SID  NUMBER(10)                 NOT NULL,
  ENRL_REQ_PROC_ST   VARCHAR2(4 CHAR)           NOT NULL,
  HDR_STATUS_SD      VARCHAR2(10 CHAR)          NOT NULL,
  HDR_STATUS_LD      VARCHAR2(30 CHAR)          NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 CHAR)           NOT NULL,
  EFF_START_DT       DATE,
  EFF_END_DT         DATE,
  CURRENT_IND        VARCHAR2(1 CHAR)           NOT NULL,
  LOAD_ERROR         VARCHAR2(1 CHAR)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 CHAR)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL
)
NOCOMPRESS
/


ALTER TABLE CSMRT_OWNER.PS_D_ENRL_HDR_STAT ADD (
  CONSTRAINT PK_PS_D_ENRL_HDR_STAT
  PRIMARY KEY
  (ENRL_HDR_STAT_SID)
  RELY
  DISABLE NOVALIDATE)
/
