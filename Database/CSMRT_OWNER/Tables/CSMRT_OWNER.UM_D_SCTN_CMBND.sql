DROP TABLE CSMRT_OWNER.UM_D_SCTN_CMBND CASCADE CONSTRAINTS
/

--
-- UM_D_SCTN_CMBND  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_SCTN_CMBND
(
  SCTN_COMBINED_SID  INTEGER                    NOT NULL,
  INSTITUTION_CD     VARCHAR2(5 BYTE)           NOT NULL,
  TERM_CD            VARCHAR2(4 BYTE)           NOT NULL,
  SESSION_CD         VARCHAR2(3 BYTE)           NOT NULL,
  SCTN_COMBINED_ID   VARCHAR2(4 BYTE)           NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL,
  DESCRSHORT         VARCHAR2(10 BYTE)          NOT NULL,
  DESCR              VARCHAR2(30 BYTE)          NOT NULL,
  ENRL_CAP           INTEGER                    NOT NULL,
  ENRL_TOT           INTEGER                    NOT NULL,
  WAIT_CAP           INTEGER                    NOT NULL,
  WAIT_TOT           INTEGER                    NOT NULL,
  ROOM_CAP_REQUEST   INTEGER                    NOT NULL,
  PERM_COMBINATION   VARCHAR2(1 BYTE)           NOT NULL,
  COMBINATION_TYPE   VARCHAR2(2 BYTE)           NOT NULL,
  SKIP_MTGPAT_EDIT   VARCHAR2(1 BYTE)           NOT NULL,
  DATA_ORIGIN        VARCHAR2(1 BYTE)           NOT NULL,
  CREATED_EW_DTTM    DATE,
  LASTUPD_EW_DTTM    DATE
)
COMPRESS BASIC
/


ALTER TABLE CSMRT_OWNER.UM_D_SCTN_CMBND ADD (
  CONSTRAINT PK_UM_D_SCTN_CMBND
  PRIMARY KEY
  (SCTN_COMBINED_SID)
  RELY
  DISABLE NOVALIDATE)
/
