DROP INDEX CSMRT_OWNER.PK_UM_F_STDNT_RESPONSE
/

--
-- PK_UM_F_STDNT_RESPONSE  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_STDNT_RESPONSE ON CSMRT_OWNER.UM_F_STDNT_RESPONSE
(PERSON_ID, ACAD_CAR_CD, STU_CAR_NBR, ADM_APPL_NBR, SEQNUM, 
SRC_SYS_ID)
/
