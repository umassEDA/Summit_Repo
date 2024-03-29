DROP FUNCTION CSMRT_OWNER.GET_CHECKLIST_STATUS
/

--
-- GET_CHECKLIST_STATUS  (Function) 
--
CREATE OR REPLACE FUNCTION CSMRT_OWNER.GET_CHECKLIST_STATUS
(
IN_PERSON_ID IN VARCHAR2, 
IN_ADMIN_FUNCTION IN VARCHAR2, 
IN_AID_YEAR IN VARCHAR2,
IN_ADM_APPL_NBR IN VARCHAR2, 
IN_CHK_CODE IN VARCHAR2, 
IN_CHKLIST_OR_ITEM_FLAG IN VARCHAR2,
IN_INSTITUTION IN VARCHAR2 ) 
RETURN VARCHAR2 IS RET_STATUS VARCHAR2(14);
BEGIN

select min(STAT_CD) 
  into RET_STATUS 
  from (
SELECT CASE WHEN IN_CHKLIST_OR_ITEM_FLAG = 'CHKLST' AND IN_CHK_CODE = CHECKLIST_CD 
            THEN CHKLIST_STAT_ID
            ELSE ''
       END STAT_CD 
  FROM UM_F_FA_STDNT_AID_CHK 
 WHERE IN_CHKLIST_OR_ITEM_FLAG = 'CHKLST'
   AND INSTITUTION_CD = IN_INSTITUTION
   AND PERSON_ID = IN_PERSON_ID
   AND (AID_YEAR = IN_AID_YEAR OR ADM_APPL_NBR = IN_ADM_APPL_NBR) 
   AND SRC_SYS_ID = 'CS90'
   and CHKLIST_CD_ORDER = 1
 UNION ALL
SELECT CASE WHEN IN_CHKLIST_OR_ITEM_FLAG = 'ITEM' AND IN_CHK_CODE = CHKLST_ITEM_CD 
            THEN ITEM_STATUS
            ELSE ''
       END STAT_CD 
  FROM UM_F_FA_STDNT_AID_CHK 
 WHERE IN_CHKLIST_OR_ITEM_FLAG = 'ITEM'
   AND INSTITUTION_CD = IN_INSTITUTION
   AND PERSON_ID = IN_PERSON_ID
   AND (AID_YEAR = IN_AID_YEAR OR ADM_APPL_NBR = IN_ADM_APPL_NBR) 
   AND SRC_SYS_ID = 'CS90'
   and CHKLIST_ITEM_ORDER = 1)
;

  RETURN RET_STATUS;
        
END GET_CHECKLIST_STATUS;
/
