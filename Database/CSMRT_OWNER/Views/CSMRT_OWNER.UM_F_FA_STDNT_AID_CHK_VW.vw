DROP VIEW CSMRT_OWNER.UM_F_FA_STDNT_AID_CHK_VW
/

--
-- UM_F_FA_STDNT_AID_CHK_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_F_FA_STDNT_AID_CHK_VW
BEQUEATH DEFINER
AS 
SELECT INSTITUTION_CD,
           PERSON_ID,
           AID_YEAR,
           SEQ_3C,
           CHECKLIST_SEQ,
           SRC_SYS_ID,
           INSTITUTION_SID,
           PERSON_SID,
           COMMON_ID,
           CHKLIST_DT,
           CHKLIST_TM,
           ADMIN_FUNC_SID,
           CHKLIST_CD_SID,
           CHKLIST_STAT_SID,
           STATUS_DT,
           STAT_CHG_SID,
           DUE_DT,
           DEPT_SID,
           RESPONSIBLE_SID,
           VAR_DATA_SID,
           TRACKING_SEQ,
           DUE_AMT,
           ADMIN_FUNC_AREA,
           ADM_APPL_NBR,
           CHECKLIST_CD,
           CHKLIST_STAT_ID,
           ITEM_CD_SID,
           CHKLST_ITEM_CD,
           ITEM_STATUS,
           ITEM_STATUS_SD,
           ITEM_STATUS_LD,
           ITEM_STATUS_DT,
           ITEM_STATUS_CHANGE_ID,
           ITEM_DUE_DT,
           ITEM_DUE_AMT,
           ITEM_RESPONSIBLE_ID,
           ASSOC_ID,
           NAME,
           COMM_KEY,
           CHKLIST_ORDER,
           CHKLIST_CD_ORDER,
           CHKLIST_ITEM_ORDER,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM,
           COMM_COMMENTS
      FROM CSMRT_OWNER.UM_F_FA_STDNT_AID_CHK
     WHERE ROWNUM < 100000000
/
