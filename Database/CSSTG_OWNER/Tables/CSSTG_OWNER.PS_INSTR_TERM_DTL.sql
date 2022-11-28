DROP TABLE CSSTG_OWNER.PS_INSTR_TERM_DTL CASCADE CONSTRAINTS
/

--
-- PS_INSTR_TERM_DTL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_INSTR_TERM_DTL
(
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  INSTITUTION        VARCHAR2(5 BYTE)           NOT NULL,
  STRM               VARCHAR2(4 BYTE)           NOT NULL,
  INST_TRM_DET_SEQ   INTEGER                    NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  DESCR              VARCHAR2(30 BYTE)          NOT NULL,
  INSTR_ENTRY_TYPE   VARCHAR2(1 BYTE)           NOT NULL,
  CONCATENATED_KEYS  VARCHAR2(30 BYTE)          NOT NULL,
  EMPL_RCD           INTEGER                    NOT NULL,
  ASSIGN_TYPE        VARCHAR2(3 BYTE)           NOT NULL,
  WEEK_WORKLOAD_HRS  NUMBER(5,2)                NOT NULL,
  LOAD_CALC_APPLY    VARCHAR2(1 BYTE)           NOT NULL,
  CRSE_ID            VARCHAR2(6 BYTE)           NOT NULL,
  CRSE_OFFER_NBR     INTEGER                    NOT NULL,
  CLASS_NBR          INTEGER                    NOT NULL,
  CLASS_MTG_NBR      INTEGER                    NOT NULL,
  ASSIGNMENT_PCT     NUMBER(5,2)                NOT NULL,
  SESSION_CODE       VARCHAR2(3 BYTE)           NOT NULL,
  SCTN_COMBINED_ID   VARCHAR2(4 BYTE)           NOT NULL,
  LOAD_ERROR         VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE,
  BATCH_SID          NUMBER(10)                 NOT NULL
)
COMPRESS BASIC
/