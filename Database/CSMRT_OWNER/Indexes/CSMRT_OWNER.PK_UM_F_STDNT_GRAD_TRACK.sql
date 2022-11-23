DROP INDEX CSMRT_OWNER.PK_UM_F_STDNT_GRAD_TRACK
/

--
-- PK_UM_F_STDNT_GRAD_TRACK  (Index) 
--
CREATE UNIQUE INDEX CSMRT_OWNER.PK_UM_F_STDNT_GRAD_TRACK ON CSMRT_OWNER.UM_F_STDNT_GRAD_TRACK
(PERSON_ID, INSTITUTION_CD, ACAD_CAR_CD, STDNT_CAR_NUM, ACAD_PROG_CD, 
EXP_GRAD_TERM, DEG_CD, SSR_GRAD_REV_DTTM, SRC_SYS_ID)
/