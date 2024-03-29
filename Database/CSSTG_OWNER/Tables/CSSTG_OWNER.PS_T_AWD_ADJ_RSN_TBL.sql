DROP TABLE CSSTG_OWNER.PS_T_AWD_ADJ_RSN_TBL CASCADE CONSTRAINTS
/

--
-- PS_T_AWD_ADJ_RSN_TBL  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_AWD_ADJ_RSN_TBL
(
  INSTITUTION       VARCHAR2(5 BYTE)            NOT NULL,
  AID_YEAR          VARCHAR2(4 BYTE)            NOT NULL,
  ADJUST_REASON_CD  VARCHAR2(3 BYTE)            NOT NULL,
  DESCR50           VARCHAR2(50 BYTE)           NOT NULL,
  DESCRLONG         VARCHAR2(4000 BYTE),
  SRC_SCN           NUMBER
)
COMPRESS BASIC
/
