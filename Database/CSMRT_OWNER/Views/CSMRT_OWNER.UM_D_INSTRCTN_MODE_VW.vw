CREATE OR REPLACE VIEW UM_D_INSTRCTN_MODE_VW
BEQUEATH DEFINER
AS 
select INSTRCTN_MODE_SID, INSTITUTION_CD, INSTRCTN_MODE_CD, SRC_SYS_ID, EFFDT, EFF_STAT_CD, 
       INSTRCTN_MODE_SD, INSTRCTN_MODE_LD,
       decode(INSTRCTN_MODE_CD,'OL','Y','OS','Y','WH','Y','N') ONLINE_FLAG,
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_INSTRCTN_MODE;