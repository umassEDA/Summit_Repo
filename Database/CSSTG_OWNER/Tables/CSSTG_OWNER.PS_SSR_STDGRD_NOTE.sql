DROP TABLE CSSTG_OWNER.PS_SSR_STDGRD_NOTE CASCADE CONSTRAINTS
/

--
-- PS_SSR_STDGRD_NOTE  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_SSR_STDGRD_NOTE
(
  EMPLID              VARCHAR2(11 BYTE)         NOT NULL,
  INSTITUTION         VARCHAR2(5 BYTE)          NOT NULL,
  ACAD_CAREER         VARCHAR2(4 BYTE)          NOT NULL,
  STDNT_CAR_NBR       INTEGER                   NOT NULL,
  ACAD_PROG           VARCHAR2(5 BYTE)          NOT NULL,
  EXP_GRAD_TERM       VARCHAR2(4 BYTE)          NOT NULL,
  DEGREE              VARCHAR2(8 BYTE)          NOT NULL,
  SEQNUM              INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  SSR_GRAD_NOTE       VARCHAR2(5 BYTE)          NOT NULL,
  SSR_DESCRIPTION     VARCHAR2(240 BYTE)        NOT NULL,
  SCC_ROW_ADD_OPRID   VARCHAR2(30 BYTE)         NOT NULL,
  SCC_ROW_ADD_DTTM    TIMESTAMP(6),
  SCC_ROW_UPD_OPRID   VARCHAR2(30 BYTE)         NOT NULL,
  SCC_ROW_UPD_DTTM    TIMESTAMP(6),
  SSR_GRAD_NOTE_LONG  VARCHAR2(4000 BYTE),
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
