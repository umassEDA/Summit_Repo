DROP INDEX CSSTG_OWNER.PK_PS_SERVICE_IMPACT
/

--
-- PK_PS_SERVICE_IMPACT  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_SERVICE_IMPACT ON CSSTG_OWNER.PS_SERVICE_IMPACT
(INSTITUTION, SRVC_IND_CD, EFFDT, SERVICE_IMPACT, TERM_CATEGORY, 
SRC_SYS_ID)
/