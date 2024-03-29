DROP TABLE CSSTG_OWNER.PS_T_EVENT_TYPE_TBL CASCADE CONSTRAINTS
/

--
-- PS_T_EVENT_TYPE_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_EVENT_TYPE_TBL
(
  CAMPUS_EVENT_TYPE  VARCHAR2(4 BYTE)           NOT NULL,
  EFFDT              DATE                       NOT NULL,
  EFF_STATUS         VARCHAR2(1 BYTE)           NOT NULL,
  DESCR              VARCHAR2(30 BYTE)          NOT NULL,
  DESCRSHORT         VARCHAR2(10 BYTE)          NOT NULL,
  COMMENTS           VARCHAR2(4000 BYTE),
  SRC_SCN            NUMBER
)
NOCOMPRESS
/
