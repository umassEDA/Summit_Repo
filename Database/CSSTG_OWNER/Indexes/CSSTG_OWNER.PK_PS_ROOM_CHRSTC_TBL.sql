DROP INDEX CSSTG_OWNER.PK_PS_ROOM_CHRSTC_TBL
/

--
-- PK_PS_ROOM_CHRSTC_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ROOM_CHRSTC_TBL ON CSSTG_OWNER.PS_ROOM_CHRSTC_TBL
(ROOM_CHRSTC, EFFDT, SRC_SYS_ID)
/
