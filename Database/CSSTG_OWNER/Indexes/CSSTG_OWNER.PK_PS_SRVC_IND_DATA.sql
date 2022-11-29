DROP INDEX CSSTG_OWNER.PK_PS_SRVC_IND_DATA
/

--
-- PK_PS_SRVC_IND_DATA  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_SRVC_IND_DATA ON CSSTG_OWNER.PS_SRVC_IND_DATA
(EMPLID, SRVC_IND_DTTM, SRC_SYS_ID)
/