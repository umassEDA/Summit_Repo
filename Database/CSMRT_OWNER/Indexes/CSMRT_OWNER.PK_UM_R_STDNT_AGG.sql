DROP INDEX CSMRT_OWNER.PK_UM_R_STDNT_AGG
/

--
-- PK_UM_R_STDNT_AGG  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_R_STDNT_AGG ON CSMRT_OWNER.UM_R_STDNT_AGG
(TERM_SID, PERSON_SID, SRC_SYS_ID)
/
