DROP VIEW CSMRT_OWNER.UM_F_SF_BILLING_VW
/

--
-- UM_F_SF_BILLING_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_F_SF_BILLING_VW
BEQUEATH DEFINER
AS 
SELECT /*+ OPT_ESTIMATE(TABLE UM_F_SF_BILLING MIN=100000) */
          F.INSTITUTION_CD,
          F.INVOICE_ID,
          F.ITEM_NBR,
          F.ITEM_LINE,
          F.SRC_SYS_ID,
          PERSON_ID,
          INSTITUTION_SID,
          ACAD_CAR_SID,
          PERSON_SID,
          ACAD_LOAD_SID,
          ACAD_LVL_PROJ_SID,
          ACAD_PROG_PRIM_SID,
          ACAD_PROG_SID,
          ACAD_PLAN_SID,
          CAMPUS_SID,
          NAME,
          BI_REQ_NBR,
          BILL_DATE_TIME,
          BILL_REQ_ID,
          DUE_DT,
          INVOICE_DT,
          OPRID,
          PRIOR_INVOICE_ID,
          PRT_BILL_FLAG,
          PRT_DTTM_STAMP,
          RE_PRT_BILL_FLAG,
          RE_PRT_DTTM_STAMP,
          SF_BILL_STATUS,
          SF_BILL_STATUS_LD,
          SSF_ERROR_WARN,
          SSF_ERROR_WARN_LD,
          TUITION_RES,
          nvl(R.RSDNCY_SID,2147483646) TUITION_RES_SID,
          TOTAL_BILL,
          PRIOR_IVC_BALANCE,
          ADDRESS1,
          ADDRESS2,
          ADDRESS3,
          ADDRESS4,
          CITY,
          COUNTY,
          STATE,
          POSTAL,
          COUNTRY,
          SCC_ROW_ADD_OPRID,
          SCC_ROW_ADD_DTTM,
          SCC_ROW_UPD_OPRID,
          SCC_ROW_UPD_DTTM,
          F.LOAD_ERROR,
          F.DATA_ORIGIN,
          F.CREATED_EW_DTTM,
          F.LASTUPD_EW_DTTM,
          F.BATCH_SID
     FROM UM_F_SF_BILLING F
     left outer join PS_D_RSDNCY R
       on F.TUITION_RES = R.RSDNCY_ID
      and F.SRC_SYS_ID = R.SRC_SYS_ID
      and R.DATA_ORIGIN <> 'D'
/
