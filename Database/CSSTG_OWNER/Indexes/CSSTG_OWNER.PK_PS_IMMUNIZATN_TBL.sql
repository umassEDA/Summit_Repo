DROP INDEX CSSTG_OWNER.PK_PS_IMMUNIZATN_TBL
/

--
-- PK_PS_IMMUNIZATN_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_IMMUNIZATN_TBL ON CSSTG_OWNER.PS_IMMUNIZATN_TBL
(IMMUNIZATION, EFFDT, SRC_SYS_ID)
/
