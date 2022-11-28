DROP TABLE CSSTG_OWNER.PS_VAR_DATA_ADMP CASCADE CONSTRAINTS
/

--
-- PS_VAR_DATA_ADMP  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_VAR_DATA_ADMP
(
  COMMON_ID        VARCHAR2(11 BYTE)            NOT NULL,
  VAR_DATA_SEQ     INTEGER                      NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  ACAD_CAREER      VARCHAR2(4 BYTE)             NOT NULL,
  STDNT_CAR_NBR    INTEGER                      NOT NULL,
  ADM_APPL_NBR     VARCHAR2(8 BYTE)             NOT NULL,
  APPL_PROG_NBR    INTEGER                      NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
