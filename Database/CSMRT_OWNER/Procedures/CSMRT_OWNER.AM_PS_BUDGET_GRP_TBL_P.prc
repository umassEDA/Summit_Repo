DROP PROCEDURE CSMRT_OWNER.AM_PS_BUDGET_GRP_TBL_P
/

--
-- AM_PS_BUDGET_GRP_TBL_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."AM_PS_BUDGET_GRP_TBL_P" IS

------------------------------------------------------------------------
-- George Adams
--
-- Loads stage table PS_BUDGET_GRP_TBL from PeopleSoft table PS_BUDGET_GRP_TBL.
--
-- V01  SMT-xxxx 04/10/2017,    Jim Doucette
--                              Converted from PS_BUDGET_GRP_TBL.SQL
--
------------------------------------------------------------------------

        strMartId                       Varchar2(50)    := 'CSW';
        strProcessName                  Varchar2(100)   := 'AM_PS_BUDGET_GRP_TBL';
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

strMessage01    := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);


strSqlCommand   := 'update START_DT on AMSTG_OWNER.UM_STAGE_JOBS';
update AMSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Reading',
       START_DT = sysdate,
       END_DT = NULL
 where TABLE_NAME = 'PS_BUDGET_GRP_TBL'
;

strSqlCommand := 'commit';
commit;


strSqlCommand   := 'update NEW_MAX_SCN on AMSTG_OWNER.UM_STAGE_JOBS';
update AMSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Merging',
       NEW_MAX_SCN = (select /*+ full(S) */ max(ORA_ROWSCN) from SYSADM.PS_BUDGET_GRP_TBL@AMSOURCE S)
 where TABLE_NAME = 'PS_BUDGET_GRP_TBL'
;

strSqlCommand := 'commit';
commit;


