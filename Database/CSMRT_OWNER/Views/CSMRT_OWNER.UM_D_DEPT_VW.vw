CREATE OR REPLACE VIEW UM_D_DEPT_VW
BEQUEATH DEFINER
AS 
select DEPT_SID, SETID, DEPT_ID, SRC_SYS_ID, EFFDT, EFF_STAT_CD, 
       DEPT_SD, DEPT_LD,
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_DEPT;
