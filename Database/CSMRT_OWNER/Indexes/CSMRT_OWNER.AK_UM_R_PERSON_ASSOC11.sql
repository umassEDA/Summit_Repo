DROP INDEX CSMRT_OWNER.AK_UM_R_PERSON_ASSOC11
/

--
-- AK_UM_R_PERSON_ASSOC11  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.AK_UM_R_PERSON_ASSOC11 ON CSMRT_OWNER.UM_R_PERSON_ASSOC
(PERSON_ATTRIBUTE_SID)
/