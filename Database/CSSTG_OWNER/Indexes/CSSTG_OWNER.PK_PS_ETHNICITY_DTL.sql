DROP INDEX CSSTG_OWNER.PK_PS_ETHNICITY_DTL
/

--
-- PK_PS_ETHNICITY_DTL  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_ETHNICITY_DTL ON CSSTG_OWNER.PS_ETHNICITY_DTL
(EMPLID, REG_REGION, ETHNIC_GRP_CD, SRC_SYS_ID)
/
