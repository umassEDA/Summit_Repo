DROP PROCEDURE CSMRT_OWNER.AM_PS_ENRL_REQ_HEADER_P
/

--
-- AM_PS_ENRL_REQ_HEADER_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."AM_PS_ENRL_REQ_HEADER_P" IS

------------------------------------------------------------------------
-- George Adams
--
-- Loads stage table PS_ENRL_REQ_HEADER from PeopleSoft table PS_ENRL_REQ_HEADER.
--
-- V01  SMT-xxxx 05/11/2017,    Jim Doucette
--                              Converted from PS_ENRL_REQ_HEADER.SQL
--
------------------------------------------------------------------------

        strMartId                       Varchar2(50)    := 'CSW';
        strProcessName                  Varchar2(100)   := 'AM_PS_ENRL_REQ_HEADER';
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
 where TABLE_NAME = 'PS_ENRL_REQ_HEADER'
;

strSqlCommand := 'commit';
commit;


strSqlCommand   := 'update NEW_MAX_SCN on AMSTG_OWNER.UM_STAGE_JOBS';
update AMSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Merging',
       NEW_MAX_SCN = (select /*+ full(S) */ max(ORA_ROWSCN) from SYSADM.PS_ENRL_REQ_HEADER@AMSOURCE S)
 where TABLE_NAME = 'PS_ENRL_REQ_HEADER'
;

strSqlCommand := 'commit';
commit;


strMessage01    := 'Merging data into AMSTG_OWNER.PS_ENRL_REQ_HEADER';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'merge into AMSTG_OWNER.PS_ENRL_REQ_HEADER';
merge /*+ use_hash(S,T) */ into AMSTG_OWNER.PS_ENRL_REQ_HEADER T
using (select /*+ full(S) */
    nvl(trim(ENRL_REQUEST_ID),'-') ENRL_REQUEST_ID,
    nvl(trim(OPRID),'-') OPRID,
    nvl(trim(ENRL_REQ_PROC_ST),'-') ENRL_REQ_PROC_ST,
    nvl(trim(ENRL_REQ_SOURCE),'-') ENRL_REQ_SOURCE,
    nvl(PROCESS_INSTANCE,0) PROCESS_INSTANCE,
    to_date(to_char(case when DTTM_STAMP_SEC < '01-JAN-1800' then NULL else DTTM_STAMP_SEC end,'MM/DD/YYYY HH24:MI:SS'),'MM/DD/YYYY HH24:MI:SS') DTTM_STAMP_SEC
from SYSADM.PS_ENRL_REQ_HEADER@AMSOURCE S
where ORA_ROWSCN > (select OLD_MAX_SCN from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_ENRL_REQ_HEADER') ) S
   on (
    T.ENRL_REQUEST_ID = S.ENRL_REQUEST_ID and
    T.SRC_SYS_ID = 'CS90')
when matched then update set
    T.OPRID = S.OPRID,
    T.ENRL_REQ_PROC_ST = S.ENRL_REQ_PROC_ST,
    T.ENRL_REQ_SOURCE = S.ENRL_REQ_SOURCE,
    T.PROCESS_INSTANCE = S.PROCESS_INSTANCE,
    T.DTTM_STAMP_SEC = S.DTTM_STAMP_SEC,
    T.DATA_ORIGIN = 'S',
    T.LASTUPD_EW_DTTM = sysdate,
    T.BATCH_SID   = 1234
where
    T.OPRID <> S.OPRID or
    T.ENRL_REQ_PROC_ST <> S.ENRL_REQ_PROC_ST or
    T.ENRL_REQ_SOURCE <> S.ENRL_REQ_SOURCE or
    T.PROCESS_INSTANCE <> S.PROCESS_INSTANCE or
    nvl(trim(T.DTTM_STAMP_SEC),0) <> nvl(trim(S.DTTM_STAMP_SEC),0) or
    T.DATA_ORIGIN = 'D'
when not matched then
insert (
    T.ENRL_REQUEST_ID,
    T.SRC_SYS_ID,
    T.OPRID,
    T.ENRL_REQ_PROC_ST,
    T.ENRL_REQ_SOURCE,
    T.PROCESS_INSTANCE,
    T.DTTM_STAMP_SEC,
    T.LOAD_ERROR,
    T.DATA_ORIGIN,
    T.CREATED_EW_DTTM,
    T.LASTUPD_EW_DTTM,
    T.BATCH_SID
    )
values (
    S.ENRL_REQUEST_ID,
    'CS90',
    S.OPRID,
    S.ENRL_REQ_PROC_ST,
    S.ENRL_REQ_SOURCE,
    S.PROCESS_INSTANCE,
    S.DTTM_STAMP_SEC,
    'N',
    'S',
    sysdate,
    sysdate,
    1234);

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_ENRL_REQ_HEADER rows merged: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_ENRL_REQ_HEADER',
                i_Action            => 'MERGE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update TABLE_STATUS on AMSTG_OWNER.UM_STAGE_JOBS';
update AMSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Deleting',
       OLD_MAX_SCN = NEW_MAX_SCN
 where TABLE_NAME = 'PS_ENRL_REQ_HEADER';

strSqlCommand := 'commit';
commit;


strMessage01    := 'Updating DATA_ORIGIN on AMSTG_OWNER.PS_ENRL_REQ_HEADER';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update DATA_ORIGIN on AMSTG_OWNER.PS_ENRL_REQ_HEADER';
update AMSTG_OWNER.PS_ENRL_REQ_HEADER T
        set T.DATA_ORIGIN = 'D',
               T.LASTUPD_EW_DTTM = SYSDATE
 where T.DATA_ORIGIN <> 'D'
   and exists 
(select 1 from
(select ENRL_REQUEST_ID
   from AMSTG_OWNER.PS_ENRL_REQ_HEADER T2
  where (select DELETE_FLG from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_ENRL_REQ_HEADER') = 'Y'
  minus
 select ENRL_REQUEST_ID
   from SYSADM.PS_ENRL_REQ_HEADER@AMSOURCE S2
  where (select DELETE_FLG from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_ENRL_REQ_HEADER') = 'Y'
   ) S
 where T.ENRL_REQUEST_ID = S.ENRL_REQUEST_ID
   and T.SRC_SYS_ID = 'CS90' 
   ) 
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_ENRL_REQ_HEADER rows updated: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_ENRL_REQ_HEADER',
                i_Action            => 'UPDATE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update END_DT on AMSTG_OWNER.UM_STAGE_JOBS';

update AMSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Complete',
       END_DT = SYSDATE
 where TABLE_NAME = 'PS_ENRL_REQ_HEADER'
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

END AM_PS_ENRL_REQ_HEADER_P;
/
