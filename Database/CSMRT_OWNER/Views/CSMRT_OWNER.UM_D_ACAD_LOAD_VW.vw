CREATE OR REPLACE VIEW UM_D_ACAD_LOAD_VW
BEQUEATH DEFINER
AS 
select ACAD_LOAD_SID, APPRVD_IND, ACAD_LOAD_CD, SRC_SYS_ID, 
       ACAD_LOAD_SD, ACAD_LOAD_LD, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM 
  from PS_D_ACAD_LOAD;