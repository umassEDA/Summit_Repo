DROP INDEX CSSTG_OWNER.PK_PS_AUDIT_SRVC_IND
/

--
-- PK_PS_AUDIT_SRVC_IND  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_AUDIT_SRVC_IND ON CSSTG_OWNER.PS_AUDIT_SRVC_IND
(AUDIT_OPRID, AUDIT_STAMP, AUDIT_ACTN, EMPLID, SRVC_IND_DTTM, 
SRC_SYS_ID)
/
