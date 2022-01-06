CREATE OR REPLACE VIEW UM_D_RECRT_CTGRY_VW
BEQUEATH DEFINER
AS 
SELECT RECRT_CTGRY_SID,
           INSTITUTION_CD,
           INSTITUTION_CD INSTITUTION_ID,   -- Temporary redundant column 
           RECRT_CTGRY_ID,
           SRC_SYS_ID,
           EFFDT,
           EFF_STAT_CD,
           RECRT_CTGRY_SD,
           RECRT_CTGRY_LD,
           RECRT_CTGRY_ID_DESC,
           RECRT_GRP_ID,
           RECRT_GRP_SD,
           RECRT_GRP_LD,
           RECRT_GRP_ID_DESC,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM PS_D_RECRT_CTGRY;
