DROP INDEX CSSTG_OWNER.PK_PS_E_EMAIL_ADDR
/

--
-- PK_PS_E_EMAIL_ADDR  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_E_EMAIL_ADDR ON CSSTG_OWNER.PS_E_EMAIL_ADDR
(ERROR_SID, SRC_SYS_ID)
/