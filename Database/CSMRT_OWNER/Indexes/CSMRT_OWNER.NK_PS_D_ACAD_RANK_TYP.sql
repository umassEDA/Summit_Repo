DROP INDEX CSMRT_OWNER.NK_PS_D_ACAD_RANK_TYP
/

--
-- NK_PS_D_ACAD_RANK_TYP  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_ACAD_RANK_TYP ON CSMRT_OWNER.PS_D_ACAD_RANK_TYP
(ACAD_RANK_TYPE_ID, SRC_SYS_ID)
/
