DROP TABLE CSSTG_OWNER.PS_VAR_DATA_SFPR_OLD CASCADE CONSTRAINTS
/

--
-- PS_VAR_DATA_SFPR_OLD  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_VAR_DATA_SFPR_OLD
(
  COMMON_ID           VARCHAR2(11 BYTE)         NOT NULL,
  VAR_DATA_SEQ        INTEGER                   NOT NULL,
  SRC_SYS_ID          VARCHAR2(5 BYTE)          NOT NULL,
  CHECKLIST_DTTM_VAR  DATE,
  LOAD_ERROR          VARCHAR2(1 BYTE)          NOT NULL,
  DATA_ORIGIN         VARCHAR2(1 BYTE)          NOT NULL,
  CREATED_EW_DTTM     DATE,
  LASTUPD_EW_DTTM     DATE,
  BATCH_SID           NUMBER(10)                NOT NULL
)
COMPRESS BASIC
/
