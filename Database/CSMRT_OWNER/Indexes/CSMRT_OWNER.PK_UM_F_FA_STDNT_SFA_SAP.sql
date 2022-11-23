DROP INDEX CSMRT_OWNER.PK_UM_F_FA_STDNT_SFA_SAP
/

--
-- PK_UM_F_FA_STDNT_SFA_SAP  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_FA_STDNT_SFA_SAP ON CSMRT_OWNER.UM_F_FA_STDNT_SFA_SAP
(INSTITUTION_CD, ACAD_CAR_CD, AID_YEAR, PERSON_ID, PROCESS_DTTM, 
SRC_SYS_ID)
/