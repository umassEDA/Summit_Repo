DROP INDEX CSMRT_OWNER.AK_UM_F_FA_STDNT_BDGT2
/

--
-- AK_UM_F_FA_STDNT_BDGT2  (Index) 
--
CREATE INDEX CSMRT_OWNER.AK_UM_F_FA_STDNT_BDGT2 ON CSMRT_OWNER.UM_F_FA_STDNT_BDGT
(INSTITUTION_CD, ACAD_CAR_CD, AID_YEAR, PERSON_ID)
/
