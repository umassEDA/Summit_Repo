DROP INDEX CSSTG_OWNER.PK_UM_CA_UMDAR
/

--
-- PK_UM_CA_UMDAR  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_UM_CA_UMDAR ON CSSTG_OWNER.PS_UM_CA_UMDAR
(UM_ADM_USERID, INSTITUTION, UM_ADM_REC_NBR, DATETIME_CREATED, SRC_SYS_ID)
/
