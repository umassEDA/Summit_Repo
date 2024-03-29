DROP PROCEDURE CSMRT_OWNER.PS_PRSPCT_RECRTER_P
/

--
-- PS_PRSPCT_RECRTER_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."PS_PRSPCT_RECRTER_P" AUTHID CURRENT_USER IS


------------------------------------------------------------------------
-- George Adams
--
-- Loads stage table PS_PRSPCT_RECRTER from PeopleSoft table PS_PRSPCT_RECRTER.
--
 --V01  SMT-xxxx 10/03/2017,    James Doucette
--                              Converted from DataStage
--
------------------------------------------------------------------------

        strMartId                       Varchar2(50)    := 'CSW';
        strProcessName                  Varchar2(100)   := 'PS_PRSPCT_RECRTER';
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
 where TABLE_NAME = 'PS_PRSPCT_RECRTER'
;

strSqlCommand := 'commit';
commit;


strSqlCommand   := 'update NEW_MAX_SCN on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Merging',
       NEW_MAX_SCN = (select /*+ full(S) */ max(ORA_ROWSCN) from SYSADM.PS_PRSPCT_RECRTER@SASOURCE S)
 where TABLE_NAME = 'PS_PRSPCT_RECRTER'
;

strSqlCommand := 'commit';
commit;


strMessage01    := 'Merging data into CSSTG_OWNER.PS_PRSPCT_RECRTER';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'merge into CSSTG_OWNER.PS_PRSPCT_RECRTER';
merge /*+ use_hash(S,T) */ into CSSTG_OWNER.PS_PRSPCT_RECRTER T 
using (select /*+ full(S) */
    nvl(trim(EMPLID),'-') EMPLID, 
    nvl(trim(ACAD_CAREER),'-') ACAD_CAREER, 
    nvl(trim(INSTITUTION),'-') INSTITUTION, 
    nvl(trim(RECRUITMENT_CAT),'-') RECRUITMENT_CAT, 
    nvl(trim(RECRUITER_ID),'-') RECRUITER_ID, 
    nvl(trim(PROMPT_RECRUITER),'-') PROMPT_RECRUITER, 
    nvl(trim(PROMPT_REGN_CATG),'-') PROMPT_REGN_CATG, 
    nvl(trim(PRIMARY_FLAG),'-') PRIMARY_FLAG
from SYSADM.PS_PRSPCT_RECRTER@SASOURCE S
where ORA_ROWSCN > (select OLD_MAX_SCN from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_PRSPCT_RECRTER')
  and EMPLID between '00000000' and '99999999'
  and length(EMPLID) = 8 ) S 
 on ( 
    T.EMPLID = S.EMPLID and 
    T.ACAD_CAREER = S.ACAD_CAREER and 
    T.INSTITUTION = S.INSTITUTION and 
    T.RECRUITMENT_CAT = S.RECRUITMENT_CAT and 
    T.RECRUITER_ID = S.RECRUITER_ID and 
    T.SRC_SYS_ID = 'CS90')
when matched then update set
    T.PROMPT_RECRUITER = S.PROMPT_RECRUITER,
    T.PROMPT_REGN_CATG = S.PROMPT_REGN_CATG,
    T.PRIMARY_FLAG = S.PRIMARY_FLAG,
    T.DATA_ORIGIN = 'S',
    T.LASTUPD_EW_DTTM = sysdate,
    T.BATCH_SID = 1234
where 
    T.PROMPT_RECRUITER <> S.PROMPT_RECRUITER or 
    T.PROMPT_REGN_CATG <> S.PROMPT_REGN_CATG or 
    T.PRIMARY_FLAG <> S.PRIMARY_FLAG or 
    T.DATA_ORIGIN = 'D' 
when not matched then 
insert (
    T.EMPLID, 
    T.ACAD_CAREER,
    T.INSTITUTION,
    T.RECRUITMENT_CAT,
    T.RECRUITER_ID, 
    T.SRC_SYS_ID, 
    T.PROMPT_RECRUITER, 
    T.PROMPT_REGN_CATG, 
    T.PRIMARY_FLAG, 
    T.LOAD_ERROR, 
    T.DATA_ORIGIN,
    T.CREATED_EW_DTTM,
    T.LASTUPD_EW_DTTM,
    T.BATCH_SID
    ) 
values (
    S.EMPLID, 
    S.ACAD_CAREER,
    S.INSTITUTION,
    S.RECRUITMENT_CAT,
    S.RECRUITER_ID, 
    'CS90', 
    S.PROMPT_RECRUITER, 
    S.PROMPT_REGN_CATG, 
    S.PRIMARY_FLAG, 
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

strMessage01    := '# of PS_PRSPCT_RECRTER rows merged: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_PRSPCT_RECRTER',
                i_Action            => 'MERGE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update TABLE_STATUS on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Deleting',
       OLD_MAX_SCN = NEW_MAX_SCN
 where TABLE_NAME = 'PS_PRSPCT_RECRTER';

strSqlCommand := 'commit';
commit;


strMessage01    := 'Updating DATA_ORIGIN on CSSTG_OWNER.PS_PRSPCT_RECRTER';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update DATA_ORIGIN on CSSTG_OWNER.PS_PRSPCT_RECRTER';
update CSSTG_OWNER.PS_PRSPCT_RECRTER T
   set T.DATA_ORIGIN = 'D',
       T.LASTUPD_EW_DTTM = SYSDATE
 where T.DATA_ORIGIN <> 'D'
   and exists 
(select 1 from
(select EMPLID, ACAD_CAREER, INSTITUTION, RECRUITMENT_CAT, RECRUITER_ID
   from CSSTG_OWNER.PS_PRSPCT_RECRTER T2
  where (select DELETE_FLG from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_PRSPCT_RECRTER') = 'Y'
  minus
 select EMPLID, ACAD_CAREER, INSTITUTION, RECRUITMENT_CAT, RECRUITER_ID
   from SYSADM.PS_PRSPCT_RECRTER@SASOURCE
  where (select DELETE_FLG from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_PRSPCT_RECRTER') = 'Y' 
   ) S
 where T.EMPLID = S.EMPLID
   and T.ACAD_CAREER = S.ACAD_CAREER
   and T.INSTITUTION = S.INSTITUTION
   and T.RECRUITMENT_CAT = S.RECRUITMENT_CAT
   and T.RECRUITER_ID = S.RECRUITER_ID
   and T.SRC_SYS_ID = 'CS90'    
   ) 
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_PRSPCT_RECRTER rows updated: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_PRSPCT_RECRTER',
                i_Action            => 'UPDATE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update END_DT on CSSTG_OWNER.UM_STAGE_JOBS';

update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Complete',
       END_DT = SYSDATE
 where TABLE_NAME = 'PS_PRSPCT_RECRTER'
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

END PS_PRSPCT_RECRTER_P;
/
