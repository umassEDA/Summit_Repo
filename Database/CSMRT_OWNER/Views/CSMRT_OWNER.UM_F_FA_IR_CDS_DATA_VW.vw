DROP VIEW CSMRT_OWNER.UM_F_FA_IR_CDS_DATA_VW
/

--
-- UM_F_FA_IR_CDS_DATA_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_F_FA_IR_CDS_DATA_VW
BEQUEATH DEFINER
AS 
SELECT INSTITUTION_CD,
           ACAD_CAR_CD,
           TERM_CD,
           PERSON_ID,
           INSTITUTION_SID,
           ACAD_CAR_SID,
           TERM_SID,
           PERSON_SID,
           RSDNCY_SID,
           RESIDENCY_CD,
           ACAD_LOAD_SID,
           ACAD_LOAD_CD,
           FIRST_FULL_FRESHMAN_FLAG,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM UM_F_FA_IR_CDS_DATA
     where ROWNUM < 100000000
/
