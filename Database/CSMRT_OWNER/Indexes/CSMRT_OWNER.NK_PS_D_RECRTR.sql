DROP INDEX CSMRT_OWNER.NK_PS_D_RECRTR
/

--
-- NK_PS_D_RECRTR  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_PS_D_RECRTR ON CSMRT_OWNER.PS_D_RECRTR
(INSTITUTION_CD, ACAD_CAR_CD, RECRUITER_ID, SRC_SYS_ID)
/