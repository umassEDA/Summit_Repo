DROP PROCEDURE CSMRT_OWNER.PS_EXT_TERM_TBL_P
/

--
-- PS_EXT_TERM_TBL_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."PS_EXT_TERM_TBL_P" AUTHID CURRENT_USER IS

------------------------------------------------------------------------
--
-- Loads stage table PS_EXT_TERM_TBL from PeopleSoft table PS_EXT_TERM_TBL.
--
-- V01  SMT-xxxx 09/06/2017,    James Doucette
--                              Converted from DataStage
--
------------------------------------------------------------------------

        strMartId                       Varchar2(50)    := 'CSW';
        strProcessName                  Varchar2(100)   := 'PS_EXT_TERM_TBL';
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
 where TABLE_NAME = 'PS_EXT_TERM_TBL'
;

strSqlCommand := 'commit';
commit;


strSqlCommand   := 'update NEW_MAX_SCN on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Merging',
       NEW_MAX_SCN = (select /*+ full(S) */ max(ORA_ROWSCN) from SYSADM.PS_EXT_TERM_TBL@SASOURCE S)
 where TABLE_NAME = 'PS_EXT_TERM_TBL'
;

strSqlCommand := 'commit';
commit;


strMessage01    := 'Merging data into CSSTG_OWNER.PS_EXT_TERM_TBL';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'merge into CSSTG_OWNER.PS_EXT_TERM_TBL';
merge /*+ use_hash(S,T) */ into CSSTG_OWNER.PS_EXT_TERM_TBL T 
using (select /*+ full(S) */
    nvl(trim(EXT_TERM_TYPE),'-') EXT_TERM_TYPE, 
    nvl(trim(EXT_TERM),'-') EXT_TERM, 
    nvl(trim(DESCR),'-') DESCR, 
    nvl(trim(DESCRSHORT),'-') DESCRSHORT, 
    nvl(trim(MONTHCD),'-') MONTHCD, 
    nvl(trim(TERM_TYPE),'-') TERM_TYPE, 
    nvl(trim(UNT_TYPE),'-') UNT_TYPE 
from SYSADM.PS_EXT_TERM_TBL@SASOURCE S
where ORA_ROWSCN > (select OLD_MAX_SCN from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_EXT_TERM_TBL') ) S 
 on ( 
    T.EXT_TERM_TYPE = S.EXT_TERM_TYPE and 
    T.EXT_TERM = S.EXT_TERM and 
    T.SRC_SYS_ID = 'CS90')
when matched then update set
    T.DESCR = S.DESCR,
    T.DESCRSHORT = S.DESCRSHORT,
    T.MONTHCD = S.MONTHCD,
    T.TERM_TYPE = S.TERM_TYPE,
    T.UNT_TYPE = S.UNT_TYPE,
    T.DATA_ORIGIN = 'S',
    T.LASTUPD_EW_DTTM = sysdate,
    T.BATCH_SID = 1234
where 
    T.DESCR <> S.DESCR or 
    T.DESCRSHORT <> S.DESCRSHORT or 
    T.MONTHCD <> S.MONTHCD or 
    T.TERM_TYPE <> S.TERM_TYPE or 
    T.UNT_TYPE <> S.UNT_TYPE or 
    T.DATA_ORIGIN = 'D' 
when not matched then 
insert (
    T.EXT_TERM_TYPE,
    T.EXT_TERM, 
    T.SRC_SYS_ID, 
    T.DESCR,
    T.DESCRSHORT, 
    T.MONTHCD,
    T.TERM_TYPE,
    T.UNT_TYPE, 
    T.LOAD_ERROR, 
    T.DATA_ORIGIN,
    T.CREATED_EW_DTTM,
    T.LASTUPD_EW_DTTM,
    T.BATCH_SID
    ) 
values (
    S.EXT_TERM_TYPE,
    S.EXT_TERM, 
    'CS90', 
    S.DESCR,
    S.DESCRSHORT, 
    S.MONTHCD,
    S.TERM_TYPE,
    S.UNT_TYPE, 
    'N',
    'S',
    sysdate,
    sysdate,
    1234)
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_EXT_TERM_TBL rows merged: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_EXT_TERM_TBL',
                i_Action            => 'MERGE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update TABLE_STATUS on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Deleting',
       OLD_MAX_SCN = NEW_MAX_SCN
 where TABLE_NAME = 'PS_EXT_TERM_TBL';

strSqlCommand := 'commit';
commit;


strMessage01    := 'Updating DATA_ORIGIN on CSSTG_OWNER.PS_EXT_TERM_TBL';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update DATA_ORIGIN on CSSTG_OWNER.PS_EXT_TERM_TBL';
update CSSTG_OWNER.PS_EXT_TERM_TBL T
   set T.DATA_ORIGIN = 'D',
       T.LASTUPD_EW_DTTM = SYSDATE
 where T.DATA_ORIGIN <> 'D'
   and exists 
(select 1 from
(select EXT_TERM_TYPE, EXT_TERM
   from CSSTG_OWNER.PS_EXT_TERM_TBL T2
  where (select DELETE_FLG from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_EXT_TERM_TBL') = 'Y'
  minus
 select EXT_TERM_TYPE, EXT_TERM
   from SYSADM.PS_EXT_TERM_TBL@SASOURCE
  where (select DELETE_FLG from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_EXT_TERM_TBL') = 'Y' 
   ) S
 where T.EXT_TERM_TYPE = S.EXT_TERM_TYPE   
   AND T.EXT_TERM = S.EXT_TERM
   and T.SRC_SYS_ID = 'CS90' 
   ) 
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_EXT_TERM_TBL rows updated: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_EXT_TERM_TBL',
                i_Action            => 'UPDATE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update END_DT on CSSTG_OWNER.UM_STAGE_JOBS';

update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Complete',
       END_DT = SYSDATE
 where TABLE_NAME = 'PS_EXT_TERM_TBL'
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

END PS_EXT_TERM_TBL_P;
/
