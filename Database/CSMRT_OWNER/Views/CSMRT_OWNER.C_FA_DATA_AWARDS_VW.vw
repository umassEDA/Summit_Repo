DROP VIEW CSMRT_OWNER.C_FA_DATA_AWARDS_VW
/

--
-- C_FA_DATA_AWARDS_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_FA_DATA_AWARDS_VW
BEQUEATH DEFINER
AS 
WITH RUN_CNTRL as (
SELECT C_INSTITUTION, C_PERIOD, C_AID_YEAR 
  FROM IRSTG_OWNER.CENSUS_RUN_CNTRL_TBL
 WHERE C_INSTITUTION in ('UMBOS', 'UMDAR')
   AND CENSUS_TO_RUN = 'Y' 
 ),
SAWITH0 AS (select /*+ use_hash(T1008770, T572353) */ 
     sum(T1002438.ACCEPT_BALANCE) as ACCEPT_BALANCE,
     sum(T1002438.DISBURSED_BALANCE) as c2,
     case  when ISIR.S_SCHOOL_CHOICE_1 = '002222' then ISIR.S_HOUSING_CODE_1_LD 
	       when ISIR.S_SCHOOL_CHOICE_2 = '002222' then ISIR.S_HOUSING_CODE_2_LD 
		   when ISIR.S_SCHOOL_CHOICE_3 = '002222' then ISIR.S_HOUSING_CODE_3_LD 
		   when ISIR.S_SCHOOL_CHOICE_4 = '002222' then ISIR.S_HOUSING_CODE_4_LD 
		   when ISIR.S_SCHOOL_CHOICE_5 = '002222' then ISIR.S_HOUSING_CODE_5_LD 
		   when ISIR.S_SCHOOL_CHOICE_6 = '002222' then ISIR.S_HOUSING_CODE_6_LD 
		   when ISIR.S_SFA_SCHL_CHOICE_7 = '002222' then ISIR.S_SFA_HOUSING_CODE7_LD 
		   when ISIR.S_SFA_SCHL_CHOICE_8 = '002222' then ISIR.S_SFA_HOUSING_CODE8_LD 
		   when ISIR.S_SFA_SCHL_CHOICE_9 = '002222' then ISIR.S_SFA_HOUSING_CODE9_LD 
		   when ISIR.S_SFA_SCHL_CHOICE_10 = '002222' then ISIR.S_SFA_HOUSING_CODE10_LD 
		   else ' ' 
	   end as c3,
     case  when ISIR.P_FATHER_GRADE_LVL_LD in ('High School', 'Middle School') 
	        and ISIR.P_MOTHER_GRADE_LVL_LD in ('High School', 'Middle School') then 'First Gen' 
		   when ISIR.P_FATHER_GRADE_LVL_LD in ('High School', 'Middle School') 
		    and ISIR.P_MOTHER_GRADE_LVL_LD in ('Unknown') then 'First Gen' 
		   when ISIR.P_FATHER_GRADE_LVL_LD in ('Unknown') 
		    and ISIR.P_MOTHER_GRADE_LVL_LD in ('High School', 'Middle School') then 'First Gen' 
		   when ISIR.P_MOTHER_GRADE_LVL_LD is null 
		    and ISIR.P_FATHER_GRADE_LVL_LD in ('High School', 'Middle School') then 'First Gen' 
		   when ISIR.P_FATHER_GRADE_LVL_LD is null 
		    and ISIR.P_MOTHER_GRADE_LVL_LD in ('High School', 'Middle School') then 'First Gen' 
		   when ISIR.P_FATHER_GRADE_LVL_LD in ('Unknown') 
		    and ISIR.P_MOTHER_GRADE_LVL_LD in ('Unknown') then 'Unknown' 
		   when ISIR.P_MOTHER_GRADE_LVL_LD not in ('College') 
		    and not ISIR.P_FATHER_GRADE_LVL_LD is null then ISIR.P_FATHER_GRADE_LVL_LD 
		   when not ISIR.P_FATHER_GRADE_LVL_LD is null 
		    and ISIR.P_MOTHER_GRADE_LVL_LD is null then ISIR.P_FATHER_GRADE_LVL_LD 
		   else ISIR.P_MOTHER_GRADE_LVL_LD 
	  end  as c4,
      ISIR.AID_YEAR as c5,
      T1008770.FED_NEED as c6,
      T1051154.ACAD_CAR_CD as c7,
      T1020466.TERM_CD as c8,
	  ISIR.INSTITUTION_CD,
      ISIR.S_DEPNDNCY_STAT as c9,
      ISIR.EFC_STATUS as c10,
      ISIR.S_FISAP_TOT_INC as c11,
      ISIR.ISIR_CNT as c12,
      ISIR.PRIMARY_EFC as c13,
      ISIR.PRORATED_EFC as c14,
      T1006851.AGGREGATE_AREA as c15,
      T1006851.FA_SOURCE_LD as c16,
      T1006851.FIN_AID_TYPE_LD as c17,
      T1006851.DESCR as c18,
      T1006851.ITEM_TYPE as c19,
      T1006851.NEED_BASED as c20,
      T572353.FIRST_NM as c21,
      T572353.LAST_NM as c22,
      T572353.MIDDLE_NM as c23,
      T572353.PERSON_ID as c24
 from 
      CSMRT_OWNER.UM_D_ACAD_CAR_VW T1051154 /* FA Award - D_ACAD_CAR */ ,
      CSMRT_OWNER.UM_D_TERM_VW T1020466 /* FA Award Disb - D_TERM */ ,
      CSMRT_OWNER.UM_D_FA_ITEM_TYPE_VW T1006851 /* FA - D_FA_ITEM_TYPE */ ,
      CSMRT_OWNER.UM_D_PERSON_CS_VW T572353 /* D_PERSON */ ,
      CSMRT_OWNER.UM_F_FA_STDNT_AID_ISIR_VW ISIR /* F_FA_STDNT_AID_ISIR */  
	  left outer join CSMRT_OWNER.UM_F_FA_STDNT_AWRD_PERIOD_VW T1008770 /* F_FA_STDNT_AWRD_PERIOD */  
	           On ISIR.AID_YEAR = T1008770.AID_YEAR 
		      and ISIR.INSTITUTION_CD = T1008770.INSTITUTION_CD 
			  and ISIR.PERSON_ID = T1008770.PERSON_ID 
			  and ISIR.SRC_SYS_ID = T1008770.SRC_SYS_ID,
      CSMRT_OWNER.UM_F_FA_AWARD_DISB_VW T1002438 /* F_FA_AWARD_DISB */ ,
      CSMRT_OWNER.UM_F_FA_TERM_VW T1002443 /* F_FA_TERM */ ,
      CSMRT_OWNER.UM_F_FA_STDNT_AWARDS_VW T1020465 /* F_FA_STDNT_AWARDS */ ,
      CSMRT_OWNER.UM_D_TERM_VW T1002440 /* FA Term - D_TERM */ ,
      RUN_CNTRL
 where  ( T1006851.FIN_AID_TYPE_LD not in ('Waiver') 
  and T1006851.ITEM_TYPE not in ('901200000800', '901200002400', '901200002500') 
  and T1002438.TERM_SID = T1020466.TERM_SID 
  and T572353.PERSON_SID = ISIR.PERSON_SID 
  and T1006851.ITEM_TYPE_SID = T1020465.ITEM_TYPE_SID 
  and ISIR.AID_YEAR = T1002443.AID_YEAR 
  and ISIR.INSTITUTION_CD = T1002443.INSTITUTION_CD 
  and ISIR.PERSON_ID = T1002443.PERSON_ID 
  and ISIR.SRC_SYS_ID = T1002443.SRC_SYS_ID 
  and ISIR.AID_YEAR = T1020465.AID_YEAR 
  and ISIR.INSTITUTION_CD = T1020465.INSTITUTION_CD 
  and ISIR.PERSON_ID = T1020465.PERSON_ID 
  and ISIR.SRC_SYS_ID = T1020465.SRC_SYS_ID 
  and T1002440.TERM_SID = NVL(T1002443.TERM_SID, 2147483646) 
  and T1002438.AID_YEAR = T1020465.AID_YEAR 
  and T1002438.INSTITUTION_CD = T1020465.INSTITUTION_CD 
  and T1002438.PERSON_ID = T1020465.PERSON_ID 
  and T1002438.ACAD_CAR_CD = T1020465.ACAD_CAR_CD 
  and T1002438.ITEM_TYPE = T1020465.ITEM_TYPE 
  and T1002438.SRC_SYS_ID = T1020465.SRC_SYS_ID 
  and ISIR.AID_YEAR = T1006851.AID_YEAR 
  and ISIR.AID_YEAR = RUN_CNTRL.C_AID_YEAR                            -- Get from CENSUS_RUN_CNTRL_TBL                      
  and T1002440.TERM_CD = T1020466.TERM_CD 
  and T1002440.TERM_CD = RUN_CNTRL.C_PERIOD 						-- Get from CENSUS_RUN_CNTRL_TBL
  and T1002443.AID_YEAR = RUN_CNTRL.C_AID_YEAR                        -- Get from CENSUS_RUN_CNTRL_TBL
  and T1008770.AWARD_PERIOD = 'A' 
  and T1020465.ACAD_CAR_SID = T1051154.ACAD_CAR_SID 
--  and (ISIR.INSTITUTION_CD in ('-', 'UMLOW'))           -- Get from CENSUS_RUN_CNTRL_TBL
--  and (T1002440.INSTITUTION_CD in ('-', 'UMLOW'))       -- Get from CENSUS_RUN_CNTRL_TBL
--  and (T1006851.INSTITUTION_CD in ('-', 'UMLOW'))       -- Get from CENSUS_RUN_CNTRL_TBL 
--  and (T1002443.INSTITUTION_CD in ('-', 'UMLOW'))       -- Get from CENSUS_RUN_CNTRL_TBL
--  and (T1020466.INSTITUTION_CD in ('-', 'UMLOW'))       -- Get from CENSUS_RUN_CNTRL_TBL
--  and (T1051154.INSTITUTION_CD in ('-', 'UMLOW')) )     -- Get from CENSUS_RUN_CNTRL_TBL
  and (ISIR.INSTITUTION_CD in ('-', RUN_CNTRL.C_INSTITUTION))           -- Get from CENSUS_RUN_CNTRL_TBL
  and (T1002440.INSTITUTION_CD in ('-', RUN_CNTRL.C_INSTITUTION))       -- Get from CENSUS_RUN_CNTRL_TBL
  and (T1006851.INSTITUTION_CD in ('-', RUN_CNTRL.C_INSTITUTION))       -- Get from CENSUS_RUN_CNTRL_TBL 
  and (T1002443.INSTITUTION_CD in ('-', RUN_CNTRL.C_INSTITUTION))       -- Get from CENSUS_RUN_CNTRL_TBL
  and (T1020466.INSTITUTION_CD in ('-', RUN_CNTRL.C_INSTITUTION))       -- Get from CENSUS_RUN_CNTRL_TBL
  and (T1051154.INSTITUTION_CD in ('-', RUN_CNTRL.C_INSTITUTION)) )     -- Get from CENSUS_RUN_CNTRL_TBL
  --and RUN_CNTRL.DATAMART_TO_RUN = 'Y'
