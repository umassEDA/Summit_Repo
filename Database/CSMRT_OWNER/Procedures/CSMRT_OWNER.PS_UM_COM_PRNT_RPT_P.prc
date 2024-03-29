DROP PROCEDURE CSMRT_OWNER.PS_UM_COM_PRNT_RPT_P
/

--
-- PS_UM_COM_PRNT_RPT_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."PS_UM_COM_PRNT_RPT_P" AUTHID CURRENT_USER IS

------------------------------------------------------------------------
-- George Adams
--
-- Loads stage table PS_UM_COM_PRNT_RPT from PeopleSoft table PS_UM_COM_PRNT_RPT.
--
-- V01  SMT-xxxx 10/06/2017,    Jim Doucette
--                              Converted from DataStage
--
------------------------------------------------------------------------

        strMartId                       Varchar2(50)    := 'CSW';
        strProcessName                  Varchar2(100)   := 'PS_UM_COM_PRNT_RPT';
        intProcessSid                   Integer;
        dtProcessStart                  Date            := SYSDATE;
        strMessage01                    Varchar2(4000);
        strMessage02                    Varchar2(512);
        strMessage03                    Varchar2(512)   :='';
        strNewLine                      Varchar2(2)     := chr(13) || chr(10);
        strSqlCommand                   Varchar2(32767) :='';
        strSqlDynamic                   Varchar2(32767) :='';
        strClientInfo                   Varchar2(100);
        intRowCount                     Integer;
        intTotalRowCount                Integer         := 0;
        numSqlCode                      Number;
        strSqlErrm                      Varchar2(4000);
        intTries                        Integer;

BEGIN
strSqlCommand := 'DBMS_APPLICATION_INFO.SET_CLIENT_INFO';
DBMS_APPLICATION_INFO.SET_CLIENT_INFO (strProcessName);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_INIT';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_INIT
        (
                i_MartId                => strMartId,
                i_ProcessName           => strProcessName,
                i_ProcessStartTime      => dtProcessStart,
                o_ProcessSid            => intProcessSid
        );

strMessage01    := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update START_DT on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Reading',
       START_DT = sysdate,
       END_DT = NULL
 where TABLE_NAME = 'PS_UM_COM_PRNT_RPT'
;

strSqlCommand := 'commit';
commit;

strSqlCommand   := 'update START_DT on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Truncate',
       START_DT = sysdate,
       END_DT = NULL
 where TABLE_NAME = 'PS_UM_COM_PRNT_RPT'
;

strSqlCommand := 'commit';
commit;


strSqlCommand   := 'truncate table CSSTG_OWNER.PS_UM_COM_PRNT_RPT';
begin
execute immediate 'truncate table CSSTG_OWNER.PS_UM_COM_PRNT_RPT';
end;


strSqlCommand := 'commit';
commit;

