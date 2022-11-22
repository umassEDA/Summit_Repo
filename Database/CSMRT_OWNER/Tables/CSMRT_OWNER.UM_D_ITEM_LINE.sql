DROP TABLE CSMRT_OWNER.UM_D_ITEM_LINE CASCADE CONSTRAINTS
/

--
-- UM_D_ITEM_LINE  (Table) 
--
CREATE TABLE CSMRT_OWNER.UM_D_ITEM_LINE
(
  ITEM_LINE        INTEGER                      NOT NULL,
  SRC_SYS_ID       VARCHAR2(5 CHAR)             NOT NULL,
  LOAD_ERROR       VARCHAR2(1 CHAR)             NOT NULL,
  DATA_ORIGIN      VARCHAR2(1 CHAR)             NOT NULL,
  CREATED_EW_DTTM  DATE,
  LASTUPD_EW_DTTM  DATE,
  BATCH_SID        NUMBER(10)                   NOT NULL
)
NOCOMPRESS
/


ALTER TABLE CSMRT_OWNER.UM_D_ITEM_LINE ADD (
  CONSTRAINT PK_UM_D_ITEM_LINE
  PRIMARY KEY
  (ITEM_LINE)
  RELY
  DISABLE NOVALIDATE)
/
