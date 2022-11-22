CREATE OR REPLACE VIEW C_SF_PAYMENTS_REPORT_VW
BEQUEATH DEFINER
AS 
with RUN_CNTRL as (
SELECT C_INSTITUTION, C_PERIOD, C_AID_YEAR 
  FROM IRSTG_OWNER.CENSUS_RUN_CNTRL_TBL
 WHERE CENSUS_TO_RUN = 'Y' 
 )
 
SELECT CAST(TUT.EMPLID as VARCHAR2(15)) EMPLID, 
       P.NAME, 
	   TUT.ITEM_TERM,
       R.RESIDENCY, 
	   TUT.ITEM_TYPE,
       TUT.BUSINESS_UNIT  INSTITUTION_CD,	   
	   TPE.DESCR, 
	   TUT.REF1_DESCR,
       SUM(TUT.ITEM_AMT) PMT_AMT
  FROM PS_ITEM_SF@SASOURCE TUT,
      PS_PERSONAL_DATA@SASOURCE P, 
	  PS_RESIDENCY_OFF@SASOURCE R,
      PS_ITEM_TYPE_TBL@SASOURCE TPE
WHERE TUT.BUSINESS_UNIT = (SELECT C_INSTITUTION FROM RUN_CNTRL)
  AND TUT.BUSINESS_UNIT = R.INSTITUTION
  AND R.INSTITUTION = TPE.SETID
  AND TUT.ITEM_TYPE = TPE.ITEM_TYPE
  AND TUT.EMPLID = R.EMPLID
  AND R.EMPLID = P.EMPLID
  AND TUT.ITEM_TYPE_CD = 'P'
  AND TUT.BUSINESS_UNIT = 'UMBOS'
--  AND TUT.ITEM_TERM IN (@{STRM}['@']{'2710'})
AND TUT.ITEM_TERM = (SELECT C_PERIOD FROM RUN_CNTRL)
  AND R.EFFECTIVE_TERM = 
     (SELECT MAX(RR.EFFECTIVE_TERM)
        FROM PS_RESIDENCY_OFF@SASOURCE RR
       --WHERE RR.INSTITUTION = 'UMBOS'
	   WHERE RR.INSTITUTION = (SELECT C_INSTITUTION FROM RUN_CNTRL)
	     AND RR.EMPLID = R.EMPLID
         AND RR.ACAD_CAREER = R.ACAD_CAREER)
    GROUP BY TUT.EMPLID, P.NAME, TUT.ITEM_TERM,
             R.RESIDENCY, TUT.ITEM_TYPE, TUT.BUSINESS_UNIT, 
			 TPE.DESCR, TUT.REF1_DESCR
  HAVING SUM(TUT.ITEM_AMT) <> 0.0;