DROP INDEX CSMRT_OWNER.AK_UM_R_PERSON_ASSOC18
/

--
-- AK_UM_R_PERSON_ASSOC18  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.AK_UM_R_PERSON_ASSOC18 ON CSMRT_OWNER.UM_R_PERSON_ASSOC
(PERSON_PHONE_SID)
/