group by ISIR.INSTITUTION_CD, T572353.PERSON_ID, T572353.LAST_NM, T572353.MIDDLE_NM, T572353.FIRST_NM, ISIR.AID_YEAR, 
         ISIR.EFC_STATUS, ISIR.PRIMARY_EFC, ISIR.PRORATED_EFC, ISIR.S_FISAP_TOT_INC, 
		 ISIR.ISIR_CNT, ISIR.S_DEPNDNCY_STAT, T1006851.AGGREGATE_AREA, T1006851.DESCR, 
		 T1006851.FIN_AID_TYPE_LD, T1006851.ITEM_TYPE, T1006851.NEED_BASED, T1006851.FA_SOURCE_LD, 
		 T1008770.FED_NEED, T1020466.TERM_CD, T1051154.ACAD_CAR_CD, 
  case when ISIR.P_FATHER_GRADE_LVL_LD in ('High School', 'Middle School') 
        and ISIR.P_MOTHER_GRADE_LVL_LD in ('High School', 'Middle School') then 'First Gen' 
	   when ISIR.P_FATHER_GRADE_LVL_LD in ('High School', 'Middle School') 
	    and ISIR.P_MOTHER_GRADE_LVL_LD in ('Unknown') then 'First Gen' 
	   when ISIR.P_FATHER_GRADE_LVL_LD in ('Unknown') 
	    and ISIR.P_MOTHER_GRADE_LVL_LD in ('High School', 'Middle School') then 'First Gen' 
	   when ISIR.P_MOTHER_GRADE_LVL_LD is null 
	    and ISIR.P_FATHER_GRADE_LVL_LD in ('High School', 'Middle School') then 'First Gen' 
	   when ISIR.P_FATHER_GRADE_LVL_LD is null 
	    and ISIR.P_MOTHER_GRADE_LVL_LD in ('High School', 'Middle School') then 'First Gen' 
	   when ISIR.P_FATHER_GRADE_LVL_LD in ('Unknown') 
	    and ISIR.P_MOTHER_GRADE_LVL_LD in ('Unknown') then 'Unknown' 
	   when ISIR.P_MOTHER_GRADE_LVL_LD not in ('College') 
	    and not ISIR.P_FATHER_GRADE_LVL_LD is null then ISIR.P_FATHER_GRADE_LVL_LD 
       when not ISIR.P_FATHER_GRADE_LVL_LD is null 
	    and ISIR.P_MOTHER_GRADE_LVL_LD is null then ISIR.P_FATHER_GRADE_LVL_LD 
	   else ISIR.P_MOTHER_GRADE_LVL_LD 
   end, 
  case when ISIR.S_SCHOOL_CHOICE_1 = '002222' then ISIR.S_HOUSING_CODE_1_LD 
       when ISIR.S_SCHOOL_CHOICE_2 = '002222' then ISIR.S_HOUSING_CODE_2_LD 
	   when ISIR.S_SCHOOL_CHOICE_3 = '002222' then ISIR.S_HOUSING_CODE_3_LD 
	   when ISIR.S_SCHOOL_CHOICE_4 = '002222' then ISIR.S_HOUSING_CODE_4_LD 
	   when ISIR.S_SCHOOL_CHOICE_5 = '002222' then ISIR.S_HOUSING_CODE_5_LD 
	   when ISIR.S_SCHOOL_CHOICE_6 = '002222' then ISIR.S_HOUSING_CODE_6_LD 
	   when ISIR.S_SFA_SCHL_CHOICE_7 = '002222' then ISIR.S_SFA_HOUSING_CODE7_LD 
	   when ISIR.S_SFA_SCHL_CHOICE_8 = '002222' then ISIR.S_SFA_HOUSING_CODE8_LD 
	   when ISIR.S_SFA_SCHL_CHOICE_9 = '002222' then ISIR.S_SFA_HOUSING_CODE9_LD 
	   when ISIR.S_SFA_SCHL_CHOICE_10 = '002222' then ISIR.S_SFA_HOUSING_CODE10_LD 
	   else ' ' 
   end )
