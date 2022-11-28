DROP TABLE CSSTG_OWNER.PS_K_STDNT_BUDGET_IT CASCADE CONSTRAINTS
/

--
-- PS_K_STDNT_BUDGET_IT  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_K_STDNT_BUDGET_IT
(
  EMPLID             VARCHAR2(11 BYTE)          NOT NULL,
  INSTITUTION        VARCHAR2(5 BYTE)           NOT NULL,
  AID_YEAR           VARCHAR2(4 BYTE)           NOT NULL,
  ACAD_CAREER        VARCHAR2(4 BYTE)           NOT NULL,
  STRM               VARCHAR2(4 BYTE)           NOT NULL,
  EFFDT              DATE                       NOT NULL,
  EFFSEQ             INTEGER                    NOT NULL,
  BGT_ITEM_CATEGORY  VARCHAR2(4 BYTE)           NOT NULL,
  SRC_SYS_ID         VARCHAR2(5 BYTE)           NOT NULL
)
NOCOMPRESS
/