DROP VIEW CSMRT_OWNER.UM_D_CLASS_COMP_VW
/

--
-- UM_D_CLASS_COMP_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_CLASS_COMP_VW
BEQUEATH DEFINER
AS 
select CRSE_CD, CRSE_OFFER_NUM, TERM_CD, SESSION_CD, ASSOCIATED_CLASS, SSR_COMP_CD, SRC_SYS_ID, 
       CLASS_ASSOC_SID, SSR_COMP_SID, OPTIONAL_SECTION, CONTACT_HOURS, FINAL_EXAM, AUTO_CREATE_CMPNT, WEEK_WORKLOAD_HRS, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from CSMRT_OWNER.UM_D_CLASS_COMP
/