strMessage01    := 'Loading data into CSSTG_OWNER.PS_UM_COM_PRNT_RPT';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'Insert into CSSTG_OWNER.PS_UM_COM_PRNT_RPT';
insert /*+ append */  into CSSTG_OWNER.PS_UM_COM_PRNT_RPT
WITH PRT
     AS (SELECT NVL (TRIM (UM_ADM_USERID), '-')  UM_ADM_USERID,
                INSTITUTION  INSTITUTION,
                UM_ADM_REC_NBR  UM_ADM_REC_NBR,
                'CS90'  SRC_SYS_ID,
                NVL (TRIM (UM_PARENT_FNAME), '-')  UM_PARENT_FNAME,
                NVL (TRIM (UM_PARENT_MNAME), '-')  UM_PARENT_MNAME,
                NVL (TRIM (UM_PARENT_LNAME), '-')  UM_PARENT_LNAME,
                NVL (TRIM (UM_PARENT_TYPE), '-')  UM_PARENT_TYPE,
                NVL (TRIM (UM_PARENT_LIVING), '-')  UM_PARENT_LIVING,
                NVL (TRIM (UM_PARNT1_DEAD_DT), '-')  UM_PARNT1_DEAD_DT,
                NVL (TRIM (UM_PARNT1_EMP_STAT), '-')  UM_PARNT1_EMP_STAT,
                NVL (TRIM (UM_PARNT1_EMP_BY_C), '-')  UM_PARNT1_EMP_BY_C,
                NVL (TRIM (UM_PARNT1_BIRTH_C), '-')  UM_PARNT1_BIRTH_C,
                NVL (TRIM (UM_PARNT1_SAME_ADR), '-')  UM_PARNT1_SAME_ADR,
                NVL (TRIM (UM_PARENT_ADDR1), '-')  UM_PARENT_ADDR1,
                NVL (TRIM (UM_PARENT_ADDR2), '-')  UM_PARENT_ADDR2,
                NVL (TRIM (UM_PARENT_ADDR3), '-')  UM_PARENT_ADDR3,
                NVL (TRIM (UM_PARENT_CITY), '-')  UM_PARENT_CITY,
                NVL (TRIM (UM_PARENT_STATE), '-')  UM_PARENT_STATE,
                NVL (TRIM (UM_PARENT_COUNTRY), '-')  UM_PARENT_COUNTRY,
                NVL (TRIM (UM_PARENT_POSTAL), '-')  UM_PARENT_POSTAL,
                NVL (TRIM (UM_PARENT_PHONE), '-')  UM_PARENT_PHONE,
                NVL (TRIM (UM_PARENT_EMAIL), '-')  UM_PARENT_EMAIL,
                NVL (TRIM (UM_PARENT_OCCUPTN), '-')  UM_PARENT_OCCUPTN,
                NVL (TRIM (UM_PARENT_JOBTITLE), '-')  UM_PARENT_JOBTITLE,
                NVL (TRIM (UM_PARENT_EMPLOYER), '-')  UM_PARENT_EMPLOYER,
                NVL (TRIM (UM_PARNT1_COLL_NBR), '-')  UM_PARNT1_COLL_NBR,
                NVL (TRIM (UM_PARNT_COLLEGE), '-')  UM_PARNT_COLLEGE,
                NVL (TRIM (UM_PARENT_CEEB), '-')  UM_PARENT_CEEB,
                NVL (TRIM (UM_PARENT_DEG_1A), '-')  UM_PARENT_DEG_1A,
                NVL (TRIM (UM_PARENT_DEG_1B), '-')  UM_PARENT_DEG_1B,
                NVL (TRIM (UM_PARENT_DEG_1C), '-')  UM_PARENT_DEG_1C,
                NVL (TRIM (UM_PARENT_DEG_1D), '-')  UM_PARENT_DEG_1D,
                NVL (TRIM (UM_PARENT_DEG_1E), '-')  UM_PARENT_DEG_1E,
                NVL (TRIM (UM_PARNT_DEG_YR_1A), '-')  UM_PARNT_DEG_YR_1A,
                NVL (TRIM (UM_PARNT_DEG_YR_1B), '-')  UM_PARNT_DEG_YR_1B,
                NVL (TRIM (UM_PARNT_DEG_YR_1C), '-')  UM_PARNT_DEG_YR_1C,
                NVL (TRIM (UM_PARNT_DEG_YR_1D), '-')  UM_PARNT_DEG_YR_1D,
                NVL (TRIM (UM_PARNT_DEG_YR_1E), '-')  UM_PARNT_DEG_YR_1E,
                NVL (TRIM (UM_PARNT_GRADSCHL), '-')  UM_PARNT_GRADSCHL,
                NVL (TRIM (UM_PARENT_CEEB_G), '-')  UM_PARENT_CEEB_G,
                NVL (TRIM (UM_PARENT_DEG_2A), '-')  UM_PARENT_DEG_2A,
                NVL (TRIM (UM_PARENT_DEG_2B), '-')  UM_PARENT_DEG_2B,
                NVL (TRIM (UM_PARENT_DEG_2C), '-')  UM_PARENT_DEG_2C,
                NVL (TRIM (UM_PARENT_DEG_2D), '-')  UM_PARENT_DEG_2D,
                NVL (TRIM (UM_PARENT_DEG_2E), '-')  UM_PARENT_DEG_2E,
                NVL (TRIM (UM_PARNT_DEG_YR_2A), '-')  UM_PARNT_DEG_YR_2A,
                NVL (TRIM (UM_PARNT_DEG_YR_2B), '-')  UM_PARNT_DEG_YR_2B,
                NVL (TRIM (UM_PARNT_DEG_YR_2C), '-')  UM_PARNT_DEG_YR_2C,
                NVL (TRIM (UM_PARNT_DEG_YR_2D), '-')  UM_PARNT_DEG_YR_2D,
                NVL (TRIM (UM_PARNT_DEG_YR_2E), '-')  UM_PARNT_DEG_YR_2E,
                NVL (TRIM (UM_PARNT1_COLLEGE3), '-')  UM_PARNT1_COLLEGE3,
                NVL (TRIM (UM_PARNT1_COL3_CEB), '-')  UM_PARNT1_COL3_CEB,
                NVL (TRIM (UM_PARNT1_DEGR_3A), '-')  UM_PARNT1_DEGR_3A,
                NVL (TRIM (UM_PARNT1_DEGR_3B), '-')  UM_PARNT1_DEGR_3B,
                NVL (TRIM (UM_PARNT1_DEGR_3C), '-')  UM_PARNT1_DEGR_3C,
                NVL (TRIM (UM_PARNT1_DEGR_3D), '-')  UM_PARNT1_DEGR_3D,
                NVL (TRIM (UM_PARNT1_DEGR_3E), '-')  UM_PARNT1_DEGR_3E,
                NVL (TRIM (UM_PARNT1_DG_3A_YR), '-')  UM_PARNT1_DG_3A_YR,
                NVL (TRIM (UM_PARNT1_DG_3B_YR), '-')  UM_PARNT1_DG_3B_YR,
                NVL (TRIM (UM_PARNT1_DG_3C_YR), '-')  UM_PARNT1_DG_3C_YR,
                NVL (TRIM (UM_PARNT1_DG_3D_YR), '-')  UM_PARNT1_DG_3D_YR,
                NVL (TRIM (UM_PARNT1_DG_3E_YR), '-')  UM_PARNT1_DG_3E_YR,
                NVL (TRIM (UM_PARNT1_COLLEGE4), '-')  UM_PARNT1_COLLEGE4,
                NVL (TRIM (UM_PARNT1_COL4_CEB), '-')  UM_PARNT1_COL4_CEB,
                NVL (TRIM (UM_PARNT1_DEGR_4A), '-')  UM_PARNT1_DEGR_4A,
                NVL (TRIM (UM_PARNT1_DEGR_4B), '-')  UM_PARNT1_DEGR_4B,
                NVL (TRIM (UM_PARNT1_DEGR_4C), '-')  UM_PARNT1_DEGR_4C,
                NVL (TRIM (UM_PARNT1_DEGR_4D), '-')  UM_PARNT1_DEGR_4D,
                NVL (TRIM (UM_PARNT1_DEGR_4E), '-')  UM_PARNT1_DEGR_4E,
                NVL (TRIM (UM_PARNT1_DG_4A_YR), '-')  UM_PARNT1_DG_4A_YR,
                NVL (TRIM (UM_PARNT1_DG_4B_YR), '-')  UM_PARNT1_DG_4B_YR,
                NVL (TRIM (UM_PARNT1_DG_4C_YR), '-')  UM_PARNT1_DG_4C_YR,
                NVL (TRIM (UM_PARNT1_DG_4D_YR), '-')  UM_PARNT1_DG_4D_YR,
                NVL (TRIM (UM_PARNT1_DG_4E_YR), '-')  UM_PARNT1_DG_4E_YR,
                NVL (TRIM (UM_PARNT1_COLLEGE5), '-')  UM_PARNT1_COLLEGE5,
                NVL (TRIM (UM_PARNT1_COL5_CEB), '-')  UM_PARNT1_COL5_CEB,
                NVL (TRIM (UM_PARNT1_DEGR_5A), '-')  UM_PARNT1_DEGR_5A,
                NVL (TRIM (UM_PARNT1_DEGR_5B), '-')  UM_PARNT1_DEGR_5B,
                NVL (TRIM (UM_PARNT1_DEGR_5C), '-')  UM_PARNT1_DEGR_5C,
                NVL (TRIM (UM_PARNT1_DEGR_5D), '-')  UM_PARNT1_DEGR_5D,
                NVL (TRIM (UM_PARNT1_DEGR_5E), '-')  UM_PARNT1_DEGR_5E,
                NVL (TRIM (UM_PARNT1_DG_5A_YR), '-')  UM_PARNT1_DG_5A_YR,
                NVL (TRIM (UM_PARNT1_DG_5B_YR), '-')  UM_PARNT1_DG_5B_YR,
                NVL (TRIM (UM_PARNT1_DG_5C_YR), '-')  UM_PARNT1_DG_5C_YR,
                NVL (TRIM (UM_PARNT1_DG_5D_YR), '-')  UM_PARNT1_DG_5D_YR,
                NVL (TRIM (UM_PARNT1_DG_5E_YR), '-')  UM_PARNT1_DG_5E_YR,
                NVL (TRIM (UM_PARENT_HIGH_EDU), '-')  UM_PARENT_HIGH_EDU,
                NVL (TRIM (UM_PARENT2_FNAME), '-')  UM_PARENT2_FNAME,
                NVL (TRIM (UM_PARENT2_MNAME), '-')  UM_PARENT2_MNAME,
                NVL (TRIM (UM_PARENT2_LNAME), '-')  UM_PARENT2_LNAME,
                NVL (TRIM (UM_PARENT2_TYPE), '-')  UM_PARENT2_TYPE,
                NVL (TRIM (UM_PARENT2_LIVING), '-')  UM_PARENT2_LIVING,
                NVL (TRIM (UM_PARNT2_DEAD_DT), '-')  UM_PARNT2_DEAD_DT,
                NVL (TRIM (UM_PARNT2_EMP_STAT), '-')  UM_PARNT2_EMP_STAT,
                NVL (TRIM (UM_PARNT2_EMP_BY_C), '-')  UM_PARNT2_EMP_BY_C,
                NVL (TRIM (UM_PARNT2_BIRTH_C), '-')  UM_PARNT2_BIRTH_C,
                NVL (TRIM (UM_PARNT2_SAME_ADR), '-')  UM_PARNT2_SAME_ADR,
                NVL (TRIM (UM_PARENT2_ADDR1), '-')  UM_PARENT2_ADDR1,
                NVL (TRIM (UM_PARENT2_ADDR2), '-')  UM_PARENT2_ADDR2,
                NVL (TRIM (UM_PARENT2_ADDR3), '-')  UM_PARENT2_ADDR3,
                NVL (TRIM (UM_PARENT2_CITY), '-')  UM_PARENT2_CITY,
                NVL (TRIM (UM_PARENT2_STATE), '-')  UM_PARENT2_STATE,
                NVL (TRIM (UM_PARENT2_COUNTRY), '-')  UM_PARENT2_COUNTRY,
                NVL (TRIM (UM_PARENT2_POSTAL), '-')  UM_PARENT2_POSTAL,
                NVL (TRIM (UM_PARENT2_PHONE), '-')  UM_PARENT2_PHONE,
                NVL (TRIM (UM_PARENT2_EMAIL), '-')  UM_PARENT2_EMAIL,
                NVL (TRIM (UM_PARENT2_OCCUPTN), '-')  UM_PARENT2_OCCUPTN,
                NVL (TRIM (UM_PARENT2_JOBTITL), '-')  UM_PARENT2_JOBTITL,
                NVL (TRIM (UM_PARENT2_EMPLOYR), '-')  UM_PARENT2_EMPLOYR,
                NVL (TRIM (UM_PARNT2_COLL_NBR), '-')  UM_PARNT2_COLL_NBR,
                NVL (TRIM (UM_PARNT2_COLLEGE), '-')  UM_PARNT2_COLLEGE,
                NVL (TRIM (UM_PARENT2_CEEB), '-')  UM_PARENT2_CEEB,
                NVL (TRIM (UM_PARENT2_DEG_1A), '-')  UM_PARENT2_DEG_1A,
                NVL (TRIM (UM_PARENT2_DEG_1B), '-')  UM_PARENT2_DEG_1B,
                NVL (TRIM (UM_PARENT2_DEG_1C), '-')  UM_PARENT2_DEG_1C,
                NVL (TRIM (UM_PARENT2_DEG_1D), '-')  UM_PARENT2_DEG_1D,
                NVL (TRIM (UM_PARENT2_DEG_1E), '-')  UM_PARENT2_DEG_1E,
                NVL (TRIM (UM_PARNT2_DG_YR_1A), '-')  UM_PARNT2_DG_YR_1A,
                NVL (TRIM (UM_PARNT2_DG_YR_1B), '-')  UM_PARNT2_DG_YR_1B,
                NVL (TRIM (UM_PARNT2_DG_YR_1C), '-')  UM_PARNT2_DG_YR_1C,
                NVL (TRIM (UM_PARNT2_DG_YR_1D), '-')  UM_PARNT2_DG_YR_1D,
                NVL (TRIM (UM_PARNT2_DG_YR_1E), '-')  UM_PARNT2_DG_YR_1E,
                NVL (TRIM (UM_PARNT2_GRADSCH), '-')  UM_PARNT2_GRADSCH,
                NVL (TRIM (UM_PARENT2_CEEB_G), '-')  UM_PARENT2_CEEB_G,
                NVL (TRIM (UM_PARENT2_DEG_2A), '-')  UM_PARENT2_DEG_2A,
                NVL (TRIM (UM_PARENT2_DEG_2B), '-')  UM_PARENT2_DEG_2B,
                NVL (TRIM (UM_PARENT2_DEG_2C), '-')  UM_PARENT2_DEG_2C,
                NVL (TRIM (UM_PARENT2_DEG_2D), '-')  UM_PARENT2_DEG_2D,
                NVL (TRIM (UM_PARENT2_DEG_2E), '-')  UM_PARENT2_DEG_2E,
                NVL (TRIM (UM_PARNT2_DG_YR_2A), '-')  UM_PARNT2_DG_YR_2A,
                NVL (TRIM (UM_PARNT2_DG_YR_2B), '-')  UM_PARNT2_DG_YR_2B,
                NVL (TRIM (UM_PARNT2_DG_YR_2C), '-')  UM_PARNT2_DG_YR_2C,
                NVL (TRIM (UM_PARNT2_DG_YR_2D), '-')  UM_PARNT2_DG_YR_2D,
                NVL (TRIM (UM_PARNT2_DG_YR_2E), '-')  UM_PARNT2_DG_YR_2E,
                NVL (TRIM (UM_PARNT2_COLLEGE3), '-')  UM_PARNT2_COLLEGE3,
                NVL (TRIM (UM_PARNT2_COL3_CEB), '-')  UM_PARNT2_COL3_CEB,
                NVL (TRIM (UM_PARNT2_DEGR_3A), '-')  UM_PARNT2_DEGR_3A,
                NVL (TRIM (UM_PARNT2_DEGR_3B), '-')  UM_PARNT2_DEGR_3B,
                NVL (TRIM (UM_PARNT2_DEGR_3C), '-')  UM_PARNT2_DEGR_3C,
                NVL (TRIM (UM_PARNT2_DEGR_3D), '-')  UM_PARNT2_DEGR_3D,
                NVL (TRIM (UM_PARNT2_DEGR_3E), '-')  UM_PARNT2_DEGR_3E,
                NVL (TRIM (UM_PARNT2_DG_3A_YR), '-')  UM_PARNT2_DG_3A_YR,
                NVL (TRIM (UM_PARNT2_DG_3B_YR), '-')  UM_PARNT2_DG_3B_YR,
                NVL (TRIM (UM_PARNT2_DG_3C_YR), '-')  UM_PARNT2_DG_3C_YR,
                NVL (TRIM (UM_PARNT2_DG_3D_YR), '-')  UM_PARNT2_DG_3D_YR,
                NVL (TRIM (UM_PARNT2_DG_3E_YR), '-')  UM_PARNT2_DG_3E_YR,
                NVL (TRIM (UM_PARNT2_COLLEGE4), '-')  UM_PARNT2_COLLEGE4,
                NVL (TRIM (UM_PARNT2_COL4_CEB), '-')  UM_PARNT2_COL4_CEB,
                NVL (TRIM (UM_PARNT2_DEGR_4A), '-')  UM_PARNT2_DEGR_4A,
                NVL (TRIM (UM_PARNT2_DEGR_4B), '-')  UM_PARNT2_DEGR_4B,
                NVL (TRIM (UM_PARNT2_DEGR_4C), '-')  UM_PARNT2_DEGR_4C,
                NVL (TRIM (UM_PARNT2_DEGR_4D), '-')  UM_PARNT2_DEGR_4D,
                NVL (TRIM (UM_PARNT2_DEGR_4E), '-')  UM_PARNT2_DEGR_4E,
                NVL (TRIM (UM_PARNT2_DG_4A_YR), '-')  UM_PARNT2_DG_4A_YR,
                NVL (TRIM (UM_PARNT2_DG_4B_YR), '-')  UM_PARNT2_DG_4B_YR,
                NVL (TRIM (UM_PARNT2_DG_4C_YR), '-')  UM_PARNT2_DG_4C_YR,
                NVL (TRIM (UM_PARNT2_DG_4D_YR), '-')  UM_PARNT2_DG_4D_YR,
                NVL (TRIM (UM_PARNT2_DG_4E_YR), '-')  UM_PARNT2_DG_4E_YR,
                NVL (TRIM (UM_PARNT2_COLLEGE5), '-')  UM_PARNT2_COLLEGE5,
                NVL (TRIM (UM_PARNT2_COL5_CEB), '-')  UM_PARNT2_COL5_CEB,
                NVL (TRIM (UM_PARNT2_DEGR_5A), '-')  UM_PARNT2_DEGR_5A,
                NVL (TRIM (UM_PARNT2_DEGR_5B), '-')  UM_PARNT2_DEGR_5B,
                NVL (TRIM (UM_PARNT2_DEGR_5C), '-')  UM_PARNT2_DEGR_5C,
                NVL (TRIM (UM_PARNT2_DEGR_5D), '-')  UM_PARNT2_DEGR_5D,
                NVL (TRIM (UM_PARNT2_DEGR_5E), '-')  UM_PARNT2_DEGR_5E,
                NVL (TRIM (UM_PARNT2_DG_5A_YR), '-')  UM_PARNT2_DG_5A_YR,
                NVL (TRIM (UM_PARNT2_DG_5B_YR), '-')  UM_PARNT2_DG_5B_YR,
                NVL (TRIM (UM_PARNT2_DG_5C_YR), '-')  UM_PARNT2_DG_5C_YR,
                NVL (TRIM (UM_PARNT2_DG_5D_YR), '-')  UM_PARNT2_DG_5D_YR,
                NVL (TRIM (UM_PARNT2_DG_5E_YR), '-')  UM_PARNT2_DG_5E_YR,
                NVL (TRIM (UM_PARNT2_HIGH_EDU), '-')  UM_PARNT2_HIGH_EDU,
                NVL (TRIM (UM_GUARD_FNAME), '-')  UM_GUARD_FNAME,
                NVL (TRIM (UM_GUARD_MNAME), '-')  UM_GUARD_MNAME,
                NVL (TRIM (UM_GUARD_LNAME), '-')  UM_GUARD_LNAME,
                NVL (TRIM (UM_GUARD_SAME_ADR), '-')  UM_GUARD_SAME_ADR,
                NVL (TRIM (UM_GUARD_ADDR1), '-')  UM_GUARD_ADDR1,
                NVL (TRIM (UM_GUARD_ADDR2), '-')  UM_GUARD_ADDR2,
                NVL (TRIM (UM_GUARD_ADDR3), '-')  UM_GUARD_ADDR3,
                NVL (TRIM (UM_GUARD_CITY), '-')  UM_GUARD_CITY,
                NVL (TRIM (UM_GUARD_STATE), '-')  UM_GUARD_STATE,
                NVL (TRIM (UM_GUARD_COUNTRY), '-')  UM_GUARD_COUNTRY,
                NVL (TRIM (UM_GUARD_POSTAL), '-')  UM_GUARD_POSTAL,
                NVL (TRIM (UM_GUARD_PHONE), '-')  UM_GUARD_PHONE,
                NVL (TRIM (UM_GUARD_EMAIL), '-')  UM_GUARD_EMAIL,
                NVL (TRIM (UM_GUARD_OCCUPTN), '-')  UM_GUARD_OCCUPTN,
                NVL (TRIM (UM_GUARD_JOBTITLE), '-')  UM_GUARD_JOBTITLE,
                NVL (TRIM (UM_GUARD_EMPLOYER), '-')  UM_GUARD_EMPLOYER,
                NVL (TRIM (UM_GUARD_RELATION), '-')  UM_GUARD_RELATION,
                NVL (TRIM (UM_GUARD_EMP_STAT), '-')  UM_GUARD_EMP_STAT,
                NVL (TRIM (UM_GUARD_EMP_B_COL), '-')  UM_GUARD_EMP_B_COL,
                NVL (TRIM (UM_GUARD_EDU_LVL), '-')  UM_GUARD_EDU_LVL,
                NVL (TRIM (UM_GUARD_COL_NBR), '-')  UM_GUARD_COL_NBR,
                NVL (TRIM (UM_GARD_COLLEGE), '-')  UM_GARD_COLLEGE,
                NVL (TRIM (UM_GUARD_CEEB), '-')  UM_GUARD_CEEB,
                NVL (TRIM (UM_GUARD_DEG_1A), '-')  UM_GUARD_DEG_1A,
                NVL (TRIM (UM_GUARD_DEG_1B), '-')  UM_GUARD_DEG_1B,
                NVL (TRIM (UM_GUARD_DEG_1C), '-')  UM_GUARD_DEG_1C,
                NVL (TRIM (UM_GUARD_DEG_1D), '-')  UM_GUARD_DEG_1D,
                NVL (TRIM (UM_GUARD_DEG_1E), '-')  UM_GUARD_DEG_1E,
                NVL (TRIM (UM_GUARD_DEG_YR_1A), '-')  UM_GUARD_DEG_YR_1A,
                NVL (TRIM (UM_GUARD_DEG_YR_1B), '-')  UM_GUARD_DEG_YR_1B,
                NVL (TRIM (UM_GUARD_DEG_YR_1C), '-')  UM_GUARD_DEG_YR_1C,
                NVL (TRIM (UM_GUARD_DEG_YR_1D), '-')  UM_GUARD_DEG_YR_1D,
                NVL (TRIM (UM_GUARD_DEG_YR_1E), '-')  UM_GUARD_DEG_YR_1E,
                NVL (TRIM (UM_GARD_GRADSCHL), '-')  UM_GARD_GRADSCHL,
                NVL (TRIM (UM_GUARD_CEEB_G), '-')  UM_GUARD_CEEB_G,
                NVL (TRIM (UM_GUARD_DEG_2A), '-')  UM_GUARD_DEG_2A,
                NVL (TRIM (UM_GUARD_DEG_2B), '-')  UM_GUARD_DEG_2B,
                NVL (TRIM (UM_GUARD_DEG_2C), '-')  UM_GUARD_DEG_2C,
                NVL (TRIM (UM_GUARD_DEG_2D), '-')  UM_GUARD_DEG_2D,
                NVL (TRIM (UM_GUARD_DEG_2E), '-')  UM_GUARD_DEG_2E,
                NVL (TRIM (UM_GUARD_DEG_YR_2A), '-')  UM_GUARD_DEG_YR_2A,
                NVL (TRIM (UM_GUARD_DEG_YR_2B), '-')  UM_GUARD_DEG_YR_2B,
                NVL (TRIM (UM_GUARD_DEG_YR_2C), '-')  UM_GUARD_DEG_YR_2C,
                NVL (TRIM (UM_GUARD_DEG_YR_2D), '-')  UM_GUARD_DEG_YR_2D,
                NVL (TRIM (UM_GUARD_DEG_YR_2E), '-')  UM_GUARD_DEG_YR_2E,
                NVL (TRIM (UM_GUARD_COLLEGE3), '-')  UM_GUARD_COLLEGE3,
                NVL (TRIM (UM_GUARD_COL3_CEB), '-')  UM_GUARD_COL3_CEB,
                NVL (TRIM (UM_GUARD_DEGR_3A), '-')  UM_GUARD_DEGR_3A,
                NVL (TRIM (UM_GUARD_DEGR_3B), '-')  UM_GUARD_DEGR_3B,
                NVL (TRIM (UM_GUARD_DEGR_3C), '-')  UM_GUARD_DEGR_3C,
                NVL (TRIM (UM_GUARD_DEGR_3D), '-')  UM_GUARD_DEGR_3D,
                NVL (TRIM (UM_GUARD_DEGR_3E), '-')  UM_GUARD_DEGR_3E,
                NVL (TRIM (UM_GUARD_DG_3A_YR), '-')  UM_GUARD_DG_3A_YR,
                NVL (TRIM (UM_GUARD_DG_3B_YR), '-')  UM_GUARD_DG_3B_YR,
                NVL (TRIM (UM_GUARD_DG_3C_YR), '-')  UM_GUARD_DG_3C_YR,
                NVL (TRIM (UM_GUARD_DG_3D_YR), '-')  UM_GUARD_DG_3D_YR,
                NVL (TRIM (UM_GUARD_DG_3E_YR), '-')  UM_GUARD_DG_3E_YR,
                NVL (TRIM (UM_GUARD_COLLEGE4), '-')  UM_GUARD_COLLEGE4,
                NVL (TRIM (UM_GUARD_COL4_CEB), '-')  UM_GUARD_COL4_CEB,
                NVL (TRIM (UM_GUARD_DEGR_4A), '-')  UM_GUARD_DEGR_4A,
                NVL (TRIM (UM_GUARD_DEGR_4B), '-')  UM_GUARD_DEGR_4B,
                NVL (TRIM (UM_GUARD_DEGR_4C), '-')  UM_GUARD_DEGR_4C,
                NVL (TRIM (UM_GUARD_DEGR_4D), '-')  UM_GUARD_DEGR_4D,
                NVL (TRIM (UM_GUARD_DEGR_4E), '-')  UM_GUARD_DEGR_4E,
                NVL (TRIM (UM_GUARD_DG_4A_YR), '-')  UM_GUARD_DG_4A_YR,
                NVL (TRIM (UM_GUARD_DG_4B_YR), '-')  UM_GUARD_DG_4B_YR,
                NVL (TRIM (UM_GUARD_DG_4C_YR), '-')  UM_GUARD_DG_4C_YR,
                NVL (TRIM (UM_GUARD_DG_4D_YR), '-')  UM_GUARD_DG_4D_YR,
                NVL (TRIM (UM_GUARD_DG_4E_YR), '-')  UM_GUARD_DG_4E_YR,
                NVL (TRIM (UM_GUARD_COLLEGE5), '-')  UM_GUARD_COLLEGE5,
                NVL (TRIM (UM_GUARD_COL5_CEB), '-')  UM_GUARD_COL5_CEB,
                NVL (TRIM (UM_GUARD_DEGR_5A), '-')  UM_GUARD_DEGR_5A,
                NVL (TRIM (UM_GUARD_DEGR_5B), '-')  UM_GUARD_DEGR_5B,
                NVL (TRIM (UM_GUARD_DEGR_5C), '-')  UM_GUARD_DEGR_5C,
                NVL (TRIM (UM_GUARD_DEGR_5D), '-')  UM_GUARD_DEGR_5D,
                NVL (TRIM (UM_GUARD_DEGR_5E), '-')  UM_GUARD_DEGR_5E,
                NVL (TRIM (UM_GUARD_DG_5A_YR), '-')  UM_GUARD_DG_5A_YR,
                NVL (TRIM (UM_GUARD_DG_5B_YR), '-')  UM_GUARD_DG_5B_YR,
                NVL (TRIM (UM_GUARD_DG_5C_YR), '-')  UM_GUARD_DG_5C_YR,
                NVL (TRIM (UM_GUARD_DG_5D_YR), '-')  UM_GUARD_DG_5D_YR,
                NVL (TRIM (UM_GUARD_DG_5E_YR), '-')  UM_GUARD_DG_5E_YR,
                NVL (TRIM (UM_RELGION_PREF), '-')  UM_RELGION_PREF,
                NVL (TRIM (UM_OTHER_RELGION), '-')  UM_OTHER_RELGION,
                NVL (TRIM (UM_LIVED_US_YRS), '-')  UM_LIVED_US_YRS,
                NVL (TRIM (UM_LIVED_OUT_US_YR), '-')  UM_LIVED_OUT_US_YR,
                NVL (TRIM (UM_NUMBER_OF_LANG), '-')  UM_NUMBER_OF_LANG,
                NVL (TRIM (UM_OTH_LANG1), '-')  UM_OTH_LANG1,
                NVL (TRIM (UM_OTH_LANG2), '-')  UM_OTH_LANG2,
                NVL (TRIM (UM_OTH_LANG3), '-')  UM_OTH_LANG3,
                NVL (TRIM (UM_OTH_LANG4), '-')  UM_OTH_LANG4,
                NVL (TRIM (UM_OTH_LANG5), '-')  UM_OTH_LANG5,
                NVL (TRIM (UM_LANG1_PROF), '-')  UM_LANG1_PROF,
                NVL (TRIM (UM_LANG2_PROF), '-')  UM_LANG2_PROF,
                NVL (TRIM (UM_LANG3_PROF), '-')  UM_LANG3_PROF,
                NVL (TRIM (UM_LANG4_PROF), '-')  UM_LANG4_PROF,
                NVL (TRIM (UM_LANG5_PROF), '-')  UM_LANG5_PROF,
                NVL (TRIM (UM_LANG1), '-')  UM_LANG1,
                NVL (TRIM (UM_LANG2), '-')  UM_LANG2,
                NVL (TRIM (UM_LANG3), '-')  UM_LANG3,
                NVL (TRIM (UM_LANG4), '-')  UM_LANG4,
                NVL (TRIM (UM_LANG5), '-')  UM_LANG5,
                NVL (PROCESS_INSTANCE, 0)  PROCESS_INSTANCE,
                DATETIME_CREATED  DATETIME_CREATED,
                'N'  LOAD_ERROR,
                'S'  DATA_ORIGIN,
                sysdate  CREATED_EW_DTTM,
                sysdate  LASTUPD_EW_DTTM,
                1234 BATCH_SID,
                ROW_NUMBER ()
                OVER (PARTITION BY UM_ADM_USERID, INSTITUTION, UM_ADM_REC_NBR
                      ORDER BY DATETIME_CREATED DESC)
                   PRT_ORDER
           FROM SYSADM.PS_UM_COM_PRNT_RPT@SASOURCE S)
