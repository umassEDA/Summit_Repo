CREATE OR REPLACE VIEW UM_D_RQ_VW
BEQUEATH DEFINER
AS 
select REQUIREMENT_SID, REQUIREMENT, SRC_SYS_ID, EFFDT, EFF_STATUS, 
       DESCR, DESCRSHORT, INSTITUTION_CD, SUBJECT, CATALOG_NBR, 
       GRADE_POINTS_MIN, GPA_REQUIRED, MIN_UNITS_REQD, MIN_CRSES_REQD, 
       RQRMNT_USEAGE, RQRMNT_USEAGE_SD, RQRMNT_USEAGE_LD, 
       RQRMNT_LIST_SEQ, RQ_CONNECT_TYPE, SAA_HIDE_STATUS, 
       SAA_DESCR80, DESCR254, DESCRLONG, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from UM_D_RQ;
