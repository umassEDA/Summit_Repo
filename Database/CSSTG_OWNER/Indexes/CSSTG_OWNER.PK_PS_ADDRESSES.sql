DROP INDEX CSSTG_OWNER.PK_PS_ADDRESSES
/

--
-- PK_PS_ADDRESSES  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ADDRESSES ON CSSTG_OWNER.PS_ADDRESSES
(EMPLID, ADDRESS_TYPE, EFFDT, SRC_SYS_ID)
/
