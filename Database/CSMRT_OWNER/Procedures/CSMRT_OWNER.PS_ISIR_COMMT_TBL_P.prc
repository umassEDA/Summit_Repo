DROP PROCEDURE CSMRT_OWNER.PS_ISIR_COMMT_TBL_P
/

--
-- PS_ISIR_COMMT_TBL_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER.PS_ISIR_COMMT_TBL_P AUTHID CURRENT_USER IS


------------------------------------------------------------------------
-- George Adams
--
-- Loads stage table PS_ISIR_COMMT_TBL from PeopleSoft table PS_ISIR_COMMT_TBL.
--
-- V01  SMT-xxxx 8/07/2017,    James Doucette
--                             Converted from DataStage
--
------------------------------------------------------------------------

        strMartId                       Varchar2(50)    := 'CSW';
        strProcessName                  Varchar2(100)   := 'PS_ISIR_COMMT_TBL';
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
       START_DT = SYSDATE,
       END_DT = NULL
 where TABLE_NAME = 'PS_ISIR_COMMT_TBL'
;

strSqlCommand := 'commit';
commit;


strSqlCommand   := 'update TABLE_STATUS on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Truncating',
       NEW_MAX_SCN = (select /*+ full(S) */ max(ORA_ROWSCN) from SYSADM.PS_ISIR_COMMT_TBL@SASOURCE S)
 where TABLE_NAME = 'PS_ISIR_COMMT_TBL'
;

strSqlCommand := 'commit';
commit;


strSqlDynamic   := 'truncate table CSSTG_OWNER.PS_T_ISIR_COMMT_TBL';
strSqlCommand   := 'SMT_UTILITY.EXECUTE_IMMEDIATE: ' || strSqlDynamic;
COMMON_OWNER.SMT_UTILITY.EXECUTE_IMMEDIATE
                (
                i_SqlStatement          => strSqlDynamic,
                i_MaxTries              => 10,
                i_WaitSeconds           => 10,
                o_Tries                 => intTries
                );


strSqlCommand   := 'Loading temp table for CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Loading'
 where TABLE_NAME = 'PS_ISIR_COMMT_TBL'
;

strSqlCommand := 'commit';
commit;


strSqlCommand := 'insert';
insert /*+ append */  into CSSTG_OWNER.PS_T_ISIR_COMMT_TBL
select /*+ full(S) */
    nvl(trim(AID_YEAR),'-') AID_YEAR, 
    nvl(trim(COMMENT_CODE),'-') COMMENT_CODE, 
    nvl(trim(SFA_DB_MATCH_USE),'-') SFA_DB_MATCH_USE, 
    nvl(trim(SEVERITY_LVL),'-') SEVERITY_LVL, 
    to_char(substr(trim(DESCRLONG), 1, 4000)) DESCRLONG,  
    to_number(ORA_ROWSCN) SRC_SCN
from SYSADM.PS_ISIR_COMMT_TBL@SASOURCE S
;

strSqlCommand := 'commit';
commit;


strSqlCommand   := 'update TABLE_STATUS on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Merging'
 where TABLE_NAME = 'PS_ISIR_COMMT_TBL'
;

strSqlCommand := 'commit';
commit;


