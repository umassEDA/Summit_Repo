DROP INDEX CSMRT_OWNER.PK_PS_D_ACAD_ORG
/

--
-- PK_PS_D_ACAD_ORG  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_PS_D_ACAD_ORG ON CSMRT_OWNER.PS_D_ACAD_ORG
(ACAD_ORG_SID, EFFDT)
/
