DROP INDEX CSMRT_OWNER.PK_UM_F_COMM_PERSON
/

--
-- PK_UM_F_COMM_PERSON  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_COMM_PERSON ON CSMRT_OWNER.UM_F_COMM_PERSON
(COMMON_ID, SEQ_3C, SRC_SYS_ID)
/
