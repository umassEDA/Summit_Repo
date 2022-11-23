DROP INDEX CSMRT_OWNER.NK_PS_D_DEG_HONORS
/

--
-- NK_PS_D_DEG_HONORS  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_DEG_HONORS ON CSMRT_OWNER.PS_D_DEG_HONORS
(INSTITUTION_CD, HONORS_TYPE_CD, HONORS_CD, SRC_SYS_ID)
/