DROP INDEX CSSTG_OWNER.PK_PS_S_OPRDEFN
/

--
-- PK_PS_S_OPRDEFN  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_S_OPRDEFN ON CSSTG_OWNER.PS_S_OPRDEFN_OLD
(OPRID, SRC_SYS_ID)
/