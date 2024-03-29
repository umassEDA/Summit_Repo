DROP VIEW CSMRT_OWNER.UM_F_STDNT_ADVR_VW
/

--
-- UM_F_STDNT_ADVR_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_F_STDNT_ADVR_VW
BEQUEATH DEFINER
AS 
SELECT TERM_SID,
           PERSON_SID,
           STDNT_CAR_NUM,
           ACAD_PLAN_SID,
           ACAD_SPLAN_SID,
           ADVISOR_ROLE,
           STDNT_ADVISOR_NBR,
           SRC_SYS_ID,
           INSTITUTION_CD,
           ACAD_CAR_CD,
           TERM_CD,
           PERSON_ID,
           ACAD_PROG_CD,
           ACAD_PLAN_CD,
           ACAD_SPLAN_CD,
           EFFDT,
           PERSON_ID     EMPLID,
           ADVISOR_ROLE_SD,
           ADVISOR_ROLE_LD,
           INSTITUTION_SID,
           ACAD_CAR_SID,
           ACAD_PROG_SID,
           STUDENT_ADVISOR_SID,
           STUDENT_ADVISOR_NM,
           STUDENT_ADVISOR_ORDER,
           APPROVE_ENRLMT,
           APPROVE_GRAD,
           GRAD_APPROVED,
           COMMITTEE_ID,
           COMM_PERS_CD,
           TERM_BEGIN_DT,
           TERM_END_DT,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM
      FROM UM_F_STDNT_ADVR
/
