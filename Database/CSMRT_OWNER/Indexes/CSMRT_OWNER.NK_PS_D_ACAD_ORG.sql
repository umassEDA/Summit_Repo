DROP INDEX CSMRT_OWNER.NK_PS_D_ACAD_ORG
/

--
-- NK_PS_D_ACAD_ORG  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_ACAD_ORG ON CSMRT_OWNER.PS_D_ACAD_ORG
(ACAD_ORG_CD, EFFDT, SRC_SYS_ID)
/
