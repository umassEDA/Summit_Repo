DROP VIEW DLMRT_OWNER.FIN_PLANNING_SF_DETAIL_VW
/

--
-- FIN_PLANNING_SF_DETAIL_VW  (View) 
--
CREATE OR REPLACE VIEW DLMRT_OWNER.FIN_PLANNING_SF_DETAIL_VW
BEQUEATH DEFINER
AS 
Select 
    INSTITUTION_CD,
    ACAD_CAR_CD,
    PERSON_ID,
    FISCAL_YEAR,
    ITEM_TERM,
    ITEM_TERM_LD,
    ITEM_TYPE,
    ITEM_TYPE_LD,
    KEYWORD1,
    KEYWORD2,
    KEYWORD3,
    ITEM_NBR,
    ITEM_AMT,
    RUN_DT,
    SEQNUM,
    SF_LINE_NBR,
    JOURNAL_DATE,
    ACCOUNT,
    FUND_CODE,
    DEPTID,
    MONETARY_AMOUNT,
    LINE_DESCR,
    JOURNAL_LINE_DATE,
    ACCOUNTING_DT,
    LEDGER,
    NEED_BASED,
    FA_SOURCE,
    FA_SOURCE_LD,
    FIN_AID_TYPE,
    FIN_AID_TYPE_LD,
    AGGREGATE_AREA,
    SF_CATEGORY_CALC,
    FA_SOURCE_CALC
    from CSMRT_OWNER.UM_M_AF_STDNT_SF_DETAIL
/
