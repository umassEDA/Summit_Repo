DROP INDEX CSMRT_OWNER.NK_PS_D_CHKLST_CD
/

--
-- NK_PS_D_CHKLST_CD  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_CHKLST_CD ON CSMRT_OWNER.PS_D_CHKLST_CD
(INSTITUTION_CD, CHECKLIST_CD, SRC_SYS_ID)
/
