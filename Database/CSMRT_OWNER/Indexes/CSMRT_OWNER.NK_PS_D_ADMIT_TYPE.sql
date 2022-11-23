DROP INDEX CSMRT_OWNER.NK_PS_D_ADMIT_TYPE
/

--
-- NK_PS_D_ADMIT_TYPE  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_ADMIT_TYPE ON CSMRT_OWNER.PS_D_ADMIT_TYPE
(INSTITUTION_CD, ADMIT_TYPE_ID, SRC_SYS_ID)
/