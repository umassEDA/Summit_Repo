DROP INDEX CSMRT_OWNER.PK_UM_F_STDNT_GRAD_TRACK_NOTE
/

--
-- PK_UM_F_STDNT_GRAD_TRACK_NOTE  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_STDNT_GRAD_TRACK_NOTE ON CSMRT_OWNER.UM_F_STDNT_GRAD_TRACK_NOTE
(PERSON_ID, INSTITUTION_CD, ACAD_CAR_CD, STDNT_CAR_NUM, ACAD_PROG_CD, 
EXP_GRAD_TERM, DEG_CD, SEQNUM, SRC_SYS_ID)
/
