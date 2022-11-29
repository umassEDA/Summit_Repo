DROP INDEX CSSTG_OWNER.PK_PS_CITIZEN_STS_TBL
/

--
-- PK_PS_CITIZEN_STS_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_CITIZEN_STS_TBL ON CSSTG_OWNER.PS_CITIZEN_STS_TBL
(COUNTRY, CITIZENSHIP_STATUS, SRC_SYS_ID)
/