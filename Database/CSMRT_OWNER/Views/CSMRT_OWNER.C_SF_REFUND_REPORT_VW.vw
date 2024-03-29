DROP VIEW CSMRT_OWNER.C_SF_REFUND_REPORT_VW
/

--
-- C_SF_REFUND_REPORT_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_SF_REFUND_REPORT_VW
BEQUEATH DEFINER
AS 
with RUN_CNTRL as (
SELECT C_INSTITUTION, C_PERIOD, C_AID_YEAR 
  FROM IRSTG_OWNER.CENSUS_RUN_CNTRL_TBL
 WHERE CENSUS_TO_RUN = 'Y' 
 )
 
SELECT CAST(X.EMPLID as VARCHAR2(15)),
       X.ITEM_TERM,
       X.ITEM_TYPE,
	   X.BUSINESS_UNIT,
       SUM (X.ITEM_AMT)     AS ITEM_AMT
  FROM PS_ITEM_SF@SASOURCE X
 WHERE X.ITEM_TYPE LIKE '5%'
   AND X.BUSINESS_UNIT = (SELECT C_INSTITUTION FROM RUN_CNTRL)
   AND X.ITEM_TERM = (SELECT C_PERIOD FROM RUN_CNTRL)  
   AND X.BUSINESS_UNIT IN ('UMBOS')    
GROUP BY X.EMPLID, X.ITEM_TERM, X.ITEM_TYPE, X.BUSINESS_UNIT
  HAVING SUM (X.ITEM_AMT) <> 0.0
ORDER BY X.EMPLID
/
