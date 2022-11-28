DROP TABLE CSSTG_OWNER.PS_CRSE_CATALOG CASCADE CONSTRAINTS
/

--
-- PS_CRSE_CATALOG  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_CRSE_CATALOG
(
  CRSE_ID             VARCHAR2(6 BYTE)          NOT NULL,
  EFFDT               DATE                      NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  EFF_STATUS          VARCHAR2(1 BYTE)          NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  EQUIV_CRSE_ID       VARCHAR2(5 BYTE)          NOT NULL,
  CONSENT             VARCHAR2(1 BYTE)          NOT NULL,
  ALLOW_MULT_ENROLL   VARCHAR2(1 BYTE)          NOT NULL,
  UNITS_MINIMUM       NUMBER(5,2)               NOT NULL,
  UNITS_MAXIMUM       NUMBER(5,2)               NOT NULL,
  UNITS_ACAD_PROG     NUMBER(5,2)               NOT NULL,
  UNITS_FINAID_PROG   NUMBER(5,2)               NOT NULL,
  CRSE_REPEATABLE     VARCHAR2(1 BYTE)          NOT NULL,
  UNITS_REPEAT_LIMIT  NUMBER(5,2)               NOT NULL,
  CRSE_REPEAT_LIMIT   NUMBER(10)                NOT NULL,
  GRADING_BASIS       VARCHAR2(3 BYTE)          NOT NULL,
  GRADE_ROSTER_PRINT  VARCHAR2(1 BYTE)          NOT NULL,
  SSR_COMPONENT       VARCHAR2(3 BYTE)          NOT NULL,
  COURSE_TITLE_LONG   VARCHAR2(100 BYTE)        NOT NULL,
  LST_MULT_TRM_CRS    VARCHAR2(1 BYTE)          NOT NULL,
  CRSE_CONTACT_HRS    NUMBER(5,2)               NOT NULL,
  RQMNT_DESIGNTN      VARCHAR2(4 BYTE)          NOT NULL,
  CRSE_COUNT          NUMBER(4,2)               NOT NULL,
  INSTRUCTOR_EDIT     VARCHAR2(2 BYTE)          NOT NULL,
  FEES_EXIST          VARCHAR2(1 BYTE)          NOT NULL,
  COMPONENT_PRIMARY   VARCHAR2(3 BYTE)          NOT NULL,
  ENRL_UN_LD_CLC_TYP  VARCHAR2(1 BYTE)          NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL,
  DESCRLONG           VARCHAR2(4000 BYTE)
)
COMPRESS BASIC
/
