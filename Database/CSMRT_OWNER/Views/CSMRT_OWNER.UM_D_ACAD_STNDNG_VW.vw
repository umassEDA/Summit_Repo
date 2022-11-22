CREATE OR REPLACE VIEW UM_D_ACAD_STNDNG_VW
BEQUEATH DEFINER
AS 
select ACAD_STNDNG_SID, INSTITUTION_CD, ACAD_CAR_CD, ACAD_STNDNG_ACN_CD, SRC_SYS_ID, EFFDT, 
       ACAD_STNDNG_ACN_SD, ACAD_STNDNG_ACN_LD, ACAD_STNDNG_ACN_FD, 
       STNDNG_STAT_CD, STNDNG_STAT_SD, STNDNG_STAT_LD, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_ACAD_STNDNG;