DROP INDEX CSMRT_OWNER.NK_UM_D_EVENT_MTG
/

--
-- NK_UM_D_EVENT_MTG  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.NK_UM_D_EVENT_MTG ON CSMRT_OWNER.UM_D_EVENT_MTG
(CAMPUS_EVENT_NBR, EVENT_MTG_NBR, SRC_SYS_ID)
/
