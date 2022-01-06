CREATE OR REPLACE VIEW UM_D_RSDNCY_VW
BEQUEATH DEFINER
AS 
select RSDNCY_SID, RSDNCY_ID, SRC_SYS_ID, EFFDT, EFF_STAT_CD, 
       RSDNCY_SD, RSDNCY_LD,
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_RSDNCY;
