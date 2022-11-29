DROP INDEX CSSTG_OWNER.PK_PS_CAMPUS_MTG_SEL
/

--
-- PK_PS_CAMPUS_MTG_SEL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_CAMPUS_MTG_SEL ON CSSTG_OWNER.PS_CAMPUS_MTG_SEL
(CAMPUS_EVENT_NBR, CAMPUS_EVENT_ATND, EVENT_MTG_NBR, SRC_SYS_ID)
/