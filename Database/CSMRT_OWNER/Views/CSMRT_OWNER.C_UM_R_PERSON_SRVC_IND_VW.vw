DROP VIEW CSMRT_OWNER.C_UM_R_PERSON_SRVC_IND_VW
/

--
-- C_UM_R_PERSON_SRVC_IND_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_UM_R_PERSON_SRVC_IND_VW
BEQUEATH DEFINER
AS 
SELECT PERSON_SID,
           CAST (TRUNC (SRVC_IND_DTTM) AS DATE)     SRVC_IND_DTTM,
           INSTITUTION_SID,
           2147483646                               SRVC_IND_SID, --do not use- May 2022
           2147483646                               SRVC_IMPACT_SID, --do not use- May 2022
           TERM_CATEGORY,
           S.SRC_SYS_ID,
           PERSON_ID                                EMPLID,
           INSTITUTION_CD,
           S.SRVC_IND_CD,
           S.SRVC_IND_LD,                               -- Added May 2022
           EFFDT,
           S.SERVICE_IMPACT,
           S.SERVICE_IMPACT_LD,                         -- Added May 2022
           2147483646                               SRVC_IND_RSN_SID,
           SRVC_IND_REASON,                                  -- Added Nov 2019
           SRVC_IND_REASON_LD,                          -- Added May 2022
           OPRID,
           SRVC_IND_ACT_TERM,
           SRVC_IND_ACTIVE_DT,
           SRVC_IND_ACT_TERM_DESC,
           SRVC_IND_ACT_TERM_SDESC,
           SCC_SI_END_TERM,
           SCC_SI_END_DT,
           SCC_SI_END_TERM_DESC,
           SCC_SI_END_TERM_SDESC,
           POS_SRVC_INDICATOR,
           SRVC_IND_REFRNCE,
           CAST (2147483646 AS INTEGER)             DEPT_SID,
           CONTACT,
           CONTACT_ID,
           AMOUNT,
           PLACED_METHOD,
           PLACED_PERSON,
           PLACED_PERSON_ID,
           PLACED_PROCESS,
           COMM_COMMENTS,
           CAST ('N' AS VARCHAR2 (1))               LOAD_ERROR,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM,
           CAST (1234 AS NUMBER (10))               BATCH_SID
      FROM CSMRT_OWNER.UM_D_PERSON_SRVC_IND S
/
