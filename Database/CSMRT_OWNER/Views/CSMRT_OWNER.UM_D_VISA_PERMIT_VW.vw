DROP VIEW CSMRT_OWNER.UM_D_VISA_PERMIT_VW
/

--
-- UM_D_VISA_PERMIT_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_VISA_PERMIT_VW
BEQUEATH DEFINER
AS 
SELECT VISA_PERMIT_SID,
           COUNTRY,
           VISA_PERMIT_TYPE,
           SRC_SYS_ID,
           EFFDT,
           EFF_STATUS,
           DESCRSHORT VISA_PERMIT_TYPE_SD,
           DESCR VISA_PERMIT_TYPE_LD,
           VISA_PERMIT_CLASS,
           VISA_PERMIT_CLASS_SD,
           VISA_PERMIT_CLASS_LD,
           COMMENTS,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM UM_D_VISA_PERMIT
/
