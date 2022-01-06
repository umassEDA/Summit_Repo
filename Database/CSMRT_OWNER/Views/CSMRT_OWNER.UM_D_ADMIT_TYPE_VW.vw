CREATE OR REPLACE VIEW UM_D_ADMIT_TYPE_VW
BEQUEATH DEFINER
AS 
SELECT ADMIT_TYPE_SID,
           INSTITUTION_CD,
           INSTITUTION_CD INSTITUTION_ID,   -- Temporary redundant column 
           ADMIT_TYPE_ID,
           SRC_SYS_ID,
           EFFDT,
           EFF_STAT_CD,
           ADMIT_TYPE_SD,
           ADMIT_TYPE_LD,
           ADMIT_TYPE_GRP,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM PS_D_ADMIT_TYPE;
