DROP FUNCTION CSMRT_OWNER.GET_ADM_ACTION_DATE
/

--
-- GET_ADM_ACTION_DATE  (Function) 
--
CREATE OR REPLACE FUNCTION CSMRT_OWNER.GET_ADM_ACTION_DATE
(
IN_PERSON_ID IN VARCHAR2, 
IN_ADM_APPL_NUM IN VARCHAR2, 
IN_ACTION_TYPE IN VARCHAR2, 
IN_MIN_MAX_FLAG IN VARCHAR2, 
IN_LATEST_TERM_FLAG IN VARCHAR2 ) 
RETURN DATE IS RET_DATE DATE;
BEGIN

      SELECT CASE WHEN IN_LATEST_TERM_FLAG = 'Y' THEN
                    CASE WHEN IN_MIN_MAX_FLAG = 'MAX' THEN MAX_TERM_MAX_DT 
                         ELSE MAX_TERM_MIN_DT 
                    END
                  ELSE
                    CASE WHEN IN_MIN_MAX_FLAG = 'MAX' THEN MAX_DT 
                         ELSE MIN_DT 
                    END
             END
      INTO RET_DATE
      FROM UM_F_ADM_APPL_ACTION                
      WHERE PERSON_ID = IN_PERSON_ID
        AND ACN_RSN_KEY = 'PROG_ACN_CD'
        AND ACN_RSN_VAL = IN_ACTION_TYPE
        AND ADM_APPL_NBR = IN_ADM_APPL_NUM;

  RETURN RET_DATE;
        
END GET_ADM_ACTION_DATE;
/
