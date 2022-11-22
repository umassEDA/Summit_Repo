DROP VIEW CSMRT_OWNER.UM_D_CLASS_ATTR_VAL_VW
/

--
-- UM_D_CLASS_ATTR_VAL_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_CLASS_ATTR_VAL_VW
BEQUEATH DEFINER
AS 
select CLASS_ATTR_VAL_SID, CRSE_CD, CRSE_OFFER_NUM, TERM_CD, SESSION_CD, CLASS_SECTION_CD, 
       CRSE_ATTR, CRSE_ATTR_VALUE, SRC_SYS_ID, 
       INSTITUTION_CD, CLASS_SID, 
       CRSE_ATTR_SD, CRSE_ATTR_LD, CRSE_ATTR_VALUE_LD, CRSE_ATTR_VALUE_FD, CATALOG_PRINT_FLG, SCHEDULE_PRINT_FLG, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from UM_D_CLASS_ATTR_VAL
/
