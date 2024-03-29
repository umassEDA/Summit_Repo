DROP TABLE CSSTG_OWNER.PSMSGCATDEFN CASCADE CONSTRAINTS
/

--
-- PSMSGCATDEFN  (Table) 
--
CREATE TABLE CSSTG_OWNER.PSMSGCATDEFN
(
  MESSAGE_SET_NBR   INTEGER                     NOT NULL,
  MESSAGE_NBR       INTEGER                     NOT NULL,
  SRC_SYS_ID        VARCHAR2(5 BYTE)            NOT NULL,
  MESSAGE_TEXT      VARCHAR2(100 BYTE)          NOT NULL,
  MSG_SEVERITY      VARCHAR2(1 BYTE)            NOT NULL,
  LAST_UPDATE_DTTM  DATE,
  LOAD_ERROR        VARCHAR2(1 BYTE)            NOT NULL,
  DATA_ORIGIN       VARCHAR2(1 BYTE)            NOT NULL,
  CREATED_EW_DTTM   DATE,
  LASTUPD_EW_DTTM   DATE,
  BATCH_SID         NUMBER(10)                  NOT NULL,
  DESCRLONG         VARCHAR2(4000 BYTE)
)
COMPRESS BASIC
/
