DROP TABLE CSSTG_OWNER.PS_K_PERSON CASCADE CONSTRAINTS
/

--
-- PS_K_PERSON  (Table) 
--
CREATE TABLE CSSTG_OWNER.PS_K_PERSON
(
  EMPLID      VARCHAR2(11 BYTE)                 NOT NULL,
  SRC_SYS_ID  VARCHAR2(5 BYTE)                  NOT NULL
)
COMPRESS BASIC
/