strMessage01    := 'Merging data into AMSTG_OWNER.PS_BUDGET_GRP_TBL';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'merge into AMSTG_OWNER.PS_BUDGET_GRP_TBL';
merge /*+ use_hash(S,T) */ into AMSTG_OWNER.PS_BUDGET_GRP_TBL T 
using (select /*+ full(S) */
    nvl(trim(INSTITUTION),'-') INSTITUTION, 
    nvl(trim(BUDGET_GROUP_CODE),'-') BUDGET_GROUP_CODE, 
    nvl(trim(AID_YEAR),'-') AID_YEAR, 
    nvl(trim(ACAD_CAREER),'-') ACAD_CAREER, 
    nvl(trim(STRM),'-') STRM, 
    nvl(trim(DESCR),'-') DESCR, 
    nvl(trim(DESCRSHORT),'-') DESCRSHORT, 
    nvl(trim(HOUSING_TYPE),'-') HOUSING_TYPE, 
    nvl(trim(RESIDENCY_STATUS),'-') RESIDENCY_STATUS
    from SYSADM.PS_BUDGET_GRP_TBL@AMSOURCE S
where ORA_ROWSCN > (select OLD_MAX_SCN from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_BUDGET_GRP_TBL') ) S 
 on ( 
    T.INSTITUTION = S.INSTITUTION and 
    T.BUDGET_GROUP_CODE = S.BUDGET_GROUP_CODE and 
    T.AID_YEAR = S.AID_YEAR and 
    T.ACAD_CAREER = S.ACAD_CAREER and 
    T.STRM = S.STRM and 
    T.SRC_SYS_ID = 'CS90')
when matched then update set
    T.DESCR = S.DESCR,
    T.DESCRSHORT = S.DESCRSHORT,
    T.HOUSING_TYPE = S.HOUSING_TYPE,
    T.RESIDENCY_STATUS = S.RESIDENCY_STATUS,
    T.DATA_ORIGIN = 'S',
    T.LASTUPD_EW_DTTM = sysdate,
    T.BATCH_SID = 1234
where 
T.DESCR <> S.DESCR or 
T.DESCRSHORT <> S.DESCRSHORT or 
T.HOUSING_TYPE <> S.HOUSING_TYPE or 
T.RESIDENCY_STATUS <> S.RESIDENCY_STATUS or 
T.DATA_ORIGIN = 'D' 
when not matched then 
insert (
T.INSTITUTION,
T.BUDGET_GROUP_CODE,
T.AID_YEAR, 
T.ACAD_CAREER,
T.STRM, 
T.SRC_SYS_ID, 
T.DESCR,
T.DESCRSHORT, 
T.HOUSING_TYPE, 
T.RESIDENCY_STATUS, 
T.LOAD_ERROR, 
T.DATA_ORIGIN,
T.CREATED_EW_DTTM,
T.LASTUPD_EW_DTTM,
T.BATCH_SID
) 
values (
S.INSTITUTION,
S.BUDGET_GROUP_CODE,
S.AID_YEAR, 
S.ACAD_CAREER,
S.STRM, 
'CS90', 
S.DESCR,
S.DESCRSHORT, 
S.HOUSING_TYPE, 
S.RESIDENCY_STATUS, 
'N',
'S',
sysdate,
sysdate,
1234);

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_BUDGET_GRP_TBL rows merged: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_BUDGET_GRP_TBL',
                i_Action            => 'MERGE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update TABLE_STATUS on AMSTG_OWNER.UM_STAGE_JOBS';
update AMSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Deleting',
       OLD_MAX_SCN = NEW_MAX_SCN
 where TABLE_NAME = 'PS_BUDGET_GRP_TBL';

strSqlCommand := 'commit';
commit;


strMessage01    := 'Updating DATA_ORIGIN on AMSTG_OWNER.PS_BUDGET_GRP_TBL';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update DATA_ORIGIN on AMSTG_OWNER.PS_BUDGET_GRP_TBL';
update AMSTG_OWNER.PS_BUDGET_GRP_TBL T
        set T.DATA_ORIGIN = 'D',
               T.LASTUPD_EW_DTTM = SYSDATE
 where T.DATA_ORIGIN <> 'D'
   and exists 
(select 1 from
(select INSTITUTION, BUDGET_GROUP_CODE, AID_YEAR, ACAD_CAREER, STRM
   from AMSTG_OWNER.PS_BUDGET_GRP_TBL T2
  where (select DELETE_FLG from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_BUDGET_GRP_TBL') = 'Y'
  minus
 select INSTITUTION, BUDGET_GROUP_CODE, AID_YEAR, ACAD_CAREER, STRM
   from SYSADM.PS_BUDGET_GRP_TBL@AMSOURCE S2
  where (select DELETE_FLG from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_BUDGET_GRP_TBL') = 'Y'
   ) S
 where T.INSTITUTION = S.INSTITUTION
   and T.BUDGET_GROUP_CODE = S.BUDGET_GROUP_CODE
   and T.AID_YEAR = S.AID_YEAR
   and T.ACAD_CAREER = S.ACAD_CAREER
   and T.STRM = S.STRM
   and T.SRC_SYS_ID = 'CS90' 
   ) 
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_BUDGET_GRP_TBL rows updated: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_BUDGET_GRP_TBL',
                i_Action            => 'UPDATE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update END_DT on AMSTG_OWNER.UM_STAGE_JOBS';

update AMSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Complete',
       END_DT = SYSDATE
 where TABLE_NAME = 'PS_BUDGET_GRP_TBL'
;

strSqlCommand := 'commit';
commit;


strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_SUCCESS';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_SUCCESS;

strMessage01    := strProcessName || ' is complete.';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);


EXCEPTION
    WHEN OTHERS THEN
        numSqlCode := SQLCODE;
        strSqlErrm := SQLERRM;

        ROLLBACK;
  
        strMessage01 := 'Error code: ' || TO_CHAR(SQLCODE) || ' Error Message: ' || SQLERRM;
        strMessage02 := TO_CHAR(SQLCODE);
  
        COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_FAILURE
                       (i_SqlCommand    => strSqlCommand,
                        i_ErrorText     => strMessage01,
                        i_ErrorCode     => strMessage02,
                        i_ErrorMessage  => strSqlErrm
                       );
               
        strMessage01 := 'Error...'
                        || strNewLine   || 'SQL Command:   ' || strSqlCommand
                        || strNewLine   || 'Error code:    ' || numSqlCode
                        || strNewLine   || 'Error Message: ' || strSqlErrm;

        COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);
        RAISE_APPLICATION_ERROR( -20001, strMessage01);

END AM_PS_BUDGET_GRP_TBL_P;
/