strMessage01    := 'Merging data into CSSTG_OWNER.PS_ISIR_COMMT_TBL';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'merge into CSSTG_OWNER.PS_ISIR_COMMT_TBL';
merge /*+ use_hash(S,T) */ into CSSTG_OWNER.PS_ISIR_COMMT_TBL T 
using (select /*+ full(S) */
    nvl(trim(AID_YEAR),'-') AID_YEAR, 
    nvl(trim(COMMENT_CODE),'-') COMMENT_CODE, 
    nvl(trim(SFA_DB_MATCH_USE),'-') SFA_DB_MATCH_USE, 
    nvl(trim(SEVERITY_LVL),'-') SEVERITY_LVL, 
    DESCRLONG DESCRLONG
from CSSTG_OWNER.PS_T_ISIR_COMMT_TBL S 
where SRC_SCN > (select OLD_MAX_SCN from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_ISIR_COMMT_TBL') ) S
 on ( 
    T.AID_YEAR = S.AID_YEAR and 
    T.COMMENT_CODE = S.COMMENT_CODE and 
    T.SRC_SYS_ID = 'CS90')
when matched then update set
    T.SFA_DB_MATCH_USE = S.SFA_DB_MATCH_USE,
    T.SEVERITY_LVL = S.SEVERITY_LVL,
    T.DESCRLONG = S.DESCRLONG,
    T.DATA_ORIGIN = 'S',
    T.LASTUPD_EW_DTTM = sysdate,
    T.BATCH_SID = 1234
where 
    T.SFA_DB_MATCH_USE <> S.SFA_DB_MATCH_USE or 
    T.SEVERITY_LVL <> S.SEVERITY_LVL or 
    nvl(trim(T.DESCRLONG),0) <> nvl(trim(S.DESCRLONG),0) or 
    T.DATA_ORIGIN = 'D' 
when not matched then 
insert (
    T.AID_YEAR, 
    T.COMMENT_CODE, 
    T.SRC_SYS_ID, 
    T.SFA_DB_MATCH_USE, 
    T.SEVERITY_LVL, 
    T.LOAD_ERROR, 
    T.DATA_ORIGIN,
    T.CREATED_EW_DTTM,
    T.LASTUPD_EW_DTTM,
    T.BATCH_SID,
    T.DESCRLONG
    ) 
values (
    S.AID_YEAR, 
    S.COMMENT_CODE, 
    'CS90', 
    S.SFA_DB_MATCH_USE, 
    S.SEVERITY_LVL, 
    'N',
    'S',
    sysdate,
    sysdate,
    1234,
    S.DESCRLONG)
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;


strMessage01    := '# of PS_ISIR_COMMT_TBL rows merged: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_ISIR_COMMT_TBL',
                i_Action            => 'MERGE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update TABLE_STATUS on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Deleting',
       OLD_MAX_SCN = NEW_MAX_SCN
 where TABLE_NAME = 'PS_ISIR_COMMT_TBL';

strSqlCommand := 'commit';
commit;


strMessage01    := 'Updating DATA_ORIGIN on CSSTG_OWNER.PS_ISIR_COMMT_TBL';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update DATA_ORIGIN on CSSTG_OWNER.PS_ISIR_COMMT_TBL';
update CSSTG_OWNER.PS_ISIR_COMMT_TBL T
   set T.DATA_ORIGIN = 'D',
          T.LASTUPD_EW_DTTM = SYSDATE
 where T.DATA_ORIGIN <> 'D'
   and exists 
(select 1 from
(select AID_YEAR, COMMENT_CODE
   from CSSTG_OWNER.PS_ISIR_COMMT_TBL T2
  where (select DELETE_FLG from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_ISIR_COMMT_TBL') = 'Y'
  minus
 select AID_YEAR, COMMENT_CODE
   from SYSADM.PS_ISIR_COMMT_TBL@SASOURCE S2
  where (select DELETE_FLG from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_ISIR_COMMT_TBL') = 'Y'
  and COMMENT_CODE <> '145'
   ) S
 where T.AID_YEAR = S.AID_YEAR
   and T.COMMENT_CODE = S.COMMENT_CODE
   and T.SRC_SYS_ID = 'CS90' 
   ) 
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_ISIR_COMMT_TBL rows updated: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_ISIR_COMMT_TBL',
                i_Action            => 'UPDATE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update END_DT on CSSTG_OWNER.UM_STAGE_JOBS';

update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Complete',
       END_DT = SYSDATE
 where TABLE_NAME = 'PS_ISIR_COMMT_TBL'
;

strSqlCommand := 'commit';
commit;


strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_SUCCESS';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_SUCCESS;

strMessage01    := strProcessName || ' is complete.';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);


EXCEPTION
   WHEN OTHERS
   THEN
      COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_EXCEPTION (
         i_SqlCommand   => strSqlCommand,
         i_SqlCode      => SQLCODE,
         i_SqlErrm      => SQLERRM);

END PS_ISIR_COMMT_TBL_P;
/
