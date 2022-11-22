DROP TABLE CSMRT_OWNER.PS_D_EVAL_STATUS CASCADE CONSTRAINTS
/

--
-- PS_D_EVAL_STATUS  (Table) 
--
CREATE TABLE CSMRT_OWNER.PS_D_EVAL_STATUS
(
  EVAL_STAT_SID     NUMBER(10)                  NOT NULL,
  INSTITUTION_CD    VARCHAR2(5 CHAR)            NOT NULL,
  EVAL_STATUS_CD    VARCHAR2(2 CHAR)            NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 CHAR)            NOT NULL,
  EFFDT             DATE,
  EFF_STATUS_CD     VARCHAR2(1 CHAR)            NOT NULL,
  EVAL_STATUS_SD    VARCHAR2(10 CHAR)           NOT NULL,
  EVAL_STATUS_LD    VARCHAR2(30 CHAR)           NOT NULL,
  EVAL_IN_PROG_FLG  VARCHAR2(1 CHAR)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 CHAR)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.PS_D_EVAL_STATUS ADD (
  CONSTRAINT PK_PS_D_EVAL_STATUS
  PRIMARY KEY
  (EVAL_STAT_SID)
  RELY
  DISABLE NOVALIDATE)
/
