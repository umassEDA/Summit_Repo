DROP TABLE CSSTG_OWNER.PS_UM_STDNT_WS_AWD CASCADE CONSTRAINTS
/

--
-- PS_UM_STDNT_WS_AWD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_UM_STDNT_WS_AWD
(
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  INSTITUTION        VARCHAR2(5 BYTE)           NOT NULL,
  AID_YEAR           VARCHAR2(4 BYTE)           NOT NULL,
  ITEM_TYPE          VARCHAR2(12 BYTE)          NOT NULL,
  ACAD_CAREER        VARCHAR2(4 BYTE)           NOT NULL,
  SEQNO              INTEGER                    NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  EFFDT              DATE                       NOT NULL,
  EFF_STATUS         VARCHAR2(1 BYTE)           NOT NULL,
  EMPL_RCD           INTEGER                    NOT NULL,
  AWARD_STATUS       VARCHAR2(1 BYTE)           NOT NULL,
  ACTION_DT          DATE,
  WS_PLACEMENT_STAT  VARCHAR2(3 BYTE)           NOT NULL,
  WS_PLACEMENT_DT    DATE,
  COMMUNITY_SERVICE  VARCHAR2(1 BYTE)           NOT NULL,
  JOB_REC_EFFDT      DATE,
  JOB_REC_EFFSEQ     INTEGER                    NOT NULL,
  EMPLOYER           VARCHAR2(30 BYTE)          NOT NULL,
  PHONE              VARCHAR2(24 BYTE)          NOT NULL,
  DEPTID             VARCHAR2(10 BYTE)          NOT NULL,
  LOCATION           VARCHAR2(10 BYTE)          NOT NULL,
  EMAILID            VARCHAR2(70 BYTE)          NOT NULL,
  HOURLY_RT          NUMBER(18,6)               NOT NULL,
  ACCOUNT            VARCHAR2(10 BYTE)          NOT NULL,
  PROFILE_ID         VARCHAR2(10 BYTE)          NOT NULL,
  END_DT             DATE,
  COMMENTS_MSGS      VARCHAR2(254 BYTE)         NOT NULL,
  COUNTRY            VARCHAR2(3 BYTE)           NOT NULL,
  ADDRESS1           VARCHAR2(55 BYTE)          NOT NULL,
  ADDRESS2           VARCHAR2(55 BYTE)          NOT NULL,
  ADDRESS3           VARCHAR2(55 BYTE)          NOT NULL,
  ADDRESS4           VARCHAR2(55 BYTE)          NOT NULL,
  CITY               VARCHAR2(30 BYTE)          NOT NULL,
  NUM1               VARCHAR2(6 BYTE)           NOT NULL,
  NUM2               VARCHAR2(6 BYTE)           NOT NULL,
  HOUSE_TYPE         VARCHAR2(2 BYTE)           NOT NULL,
  ADDR_FIELD1        VARCHAR2(2 BYTE)           NOT NULL,
  ADDR_FIELD2        VARCHAR2(4 BYTE)           NOT NULL,
  ADDR_FIELD3        VARCHAR2(4 BYTE)           NOT NULL,
  COUNTY             VARCHAR2(30 BYTE)          NOT NULL,
  STATE              VARCHAR2(6 BYTE)           NOT NULL,
  POSTAL             VARCHAR2(12 BYTE)          NOT NULL,
  GEO_CODE           VARCHAR2(11 BYTE)          NOT NULL,
  IN_CITY_LIMIT      VARCHAR2(1 BYTE)           NOT NULL,
  UM_SEC_ACCOUNT     VARCHAR2(10 BYTE)          NOT NULL,
  JOBID              VARCHAR2(10 BYTE)          NOT NULL,
  SUPERVISOR_NAME    VARCHAR2(50 BYTE)          NOT NULL,
  START_DATE         DATE,
  END_DATE           DATE,
  UM_EXEMPT          VARCHAR2(2 BYTE)           NOT NULL,
  UM_THIRD_ACCOUNT   VARCHAR2(10 BYTE)          NOT NULL,
  UM_FOURTH_ACCOUNT  VARCHAR2(10 BYTE)          NOT NULL,
  LOAD_ERROR         VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL
)
COMPRESS BASIC
/
