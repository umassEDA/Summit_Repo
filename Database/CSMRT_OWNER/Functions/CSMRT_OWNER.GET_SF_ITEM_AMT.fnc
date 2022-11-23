DROP FUNCTION CSMRT_OWNER.GET_SF_ITEM_AMT
/

--
-- GET_SF_ITEM_AMT  (Function) 
--
CREATE OR REPLACE FUNCTION CSMRT_OWNER.GET_SF_ITEM_AMT
(
IN_PERSON_ID  VARCHAR2,
IN_INSTITUTION_CD  VARCHAR2,
IN_ITEM_TERM_CD  VARCHAR2,
IN_COLUMN_TYPE  VARCHAR2,
IN_COLUMN_TYPE_VAL  VARCHAR2 
)
RETURN NUMBER IS 
  ITEM_AMOUNT NUMBER(16,2);
  SQL_STR VARCHAR2(4000);

BEGIN

  SQL_STR :=            'SELECT SUM(T0.ITEM_AMT) ITEM_AMOUNT ';
  SQL_STR := SQL_STR || 'FROM CSMRT_OWNER.UM_F_SF_ITEM_VW T0, ';
  SQL_STR := SQL_STR || '     CSMRT_OWNER.PS_D_ITEM_TYPE T1 ';
  SQL_STR := SQL_STR || 'WHERE T0.ITEM_TYPE_SID = T1.ITEM_TYPE_SID AND ';
  SQL_STR := SQL_STR || 'T1.SETID = ' || '''' || IN_INSTITUTION_CD || '''' || ' AND ';
  SQL_STR := SQL_STR || 'T0.INSTITUTION_CD = ' || '''' || IN_INSTITUTION_CD || '''' || ' AND ';
  SQL_STR := SQL_STR || 'T0.PERSON_ID = ' || '''' || IN_PERSON_ID || '''' ;  
  IF NVL(LENGTH(TRIM(IN_ITEM_TERM_CD)), 0) > 0 THEN
     SQL_STR := SQL_STR || 'AND T0.ITEM_TERM IN ('  || GET_MULTI_VAL_STRING(IN_ITEM_TERM_CD) || ')';
  END IF;     
  
  SQL_STR := SQL_STR || '  AND CASE WHEN ' || '''' || IN_COLUMN_TYPE || '''' || ' = ' || '''SF_ITEM_CODE''' || ' THEN T0.ITEM_TYPE_CD ';
  SQL_STR := SQL_STR || '           WHEN ' || '''' || IN_COLUMN_TYPE || '''' || ' = ' || '''SF_ITEM_TYPE''' || ' THEN T1.ITEM_TYPE_ID ';
  SQL_STR := SQL_STR || '           WHEN ' || '''' || IN_COLUMN_TYPE || '''' || ' = ' || '''SF_KEYWORD1''' || ' THEN T1.KEYWORD1 ';
  SQL_STR := SQL_STR || '           WHEN ' || '''' || IN_COLUMN_TYPE || '''' || ' = ' || '''SF_KEYWORD2''' || ' THEN T1.KEYWORD2 ';
  SQL_STR := SQL_STR || '           WHEN ' || '''' || IN_COLUMN_TYPE || '''' || ' = ' || '''SF_KEYWORD3''' || ' THEN T1.KEYWORD3 ';    
  SQL_STR := SQL_STR || '           WHEN ' || '''' || IN_COLUMN_TYPE || '''' || ' = ' || '''PERSON''' || ' THEN T0.PERSON_ID ';
  SQL_STR := SQL_STR || '           ELSE ' || '''99999''' || ' END IN (' || GET_MULTI_VAL_STRING(IN_COLUMN_TYPE_VAL) || ')';
  
  EXECUTE IMMEDIATE SQL_STR
   INTO   ITEM_AMOUNT;
  
  RETURN ITEM_AMOUNT;
END GET_SF_ITEM_AMT;
/
