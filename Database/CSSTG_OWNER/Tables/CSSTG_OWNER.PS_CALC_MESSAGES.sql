DROP TABLE CSSTG_OWNER.PS_CALC_MESSAGES CASCADE CONSTRAINTS
/

--
-- PS_CALC_MESSAGES  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_CALC_MESSAGES
(
  BUSINESS_UNIT    VARCHAR2(5 BYTE)             NOT NULL,
  BATCH_ID         VARCHAR2(12 BYTE)            NOT NULL,
  EMPLID           VARCHAR2(11 BYTE)            NOT NULL,
  STRM             VARCHAR2(4 BYTE)             NOT NULL,
  LINE_SEQ_NBR     INTEGER                      NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  ACAD_CAREER      VARCHAR2(4 BYTE)             NOT NULL,
  ACAD_PROG        VARCHAR2(5 BYTE)             NOT NULL,
  OPRID            VARCHAR2(30 BYTE)            NOT NULL,
  BATCH_RUN_DATE   DATE,
  SSF_ERROR_WARN   VARCHAR2(1 BYTE)             NOT NULL,
  MESSAGE_SET_NBR  INTEGER                      NOT NULL,
  MESSAGE_NBR      INTEGER                      NOT NULL,
  SSF_ADDED_BY     VARCHAR2(1 BYTE)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
