DROP TABLE CSMRT_OWNER.UM_D_RQ_GRP CASCADE CONSTRAINTS
/

--
-- UM_D_RQ_GRP  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_RQ_GRP
(
  RQRMNT_GROUP_SID  INTEGER                     NOT NULL,
  RQRMNT_GROUP      VARCHAR2(6 BYTE)            NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  EFFDT             DATE                        NOT NULL,
  EFF_STATUS        VARCHAR2(1 BYTE)            NOT NULL,
  DESCR             VARCHAR2(30 BYTE)           NOT NULL,
  DESCRSHORT        VARCHAR2(10 BYTE)           NOT NULL,
  INSTITUTION_CD    VARCHAR2(5 BYTE)            NOT NULL,
  ACAD_CAR_CD       VARCHAR2(4 BYTE)            NOT NULL,
  ACAD_PROG_CD      VARCHAR2(5 BYTE)            NOT NULL,
  ACAD_PLAN_CD      VARCHAR2(10 BYTE)           NOT NULL,
  ACAD_SPLAN_CD     VARCHAR2(10 BYTE)           NOT NULL,
  SUBJECT           VARCHAR2(8 BYTE),
  CATALOG_NBR       VARCHAR2(10 BYTE),
  GRADE_POINTS_MIN  NUMBER(9,2),
  GPA_REQUIRED      NUMBER(6,3),
  MIN_UNITS_REQD    NUMBER(6,2),
  MIN_CRSES_REQD    NUMBER(5,2),
  RQRMNT_USEAGE     VARCHAR2(4 BYTE),
  RQRMNT_USEAGE_SD  VARCHAR2(10 BYTE),
  RQRMNT_USEAGE_LD  VARCHAR2(30 BYTE),
  RQRMNT_LIST_SEQ   INTEGER,
  RQ_CONNECT_TYPE   VARCHAR2(3 BYTE),
  SAA_DESCR80       VARCHAR2(80 BYTE),
  DESCR254          VARCHAR2(254 BYTE),
  DESCRLONG         VARCHAR2(4000 BYTE),
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  SQL_STR_PRE       CLOB,
  SQL_STR_CO        CLOB
)
LOB (SQL_STR_CO) STORE AS SECUREFILE (
  TABLESPACE  CSMRT_DATA1
  ENABLE      STORAGE IN ROW
  CHUNK       16384
  RETENTION
  STORAGE    (
              INITIAL          208K
              NEXT             1M
              MINEXTENTS       1
              MAXEXTENTS       UNLIMITED
              PCTINCREASE      0
              BUFFER_POOL      DEFAULT
             ))
LOB (SQL_STR_PRE) STORE AS SECUREFILE (
  TABLESPACE  CSMRT_DATA1
  ENABLE      STORAGE IN ROW
  CHUNK       16384
  RETENTION
  STORAGE    (
              INITIAL          208K
              NEXT             1M
              MINEXTENTS       1
              MAXEXTENTS       UNLIMITED
              PCTINCREASE      0
              BUFFER_POOL      DEFAULT
             ))
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_D_RQ_GRP ADD (
  CONSTRAINT PK_UM_D_RQ_GRP
  PRIMARY KEY
  (RQRMNT_GROUP_SID)
  RELY
  DISABLE NOVALIDATE)
/
