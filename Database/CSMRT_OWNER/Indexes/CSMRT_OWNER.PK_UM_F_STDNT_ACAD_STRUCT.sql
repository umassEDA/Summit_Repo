DROP INDEX CSMRT_OWNER.PK_UM_F_STDNT_ACAD_STRUCT
/

--
-- PK_UM_F_STDNT_ACAD_STRUCT  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_STDNT_ACAD_STRUCT ON CSMRT_OWNER.UM_F_STDNT_ACAD_STRUCT
(TERM_SID, PERSON_SID, STDNT_CAR_NUM, ACAD_PLAN_SID, ACAD_SPLAN_SID, 
SRC_SYS_ID)
/