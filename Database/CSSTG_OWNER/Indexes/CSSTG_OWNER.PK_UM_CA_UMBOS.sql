DROP INDEX CSSTG_OWNER.PK_UM_CA_UMBOS
/

--
-- PK_UM_CA_UMBOS  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_UM_CA_UMBOS ON CSSTG_OWNER.PS_UM_CA_UMBOS
(UM_ADM_USERID, INSTITUTION, UM_ADM_REC_NBR, DATETIME_CREATED, SRC_SYS_ID)
/
