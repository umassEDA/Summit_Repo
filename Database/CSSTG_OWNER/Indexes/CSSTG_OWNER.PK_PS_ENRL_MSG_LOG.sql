DROP INDEX CSSTG_OWNER.PK_PS_ENRL_MSG_LOG
/

--
-- PK_PS_ENRL_MSG_LOG  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ENRL_MSG_LOG ON CSSTG_OWNER.PS_ENRL_MSG_LOG
(ENRL_REQUEST_ID, ENRL_REQ_DETL_SEQ, MESSAGE_SEQ, SRC_SYS_ID)
/
