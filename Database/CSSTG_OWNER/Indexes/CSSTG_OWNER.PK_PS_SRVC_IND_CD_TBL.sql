DROP INDEX CSSTG_OWNER.PK_PS_SRVC_IND_CD_TBL
/

--
-- PK_PS_SRVC_IND_CD_TBL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_SRVC_IND_CD_TBL ON CSSTG_OWNER.PS_SRVC_IND_CD_TBL
(INSTITUTION, SRVC_IND_CD, EFFDT, SRC_SYS_ID)
/