SELECT UM_ADM_USERID,
       INSTITUTION,
       UM_ADM_REC_NBR,
       SRC_SYS_ID,
       UM_PARENT_FNAME,
       UM_PARENT_MNAME,
       UM_PARENT_LNAME,
       UM_PARENT_TYPE,
       UM_PARENT_LIVING,
       UM_PARNT1_DEAD_DT,
       UM_PARNT1_EMP_STAT,
       UM_PARNT1_EMP_BY_C,
       UM_PARNT1_BIRTH_C,
       UM_PARNT1_SAME_ADR,
       UM_PARENT_ADDR1,
       UM_PARENT_ADDR2,
       UM_PARENT_ADDR3,
       UM_PARENT_CITY,
       UM_PARENT_STATE,
       UM_PARENT_COUNTRY,
       UM_PARENT_POSTAL,
       UM_PARENT_PHONE,
       UM_PARENT_EMAIL,
       UM_PARENT_OCCUPTN,
       UM_PARENT_JOBTITLE,
       UM_PARENT_EMPLOYER,
       UM_PARNT1_COLL_NBR,
       UM_PARNT_COLLEGE,
       UM_PARENT_CEEB,
       UM_PARENT_DEG_1A,
       UM_PARENT_DEG_1B,
       UM_PARENT_DEG_1C,
       UM_PARENT_DEG_1D,
       UM_PARENT_DEG_1E,
       UM_PARNT_DEG_YR_1A,
       UM_PARNT_DEG_YR_1B,
       UM_PARNT_DEG_YR_1C,
       UM_PARNT_DEG_YR_1D,
       UM_PARNT_DEG_YR_1E,
       UM_PARNT_GRADSCHL,
       UM_PARENT_CEEB_G,
       UM_PARENT_DEG_2A,
       UM_PARENT_DEG_2B,
       UM_PARENT_DEG_2C,
       UM_PARENT_DEG_2D,
       UM_PARENT_DEG_2E,
       UM_PARNT_DEG_YR_2A,
       UM_PARNT_DEG_YR_2B,
       UM_PARNT_DEG_YR_2C,
       UM_PARNT_DEG_YR_2D,
       UM_PARNT_DEG_YR_2E,
       UM_PARNT1_COLLEGE3,
       UM_PARNT1_COL3_CEB,
       UM_PARNT1_DEGR_3A,
       UM_PARNT1_DEGR_3B,
       UM_PARNT1_DEGR_3C,
       UM_PARNT1_DEGR_3D,
       UM_PARNT1_DEGR_3E,
       UM_PARNT1_DG_3A_YR,
       UM_PARNT1_DG_3B_YR,
       UM_PARNT1_DG_3C_YR,
       UM_PARNT1_DG_3D_YR,
       UM_PARNT1_DG_3E_YR,
       UM_PARNT1_COLLEGE4,
       UM_PARNT1_COL4_CEB,
       UM_PARNT1_DEGR_4A,
       UM_PARNT1_DEGR_4B,
       UM_PARNT1_DEGR_4C,
       UM_PARNT1_DEGR_4D,
       UM_PARNT1_DEGR_4E,
       UM_PARNT1_DG_4A_YR,
       UM_PARNT1_DG_4B_YR,
       UM_PARNT1_DG_4C_YR,
       UM_PARNT1_DG_4D_YR,
       UM_PARNT1_DG_4E_YR,
       UM_PARNT1_COLLEGE5,
       UM_PARNT1_COL5_CEB,
       UM_PARNT1_DEGR_5A,
       UM_PARNT1_DEGR_5B,
       UM_PARNT1_DEGR_5C,
       UM_PARNT1_DEGR_5D,
       UM_PARNT1_DEGR_5E,
       UM_PARNT1_DG_5A_YR,
       UM_PARNT1_DG_5B_YR,
       UM_PARNT1_DG_5C_YR,
       UM_PARNT1_DG_5D_YR,
       UM_PARNT1_DG_5E_YR,
       UM_PARENT_HIGH_EDU,
       UM_PARENT2_FNAME,
       UM_PARENT2_MNAME,
       UM_PARENT2_LNAME,
       UM_PARENT2_TYPE,
       UM_PARENT2_LIVING,
       UM_PARNT2_DEAD_DT,
       UM_PARNT2_EMP_STAT,
       UM_PARNT2_EMP_BY_C,
       UM_PARNT2_BIRTH_C,
       UM_PARNT2_SAME_ADR,
       UM_PARENT2_ADDR1,
       UM_PARENT2_ADDR2,
       UM_PARENT2_ADDR3,
       UM_PARENT2_CITY,
       UM_PARENT2_STATE,
       UM_PARENT2_COUNTRY,
       UM_PARENT2_POSTAL,
       UM_PARENT2_PHONE,
       UM_PARENT2_EMAIL,
       UM_PARENT2_OCCUPTN,
       UM_PARENT2_JOBTITL,
       UM_PARENT2_EMPLOYR,
       UM_PARNT2_COLL_NBR,
       UM_PARNT2_COLLEGE,
       UM_PARENT2_CEEB,
       UM_PARENT2_DEG_1A,
       UM_PARENT2_DEG_1B,
       UM_PARENT2_DEG_1C,
       UM_PARENT2_DEG_1D,
       UM_PARENT2_DEG_1E,
       UM_PARNT2_DG_YR_1A,
       UM_PARNT2_DG_YR_1B,
       UM_PARNT2_DG_YR_1C,
       UM_PARNT2_DG_YR_1D,
       UM_PARNT2_DG_YR_1E,
       UM_PARNT2_GRADSCH,
       UM_PARENT2_CEEB_G,
       UM_PARENT2_DEG_2A,
       UM_PARENT2_DEG_2B,
       UM_PARENT2_DEG_2C,
       UM_PARENT2_DEG_2D,
       UM_PARENT2_DEG_2E,
       UM_PARNT2_DG_YR_2A,
       UM_PARNT2_DG_YR_2B,
       UM_PARNT2_DG_YR_2C,
       UM_PARNT2_DG_YR_2D,
       UM_PARNT2_DG_YR_2E,
       UM_PARNT2_COLLEGE3,
       UM_PARNT2_COL3_CEB,
       UM_PARNT2_DEGR_3A,
       UM_PARNT2_DEGR_3B,
       UM_PARNT2_DEGR_3C,
       UM_PARNT2_DEGR_3D,
       UM_PARNT2_DEGR_3E,
       UM_PARNT2_DG_3A_YR,
       UM_PARNT2_DG_3B_YR,
       UM_PARNT2_DG_3C_YR,
       UM_PARNT2_DG_3D_YR,
       UM_PARNT2_DG_3E_YR,
       UM_PARNT2_COLLEGE4,
       UM_PARNT2_COL4_CEB,
       UM_PARNT2_DEGR_4A,
       UM_PARNT2_DEGR_4B,
       UM_PARNT2_DEGR_4C,
       UM_PARNT2_DEGR_4D,
       UM_PARNT2_DEGR_4E,
       UM_PARNT2_DG_4A_YR,
       UM_PARNT2_DG_4B_YR,
       UM_PARNT2_DG_4C_YR,
       UM_PARNT2_DG_4D_YR,
       UM_PARNT2_DG_4E_YR,
       UM_PARNT2_COLLEGE5,
       UM_PARNT2_COL5_CEB,
       UM_PARNT2_DEGR_5A,
       UM_PARNT2_DEGR_5B,
       UM_PARNT2_DEGR_5C,
       UM_PARNT2_DEGR_5D,
       UM_PARNT2_DEGR_5E,
       UM_PARNT2_DG_5A_YR,
       UM_PARNT2_DG_5B_YR,
       UM_PARNT2_DG_5C_YR,
       UM_PARNT2_DG_5D_YR,
       UM_PARNT2_DG_5E_YR,
       UM_PARNT2_HIGH_EDU,
       UM_GUARD_FNAME,
       UM_GUARD_MNAME,
       UM_GUARD_LNAME,
       UM_GUARD_SAME_ADR,
       UM_GUARD_ADDR1,
       UM_GUARD_ADDR2,
       UM_GUARD_ADDR3,
       UM_GUARD_CITY,
       UM_GUARD_STATE,
       UM_GUARD_COUNTRY,
       UM_GUARD_POSTAL,
       UM_GUARD_PHONE,
       UM_GUARD_EMAIL,
       UM_GUARD_OCCUPTN,
       UM_GUARD_JOBTITLE,
       UM_GUARD_EMPLOYER,
       UM_GUARD_RELATION,
       UM_GUARD_EMP_STAT,
       UM_GUARD_EMP_B_COL,
       UM_GUARD_EDU_LVL,
       UM_GUARD_COL_NBR,
       UM_GARD_COLLEGE,
       UM_GUARD_CEEB,
       UM_GUARD_DEG_1A,
       UM_GUARD_DEG_1B,
       UM_GUARD_DEG_1C,
       UM_GUARD_DEG_1D,
       UM_GUARD_DEG_1E,
       UM_GUARD_DEG_YR_1A,
       UM_GUARD_DEG_YR_1B,
       UM_GUARD_DEG_YR_1C,
       UM_GUARD_DEG_YR_1D,
       UM_GUARD_DEG_YR_1E,
       UM_GARD_GRADSCHL,
       UM_GUARD_CEEB_G,
       UM_GUARD_DEG_2A,
       UM_GUARD_DEG_2B,
       UM_GUARD_DEG_2C,
       UM_GUARD_DEG_2D,
       UM_GUARD_DEG_2E,
       UM_GUARD_DEG_YR_2A,
       UM_GUARD_DEG_YR_2B,
       UM_GUARD_DEG_YR_2C,
       UM_GUARD_DEG_YR_2D,
       UM_GUARD_DEG_YR_2E,
       UM_GUARD_COLLEGE3,
       UM_GUARD_COL3_CEB,
       UM_GUARD_DEGR_3A,
       UM_GUARD_DEGR_3B,
       UM_GUARD_DEGR_3C,
       UM_GUARD_DEGR_3D,
       UM_GUARD_DEGR_3E,
       UM_GUARD_DG_3A_YR,
       UM_GUARD_DG_3B_YR,
       UM_GUARD_DG_3C_YR,
       UM_GUARD_DG_3D_YR,
       UM_GUARD_DG_3E_YR,
       UM_GUARD_COLLEGE4,
       UM_GUARD_COL4_CEB,
       UM_GUARD_DEGR_4A,
       UM_GUARD_DEGR_4B,
       UM_GUARD_DEGR_4C,
       UM_GUARD_DEGR_4D,
       UM_GUARD_DEGR_4E,
       UM_GUARD_DG_4A_YR,
       UM_GUARD_DG_4B_YR,
       UM_GUARD_DG_4C_YR,
       UM_GUARD_DG_4D_YR,
       UM_GUARD_DG_4E_YR,
       UM_GUARD_COLLEGE5,
       UM_GUARD_COL5_CEB,
       UM_GUARD_DEGR_5A,
       UM_GUARD_DEGR_5B,
       UM_GUARD_DEGR_5C,
       UM_GUARD_DEGR_5D,
       UM_GUARD_DEGR_5E,
       UM_GUARD_DG_5A_YR,
       UM_GUARD_DG_5B_YR,
       UM_GUARD_DG_5C_YR,
       UM_GUARD_DG_5D_YR,
       UM_GUARD_DG_5E_YR,
       UM_RELGION_PREF,
       UM_OTHER_RELGION,
       UM_LIVED_US_YRS,
       UM_LIVED_OUT_US_YR,
       UM_NUMBER_OF_LANG,
       UM_OTH_LANG1,
       UM_OTH_LANG2,
       UM_OTH_LANG3,
       UM_OTH_LANG4,
       UM_OTH_LANG5,
       UM_LANG1_PROF,
       UM_LANG2_PROF,
       UM_LANG3_PROF,
       UM_LANG4_PROF,
       UM_LANG5_PROF,
       UM_LANG1,
       UM_LANG2,
       UM_LANG3,
       UM_LANG4,
       UM_LANG5,
       PROCESS_INSTANCE,
       DATETIME_CREATED,
       LOAD_ERROR,
       DATA_ORIGIN,
       CREATED_EW_DTTM,
       LASTUPD_EW_DTTM,
       BATCH_SID
  FROM PRT
 WHERE PRT_ORDER = 1
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_UM_COM_PRNT_RPT rows inserted: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_UM_COM_PRNT_RPT',
                i_Action            => 'INSERT',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Indexing CSSTG_OWNER.PS_UM_COM_PRNT_RPT';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Indexing',
       END_DT = NULL
 where TABLE_NAME = 'PS_UM_COM_PRNT_RPT'
;

strSqlCommand := 'commit';
commit;

strSqlCommand   := 'update END_DT on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Complete',
       END_DT = sysdate,
       OLD_MAX_SCN = 0,
       NEW_MAX_SCN = 999999999999
 where TABLE_NAME = 'PS_UM_COM_PRNT_RPT'
;


strSqlCommand := 'commit';
commit;


strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_SUCCESS';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_SUCCESS;

strMessage01    := strProcessName || ' is complete.';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);


EXCEPTION
    WHEN OTHERS THEN

        COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_EXCEPTION
                (
                        i_SqlCommand   => strSqlCommand,
                        i_SqlCode      => SQLCODE,
                        i_SqlErrm      => SQLERRM
                );

END PS_UM_COM_PRNT_RPT_P;
/
