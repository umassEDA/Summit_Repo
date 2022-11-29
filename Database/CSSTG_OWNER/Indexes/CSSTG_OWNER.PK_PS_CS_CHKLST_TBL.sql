DROP INDEX CSSTG_OWNER.PK_PS_CS_CHKLST_TBL
/

--
-- PK_PS_CS_CHKLST_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_CS_CHKLST_TBL ON CSSTG_OWNER.PS_CS_CHKLST_TBL
(INSTITUTION, CHECKLIST_CD, EFFDT, SRC_SYS_ID)
/