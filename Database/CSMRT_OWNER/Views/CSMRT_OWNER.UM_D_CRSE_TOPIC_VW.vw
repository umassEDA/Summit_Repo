DROP VIEW CSMRT_OWNER.UM_D_CRSE_TOPIC_VW
/

--
-- UM_D_CRSE_TOPIC_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_CRSE_TOPIC_VW
BEQUEATH DEFINER
AS 
select CRSE_TOPIC_SID, CRSE_CD, CRSE_OFFER_NUM, CRSE_TOPIC_ID, SRC_SYS_ID, EFFDT, 
       DESCRSHORT, DESCR, DESCRFORMAL, CRSE_SID, CRSE_REPEATABLE_FLG, 
       CRSE_REPEAT_LIMIT, CRS_TOPIC_LINK, UNITS_REPEAT_LIMIT, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from UM_D_CRSE_TOPIC
/
