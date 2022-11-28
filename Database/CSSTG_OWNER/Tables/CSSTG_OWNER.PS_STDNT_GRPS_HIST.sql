DROP TABLE CSSTG_OWNER.PS_STDNT_GRPS_HIST CASCADE CONSTRAINTS
/

--
-- PS_STDNT_GRPS_HIST  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_STDNT_GRPS_HIST
(
  EMPLID           VARCHAR2(11 BYTE)            NOT NULL,
  INSTITUTION      VARCHAR2(5 BYTE)             NOT NULL,
  STDNT_GROUP      VARCHAR2(4 BYTE)             NOT NULL,
  EFFDT            DATE                         NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  EFF_STATUS       VARCHAR2(1 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL,
  COMMENTS         VARCHAR2(4000 BYTE)
)
COMPRESS BASIC
/
