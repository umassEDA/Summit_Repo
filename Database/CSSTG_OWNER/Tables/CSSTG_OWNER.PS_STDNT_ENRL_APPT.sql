DROP TABLE CSSTG_OWNER.PS_STDNT_ENRL_APPT CASCADE CONSTRAINTS
/

--
-- PS_STDNT_ENRL_APPT  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_STDNT_ENRL_APPT
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  STRM                VARCHAR2(4 BYTE)          NOT NULL,
  SESSION_CODE        VARCHAR2(3 BYTE)          NOT NULL,
  SSR_APPT_BLOCK      VARCHAR2(6 BYTE)          NOT NULL,
  APPOINTMENT_NBR     VARCHAR2(4 BYTE)          NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  SSR_SELECT_LIMIT    VARCHAR2(1 BYTE)          NOT NULL,
  APPT_LIMIT_ID       VARCHAR2(4 BYTE)          NOT NULL,
  MAX_TOTAL_UNIT      NUMBER(5,2)               NOT NULL,
  MAX_NOGPA_UNIT      NUMBER(5,2)               NOT NULL,
  MAX_AUDIT_UNIT      NUMBER(5,2)               NOT NULL,
  MAX_WAIT_UNIT       NUMBER(5,2)               NOT NULL,
  SSR_APPT_STDT_BLCK  VARCHAR2(6 BYTE)          NOT NULL,
  INCL_WAIT_IN_TOT    VARCHAR2(1 BYTE)          NOT NULL,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
