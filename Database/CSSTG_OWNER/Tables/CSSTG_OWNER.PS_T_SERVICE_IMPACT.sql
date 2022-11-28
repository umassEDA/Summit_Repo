DROP TABLE CSSTG_OWNER.PS_T_SERVICE_IMPACT CASCADE CONSTRAINTS
/

--
-- PS_T_SERVICE_IMPACT  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_T_SERVICE_IMPACT
(
  INSTITUTION     VARCHAR2(5 BYTE)              NOT NULL,
  SRVC_IND_CD     VARCHAR2(3 BYTE)              NOT NULL,
  EFFDT           DATE                          NOT NULL,
  SERVICE_IMPACT  VARCHAR2(5 BYTE)              NOT NULL,
  TERM_CATEGORY   VARCHAR2(1 BYTE)              NOT NULL,
  DESCRLONG       VARCHAR2(4000 BYTE),
  SRC_SCN         NUMBER
)
NOCOMPRESS
/
