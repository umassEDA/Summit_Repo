DROP TABLE CSSTG_OWNER.PS_VAR_DATA_SFTP_OLD CASCADE CONSTRAINTS
/

--
-- PS_VAR_DATA_SFTP_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_VAR_DATA_SFTP_OLD
(
  COMMON_ID        VARCHAR2(11 BYTE)            NOT NULL,
  VAR_DATA_SEQ     INTEGER                      NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 BYTE)             NOT NULL,
  BUSINESS_UNIT    VARCHAR2(5 BYTE)             NOT NULL,
  CONTRACT_NUM     VARCHAR2(25 BYTE)            NOT NULL,
  LOAD_ERROR       VARCHAR2(1 BYTE)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 BYTE)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
COMPRESS BASIC
/
