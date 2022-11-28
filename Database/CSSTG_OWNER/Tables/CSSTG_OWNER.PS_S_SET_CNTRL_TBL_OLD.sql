DROP TABLE CSSTG_OWNER.PS_S_SET_CNTRL_TBL_OLD CASCADE CONSTRAINTS
/

--
-- PS_S_SET_CNTRL_TBL_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_S_SET_CNTRL_TBL_OLD
(
  SETCNTRLVALUE    VARCHAR2(20 BYTE)            NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  SETID            VARCHAR2(5 BYTE)             NOT NULL,
  VERSION          INTEGER                      NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