select D1.c7 as ACAD_CAR_CD,
     D1.c8 as TERM_CD,
	 D1.INSTITUTION_CD  as INSTITUTION_CD,
     D1.c9 as S_DEPNDNCY_STAT,
     D1.c10 as EFC_STATUS,
     D1.c11 as S_FISAP_TOT_INC,
     D1.c12 as ISIR_CNT,
     D1.c13 as PRIMARY_EFC,
     D1.c14 as PRORATED_EFC,
     D1.c15 as AGGREGATE_AREA,
     D1.c16 as FA_SOURCE_LD,
     D1.c17 as FIN_AID_TYPE_LD,
     D1.c18 as DESCR,
     D1.c19 as ITEM_TYPE,
     D1.c20 as NEED_BASED,
     D1.c6 as FED_NEED,
     D1.c21 as FIRST_NM,
     D1.c22 as LAST_NM,
     D1.c23 as MIDDLE_NM,
     D1.c24 as PERSON_ID,
     D1.c5 as AID_YEAR,
     D1.c4 as P_MOTHER_GRADE_LVL_LD,
     D1.c3 as S_HOUSING_CODE_LD,
     D1.ACCEPT_BALANCE as ACCEPT_BALANCE,
     D1.c2 as DISBURSED_BALANCE 
from 
     SAWITH0 D1 
where D1.ACCEPT_BALANCE > 0
/
