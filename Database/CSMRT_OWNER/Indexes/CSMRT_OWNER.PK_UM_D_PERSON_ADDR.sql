DROP INDEX CSMRT_OWNER.PK_UM_D_PERSON_ADDR
/

--
-- PK_UM_D_PERSON_ADDR  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_D_PERSON_ADDR ON CSMRT_OWNER.UM_D_PERSON_ADDR
(PERSON_ID, ADDRESS_TYPE, EFFDT, SRC_SYS_ID)
/