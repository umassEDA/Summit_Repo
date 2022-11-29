DROP INDEX CSSTG_OWNER.PK_PS_ENRL_RSN_TBL
/

--
-- PK_PS_ENRL_RSN_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ENRL_RSN_TBL ON CSSTG_OWNER.PS_ENRL_RSN_TBL
(SETID, ACAD_CAREER, ENRL_ACTION, ENRL_ACTION_REASON, EFFDT, 
SRC_SYS_ID)
/