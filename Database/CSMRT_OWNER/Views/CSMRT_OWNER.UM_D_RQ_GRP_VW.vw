CREATE OR REPLACE VIEW UM_D_RQ_GRP_VW
BEQUEATH DEFINER
AS 
select RQRMNT_GROUP_SID, RQRMNT_GROUP, SRC_SYS_ID, EFFDT, EFF_STATUS, 
       DESCR, DESCRSHORT, INSTITUTION_CD, ACAD_CAR_CD, ACAD_PROG_CD, ACAD_PLAN_CD, ACAD_SPLAN_CD, 
       SUBJECT, CATALOG_NBR, GRADE_POINTS_MIN, GPA_REQUIRED, MIN_UNITS_REQD, MIN_CRSES_REQD, 
       RQRMNT_USEAGE, RQRMNT_USEAGE_SD, RQRMNT_USEAGE_LD, 
       RQRMNT_LIST_SEQ, RQ_CONNECT_TYPE, 
       SAA_DESCR80, DESCR254, DESCRLONG, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM, 
       SQL_STR_PRE, SQL_STR_CO 
  from UM_D_RQ_GRP;