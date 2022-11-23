DROP INDEX CSMRT_OWNER.PK_UM_D_CLASS_CHRSTC
/

--
-- PK_UM_D_CLASS_CHRSTC  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_D_CLASS_CHRSTC ON CSMRT_OWNER.UM_D_CLASS_CHRSTC
(CRSE_CD, CRSE_OFFER_NUM, TERM_CD, SESSION_CD, CLASS_SECTION_CD, 
ROOM_CHRSTC, SRC_SYS_ID)
/