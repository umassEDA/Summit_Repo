CREATE OR REPLACE VIEW UM_D_PROG_ACN_RSN_VW
BEQUEATH DEFINER
AS 
select PROG_ACN_RSN_SID, SETID, PROG_ACN_CD, PROG_ACN_RSN_CD, SRC_SYS_ID, EFFDT, EFF_STAT_CD, 
       PROG_ACN_RSN_SD, PROG_ACN_RSN_LD, PROG_ACN_SID,
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_PROG_ACN_RSN;
