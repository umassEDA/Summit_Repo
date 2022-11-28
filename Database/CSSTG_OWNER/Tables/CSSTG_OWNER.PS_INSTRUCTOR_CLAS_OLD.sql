DROP TABLE CSSTG_OWNER.PS_INSTRUCTOR_CLAS_OLD CASCADE CONSTRAINTS
/

--
-- PS_INSTRUCTOR_CLAS_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_INSTRUCTOR_CLAS_OLD
(
  INSTRUCTOR_CLASS    VARCHAR2(6 BYTE)          NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  EFFDT               DATE                      NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  EFF_STATUS          VARCHAR2(1 BYTE)          NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  LOAD_CALC_APPLY     VARCHAR2(1 BYTE)          NOT NULL,
  FULL_PART_TIME      VARCHAR2(1 BYTE)          NOT NULL,
  WORKLD_LIMIT_APPLY  VARCHAR2(1 BYTE)          NOT NULL,
  ASSIGNED_FTE_PCT    NUMBER(5,2)               NOT NULL,
  INSTR_MULTIPLIER    INTEGER                   NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
