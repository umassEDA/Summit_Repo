DROP TABLE CSSTG_OWNER.PS_ATHL_PART_STAT CASCADE CONSTRAINTS
/

--
-- PS_ATHL_PART_STAT  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_ATHL_PART_STAT
(
  EMPLID           VARCHAR2(11 BYTE)            NOT NULL,
  SPORT            VARCHAR2(3 BYTE)             NOT NULL,
  EFFDT            DATE                         NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  ATHL_PARTIC_CD   VARCHAR2(5 BYTE)             NOT NULL,
  NCAA_ELIGIBLE    VARCHAR2(1 BYTE)             NOT NULL,
  CUR_PARTICIPANT  VARCHAR2(1 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL,
  DESCRLONG        VARCHAR2(4000 BYTE)
)
COMPRESS BASIC
/
