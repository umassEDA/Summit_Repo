DROP TABLE CSSTG_OWNER.PS_GRADE_RSTR_TYPE CASCADE CONSTRAINTS
/

--
-- PS_GRADE_RSTR_TYPE  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_GRADE_RSTR_TYPE
(
  STRM                VARCHAR2(4 BYTE)          NOT NULL,
  CLASS_NBR           INTEGER                   NOT NULL,
  GRD_RSTR_TYPE_SEQ   INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  GRADE_ROSTER_TYPE   VARCHAR2(4 BYTE)          NOT NULL,
  GRADING_STATUS      VARCHAR2(4 BYTE)          NOT NULL,
  GR_APPROVAL_STATUS  VARCHAR2(4 BYTE)          NOT NULL,
  APPROVAL_DATE       DATE,
  POSTING_DATE        DATE,
  PARTIAL_POST        VARCHAR2(1 BYTE)          NOT NULL,
  OVRD_GRADE_ROSTER   VARCHAR2(1 BYTE)          NOT NULL,
  PROCESS_INSTANCE    NUMBER(10)                NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
