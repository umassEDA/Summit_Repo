DROP INDEX CSMRT_OWNER.PK_PS_D_ACAD_GRP
/

--
-- PK_PS_D_ACAD_GRP  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_PS_D_ACAD_GRP ON CSMRT_OWNER.PS_D_ACAD_GRP
(ACAD_GRP_SID, EFFDT)
/
