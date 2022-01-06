CREATE OR REPLACE VIEW UM_R_ADM_RECRTR_VW
BEQUEATH DEFINER
AS 
select
INSTITUTION_CD, 
ACAD_CAR_CD, 
PERSON_ID, 
STDNT_CAR_NUM, 
ADM_APPL_NBR, 
RECRT_CTGRY_ID, 
RECRTR_ID, 
SRC_SYS_ID, 
INSTITUTION_SID, 
ACAD_CAR_SID, 
APPLCNT_SID, 
RECRT_CTGRY_SID, 
RECRTR_SID, 
PRI_RCRTR_FLG, 
RECRT_SUB_CTGRY_ID, 
RECRT_SUB_CTGRY_SD, 
RECRT_SUB_CTGRY_LD, 
LOAD_ERROR, 
DATA_ORIGIN, 
CREATED_EW_DTTM, 
LASTUPD_EW_DTTM, 
BATCH_SID, 
RECRUITER_DESCR
from PS_R_ADM_RECRTR
where ROWNUM < 10000000;
