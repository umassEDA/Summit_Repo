DROP FUNCTION CSMRT_OWNER.GET_AWARD_AMT
/

--
-- GET_AWARD_AMT  (Function) 
--
CREATE OR REPLACE FUNCTION CSMRT_OWNER.GET_AWARD_AMT
(
IN_PERSON_ID  VARCHAR2,
IN_INSTITUTION_CD  VARCHAR2,
IN_CAREER_CD  VARCHAR2,
IN_PERIOD_TYPE  VARCHAR2,
IN_PERIOD_TYPE_VAL  VARCHAR2,
IN_COLUMN_TYPE  VARCHAR2,
IN_COLUMN_TYPE_VAL  VARCHAR2,
IN_AMOUNT_TYPE   VARCHAR2)
RETURN NUMBER IS 
  RET_AMOUNT NUMBER(16,2);
  SQL_STR VARCHAR2(4000);

BEGIN

  SQL_STR :=            'SELECT SUM( ';
  SQL_STR := SQL_STR || 'CASE WHEN '  || '''' ||  IN_AMOUNT_TYPE  || '''' || ' = ' || '''OFFER_AMT''' || ' THEN DISB.OFFER_BALANCE ';
  SQL_STR := SQL_STR || '     WHEN '  || '''' ||  IN_AMOUNT_TYPE  || '''' || ' = ' || '''ACCEPT_AMT''' || ' THEN DISB.ACCEPT_BALANCE ';
  SQL_STR := SQL_STR || '     WHEN '  || '''' ||  IN_AMOUNT_TYPE  || '''' || ' = ' || '''DISB_AMT''' || ' THEN DISB.DISBURSED_BALANCE ';   
  SQL_STR := SQL_STR || '     ELSE NULL END ) RET_AMOUNT ';   
  
  SQL_STR := SQL_STR || 'FROM UM_D_FA_ITEM_TYPE FA_ITEM, ';
  SQL_STR := SQL_STR || '     PS_D_ITEM_TYPE ITEM, ';
  SQL_STR := SQL_STR || '     UM_F_FA_AWARD_DISB DISB ';
  
  SQL_STR := SQL_STR || 'WHERE DISB.PERSON_ID = ' || '''' || IN_PERSON_ID || '''';    
  SQL_STR := SQL_STR || '  AND DISB.INSTITUTION_CD = ' || '''' || IN_INSTITUTION_CD || '''';  
  SQL_STR := SQL_STR || '  AND DISB.ACAD_CAR_CD = ' || '''' || IN_CAREER_CD || '''';   
  SQL_STR := SQL_STR || '  AND DISB.ITEM_TYPE_SID = FA_ITEM.ITEM_TYPE_SID ';   
  SQL_STR := SQL_STR || '  AND FA_ITEM.INSTITUTION_CD = ITEM.SETID ';   
  SQL_STR := SQL_STR || '  AND FA_ITEM.ITEM_TYPE = ITEM.ITEM_TYPE_ID '; 
  SQL_STR := SQL_STR || '  AND FA_ITEM.SRC_SYS_ID = ITEM.SRC_SYS_ID '; 
  
if IN_PERIOD_TYPE = 'AID_YEAR' then SQL_STR := SQL_STR || ' and DISB.AID_YEAR in (' || GET_MULTI_VAL_STRING(IN_PERIOD_TYPE_VAL) || ')'; 
                               else SQL_STR := SQL_STR || ' and DISB.TERM_CD in ('  || GET_MULTI_VAL_STRING(IN_PERIOD_TYPE_VAL) || ')';
end if;                                 
                                           
   if IN_COLUMN_TYPE = 'AGGREGATE_AREA' then SQL_STR := SQL_STR || ' and FA_ITEM.AGGREGATE_AREA in ('  || GET_MULTI_VAL_STRING(IN_COLUMN_TYPE_VAL) || ')'; 
elsif IN_COLUMN_TYPE = 'FIN_AID_TYPE'   then SQL_STR := SQL_STR || ' and FA_ITEM.FIN_AID_TYPE_LD in (' || GET_MULTI_VAL_STRING(IN_COLUMN_TYPE_VAL) || ')'; 
elsif IN_COLUMN_TYPE = 'FA_SOURCE'      then SQL_STR := SQL_STR || ' and FA_ITEM.FA_SOURCE_LD in ('       || GET_MULTI_VAL_STRING(IN_COLUMN_TYPE_VAL) || ')'; 
elsif IN_COLUMN_TYPE = 'FA_ITEM_TYPE'   then SQL_STR := SQL_STR || ' and FA_ITEM.ITEM_TYPE in ('       || GET_MULTI_VAL_STRING(IN_COLUMN_TYPE_VAL) || ')'; 
elsif IN_COLUMN_TYPE = 'FA_KEYWORD1'    then SQL_STR := SQL_STR || ' and ITEM.KEYWORD1 in ('           || GET_MULTI_VAL_STRING(IN_COLUMN_TYPE_VAL) || ')'; 
elsif IN_COLUMN_TYPE = 'FA_KEYWORD2'    then SQL_STR := SQL_STR || ' and ITEM.KEYWORD2 in ('           || GET_MULTI_VAL_STRING(IN_COLUMN_TYPE_VAL) || ')'; 
elsif IN_COLUMN_TYPE = 'FA_KEYWORD3'    then SQL_STR := SQL_STR || ' and ITEM.KEYWORD3 in ('           || GET_MULTI_VAL_STRING(IN_COLUMN_TYPE_VAL) || ')'; 
end if; 

  EXECUTE IMMEDIATE SQL_STR
     INTO RET_AMOUNT;    
      
   RETURN RET_AMOUNT;

END GET_AWARD_AMT;
/
