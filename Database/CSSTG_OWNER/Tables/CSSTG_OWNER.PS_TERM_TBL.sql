DROP TABLE CSSTG_OWNER.PS_TERM_TBL CASCADE CONSTRAINTS
/

--
-- PS_TERM_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_TERM_TBL
(
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  STRM                VARCHAR2(4 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  DESCR               VARCHAR2(30 BYTE)         NOT NULL,
  DESCRSHORT          VARCHAR2(10 BYTE)         NOT NULL,
  TERM_BEGIN_DT       DATE                      NOT NULL,
  TERM_END_DT         DATE                      NOT NULL,
  SESSION_CODE        VARCHAR2(3 BYTE)          NOT NULL,
  WEEKS_OF_INSTRUCT   INTEGER                   NOT NULL,
  TERM_CATEGORY       VARCHAR2(1 BYTE)          NOT NULL,
  ACAD_YEAR           VARCHAR2(4 BYTE)          NOT NULL,
  TRANSCIPT_DT_PRT    VARCHAR2(2 BYTE)          NOT NULL,
  HOLIDAY_SCHEDULE    VARCHAR2(6 BYTE)          NOT NULL,
  SIXTY_PCT_DT        DATE                      NOT NULL,
  USE_DYN_CLASS_DATE  VARCHAR2(1 BYTE)          NOT NULL,
  INCLUDE_IN_SS       VARCHAR2(1 BYTE)          NOT NULL,
  SSR_TRMAC_LAST_DT   DATE                      NOT NULL,
  SSR_PLNDISPONLY_DT  DATE,
  SSR_SSENRLAVAIL_DT  DATE                      NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
