DROP INDEX CSMRT_OWNER.AK_UM_S_SF_ITEM1
/

--
-- AK_UM_S_SF_ITEM1  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.AK_UM_S_SF_ITEM1 ON CSMRT_OWNER.UM_S_SF_ITEM
(PERSON_SID)
  LOCAL (  
  PARTITION FY_2021
)
/