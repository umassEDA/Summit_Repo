DROP VIEW CSMRT_OWNER.UM_D_RQ_LINE_VW
/

--
-- UM_D_RQ_LINE_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_RQ_LINE_VW
BEQUEATH DEFINER
AS 
select RQRMNT_LINE_SID, REQUIREMENT, RQ_LINE_NBR, SRC_SYS_ID, 
       RQ_LINE_KEY_NBR, EFFDT, DESCR, DESCRSHORT, 
       GRADE_POINTS_MIN, GPA_REQUIRED, GPA_MAXIMUM, 
       MIN_UNITS_REQD, MIN_CRSES_REQD, MAX_UNITS_ALLOWD, MAX_CRSES_ALLOWD, 
       REQ_LINE_TYPE, RQ_REPORTING, RQ_REPORTING_SD, RQ_REPORTING_LD, 
       SAA_HIDE_STATUS, SAA_DESCR80, DESCR254, DESCRLONG, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM 
  from UM_D_RQ_LINE
/
