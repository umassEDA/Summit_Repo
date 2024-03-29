DROP VIEW DLMRT_OWNER.FIN_PLANNING_PAYROLL_VW
/

--
-- FIN_PLANNING_PAYROLL_VW  (View) 
--
CREATE OR REPLACE VIEW DLMRT_OWNER.FIN_PLANNING_PAYROLL_VW
BEQUEATH DEFINER
AS 
select 
    FISCAL_YEAR,
    BUSINESS_UNIT,
    EMPLOYEE_ID,
    EMPL_RCD,
    UNIQUE_ID,
    EMPLOYEE_NAME,
    EMPL_CLS_CD,
    EMPL_CLS_LD,
    DEPTID,
    DEPT_DESCR,
    ORG_LEVEL_2_DESCR,
    ORG_LEVEL_3_DESCR,
    ORG_LEVEL_4_DESCR,
    ORG_LEVEL_5_DESCR,
    UM_HR_DEPTID,
    HR_DEPT_DESCR,
    JOBCODE_ID,
    JOBCODE_CAMPUS,
    JOB_TITLE,
    UNION_CD,
    UM_MARS_OBJECT_CODE,
    EARNINGS_CODE,
    EARN_CD_DESCR,
    EMPLOYEE_TYPE,
    EMPLOYEE_RECORD_STATUS,
    FUND_CODE,
    FUND_DESCR,
    FUND_LEVEL_2_DESCR,
    FUND_LEVEL_3_DESCR,
    FUND_LEVEL_4_DESCR,
    FUND_LEVEL_5_DESCR,
    SOURCE,
    ACCOUNT,
    ACCOUNT_DESCR,
    ACCOUNT_LEVEL_2,
    ACCOUNT_LEVEL_2_DESCR,
    ACCOUNT_LEVEL_3,
    ACCOUNT_LEVEL_3_DESCR,
    ACCOUNT_LEVEL_4,
    ACCOUNT_LEVEL_4_DESCR,
    ACCOUNT_LEVEL_5,
    ACCOUNT_LEVEL_5_DESCR,
    PROJECT_DESCR,
    PROJECT_ID,
    PROJECT_STATUS,
    GRANT_FLAG,
    AWARD_TYPE,
    PRIMARY_SPONSOR_NAME,
    PRIMARY_SPONSOR_TYPE,
    BILL_TO_SPONSOR_NAME,
    BILL_TO_SPONSOR_TYPE,
    COMBO_SPONSOR_NAME,
    COMBO_SPONSOR_TYPE,
    AWARD_ID_SHORT_TITLE,
    EEO6_CD,
    EEO6_SD,
    EEO6_LD,
    WORKGROUP,
    WORKGROUP_DESCR,
    TENURE_STATUS,
    TENURE_STATUS_DESCR,
    TENURE_SUB_STATUS,
    AGENCY_FUND_FLAG,
    ACTUALS_AMOUNT
    from 
    DLMRT_OWNER.FIN_PLAN_PAYROLL
/
