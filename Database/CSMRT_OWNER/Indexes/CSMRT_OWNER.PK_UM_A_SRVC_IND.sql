DROP INDEX CSMRT_OWNER.PK_UM_A_SRVC_IND
/

--
-- PK_UM_A_SRVC_IND  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_A_SRVC_IND ON CSMRT_OWNER.UM_A_SRVC_IND
(AUDIT_OPRID, AUDIT_STAMP, AUDIT_ACTN, PERSON_ID, SRVC_IND_DTTM, 
SRC_SYS_ID)
/
