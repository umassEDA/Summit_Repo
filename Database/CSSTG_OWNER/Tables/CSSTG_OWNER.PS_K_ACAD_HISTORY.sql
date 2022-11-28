DROP TABLE CSSTG_OWNER.PS_K_ACAD_HISTORY CASCADE CONSTRAINTS
/

--
-- PS_K_ACAD_HISTORY  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_K_ACAD_HISTORY
(
  EMPLID      VARCHAR2(11 BYTE)                 NOT NULL,
  EXT_ORG_ID  VARCHAR2(11 BYTE)                 NOT NULL,
  SRC_SYS_ID  VARCHAR2(5 BYTE)                  NOT NULL
)
NOCOMPRESS
/