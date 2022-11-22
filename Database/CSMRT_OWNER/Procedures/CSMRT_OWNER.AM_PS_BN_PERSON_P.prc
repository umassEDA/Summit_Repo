DROP PROCEDURE CSMRT_OWNER.AM_PS_BN_PERSON_P
/

--
-- AM_PS_BN_PERSON_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."AM_PS_BN_PERSON_P" IS

------------------------------------------------------------------------
-- George Adams
--
-- Loads stage table PS_BN_PERSON from PeopleSoft table PS_BN_PERSON.
--
 --V01  SMT-xxxx 08/16/2017,    James Doucette
--                              Converted from DataStage
--
------------------------------------------------------------------------

        strMartId                       Varchar2(50)    := 'CSW';
        strProcessName                  Varchar2(100)   := 'AM_PS_BN_PERSON';
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
 where TABLE_NAME = 'PS_BN_PERSON'
;

strSqlCommand := 'commit';
commit;


strSqlCommand   := 'update NEW_MAX_SCN on AMSTG_OWNER.UM_STAGE_JOBS';
update AMSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Merging',
       NEW_MAX_SCN = (select /*+ full(S) */ max(ORA_ROWSCN) from SYSADM.PS_BN_PERSON@AMSOURCE S)
 where TABLE_NAME = 'PS_BN_PERSON'
;

strSqlCommand := 'commit';
commit;


strMessage01    := 'Merging data into AMSTG_OWNER.PS_BN_PERSON';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'merge into AMSTG_OWNER.PS_BN_PERSON';
merge /*+ use_hash(S,T) */ into AMSTG_OWNER.PS_BN_PERSON T
using (select /*+ full(S) */
    nvl(trim(EMPLID),'-') EMPLID, 
    nvl(trim(HIGHLY_COMP_EMPL_P),'-') HIGHLY_COMP_EMPL_P, 
    nvl(trim(HIGHLY_COMP_EMPL_C),'-') HIGHLY_COMP_EMPL_C, 
    nvl(trim(BN_TOGGLE),'-') BN_TOGGLE
from SYSADM.PS_BN_PERSON@AMSOURCE S 
where ORA_ROWSCN > (select OLD_MAX_SCN from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_BN_PERSON') ) S
 on ( 
    T.EMPLID = S.EMPLID and 
    T.SRC_SYS_ID = 'CS90')
    when matched then update set
    T.HIGHLY_COMP_EMPL_P = S.HIGHLY_COMP_EMPL_P,
    T.HIGHLY_COMP_EMPL_C = S.HIGHLY_COMP_EMPL_C,
    T.BN_TOGGLE = S.BN_TOGGLE,
    T.DATA_ORIGIN = 'S',
    T.LASTUPD_EW_DTTM = sysdate,
    T.BATCH_SID = 1234
where 
    T.HIGHLY_COMP_EMPL_P <> S.HIGHLY_COMP_EMPL_P or 
    T.HIGHLY_COMP_EMPL_C <> S.HIGHLY_COMP_EMPL_C or 
    T.BN_TOGGLE <> S.BN_TOGGLE or 
    T.DATA_ORIGIN = 'D' 
when not matched then 
insert (
    T.EMPLID, 
    T.SRC_SYS_ID, 
    T.HIGHLY_COMP_EMPL_P, 
    T.HIGHLY_COMP_EMPL_C, 
    T.BN_TOGGLE,
    T.LOAD_ERROR, 
    T.DATA_ORIGIN,
    T.CREATED_EW_DTTM,
    T.LASTUPD_EW_DTTM,
    T.BATCH_SID
    ) 
values (
    S.EMPLID, 
    'CS90', 
    S.HIGHLY_COMP_EMPL_P, 
    S.HIGHLY_COMP_EMPL_C, 
    S.BN_TOGGLE,
    'N',
    'S',
    sysdate,
    sysdate,
    1234)
;

commit;


strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_BN_PERSON rows merged: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_BN_PERSON',
                i_Action            => 'MERGE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update TABLE_STATUS on AMSTG_OWNER.UM_STAGE_JOBS';
update AMSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Deleting',
       OLD_MAX_SCN = NEW_MAX_SCN
 where TABLE_NAME = 'PS_BN_PERSON';

strSqlCommand := 'commit';
commit;


strMessage01    := 'Updating DATA_ORIGIN on AMSTG_OWNER.PS_BN_PERSON';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update DATA_ORIGIN on AMSTG_OWNER.PS_BN_PERSON';
update AMSTG_OWNER.PS_BN_PERSON T
   set T.DATA_ORIGIN = 'D',
       T.LASTUPD_EW_DTTM = SYSDATE
 where T.DATA_ORIGIN <> 'D'
   and exists 
(select 1 from
(select EMPLID
   from AMSTG_OWNER.PS_BN_PERSON T2
  where (select DELETE_FLG from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_BN_PERSON') = 'Y'
  minus
 select EMPLID
   from SYSADM.PS_BN_PERSON@AMSOURCE S2
  where (select DELETE_FLG from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_BN_PERSON') = 'Y'
   ) S
 where T.EMPLID = S.EMPLID
   and T.SRC_SYS_ID = 'CS90' 
   ) 
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_BN_PERSON rows updated: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_BN_PERSON',
                i_Action            => 'UPDATE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update END_DT on AMSTG_OWNER.UM_STAGE_JOBS';

update AMSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Complete',
       END_DT = SYSDATE
 where TABLE_NAME = 'PS_BN_PERSON'
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

END AM_PS_BN_PERSON_P;
/