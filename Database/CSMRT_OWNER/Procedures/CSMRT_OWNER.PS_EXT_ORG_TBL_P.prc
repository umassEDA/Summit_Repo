DROP PROCEDURE CSMRT_OWNER.PS_EXT_ORG_TBL_P
/

--
-- PS_EXT_ORG_TBL_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."PS_EXT_ORG_TBL_P" AUTHID CURRENT_USER IS


------------------------------------------------------------------------
-- George Adams
--
-- Loads stage table PS_EXT_ORG_TBL from PeopleSoft table PS_EXT_ORG_TBL.
--
 --V01  SMT-xxxx 10/03/2017,    James Doucette
--                              Converted from DataStage
--
------------------------------------------------------------------------

        strMartId                       Varchar2(50)    := 'CSW';
        strProcessName                  Varchar2(100)   := 'PS_EXT_ORG_TBL';
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
 where TABLE_NAME = 'PS_EXT_ORG_TBL'
;

strSqlCommand := 'commit';
commit;


strSqlCommand   := 'update NEW_MAX_SCN on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Merging',
       NEW_MAX_SCN = (select /*+ full(S) */ max(ORA_ROWSCN) from SYSADM.PS_EXT_ORG_TBL@SASOURCE S)
 where TABLE_NAME = 'PS_EXT_ORG_TBL'
;

strSqlCommand := 'commit';
commit;


strMessage01    := 'Merging data into CSSTG_OWNER.PS_EXT_ORG_TBL';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'merge into CSSTG_OWNER.PS_EXT_ORG_TBL';
merge /*+ use_hash(S,T) */ into CSSTG_OWNER.PS_EXT_ORG_TBL T
using (select /*+ full(S) */
    nvl(trim(EXT_ORG_ID),'-') EXT_ORG_ID, 
    NVL(EFFDT, to_date(to_char('01/01/1900'), 'MM/DD/YYYY' )) EFFDT, 
    nvl(trim(EFF_STATUS),'-') EFF_STATUS, 
    nvl(trim(OTH_NAME_SORT_SRCH),'-') OTH_NAME_SORT_SRCH, 
    nvl(trim(EXT_ORG_TYPE),'-') EXT_ORG_TYPE, 
    replace(nvl(trim(DESCR),'-'), '  ', ' ') DESCR, 
    replace(nvl(trim(DESCR50),'-'), '  ', ' ') DESCR50, 
    replace(nvl(trim(DESCRSHORT),'-'), '  ', ' ') DESCRSHORT, 
    nvl(ORG_CONTACT,0) ORG_CONTACT, 
    nvl(ORG_LOCATION,0) ORG_LOCATION, 
    nvl(ORG_DEPARTMENT,0) ORG_DEPARTMENT, 
    nvl(trim(PROPRIETORSHIP),'-') PROPRIETORSHIP, 
    nvl(trim(SETID),'-') SETID, 
    nvl(trim(VENDOR_ID),'-') VENDOR_ID, 
    nvl(trim(TAXPAYER_ID_NO),'-') TAXPAYER_ID_NO, 
    LASTUPDDTTM, 
    nvl(trim(LASTUPDOPRID),'-') LASTUPDOPRID
from SYSADM.PS_EXT_ORG_TBL@SASOURCE S 
where ORA_ROWSCN > (select OLD_MAX_SCN from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_EXT_ORG_TBL') ) S
 on ( 
    T.EXT_ORG_ID = S.EXT_ORG_ID and 
    T.EFFDT = S.EFFDT and 
    T.SRC_SYS_ID = 'CS90')
when matched then update set
    T.EFF_STATUS = S.EFF_STATUS,
    T.OTH_NAME_SORT_SRCH = S.OTH_NAME_SORT_SRCH,
    T.EXT_ORG_TYPE = S.EXT_ORG_TYPE,
    T.DESCR = S.DESCR,
    T.DESCR50 = S.DESCR50,
    T.DESCRSHORT = S.DESCRSHORT,
    T.ORG_CONTACT = S.ORG_CONTACT,
    T.ORG_LOCATION = S.ORG_LOCATION,
    T.ORG_DEPARTMENT = S.ORG_DEPARTMENT,
    T.PROPRIETORSHIP = S.PROPRIETORSHIP,
    T.SETID = S.SETID,
    T.VENDOR_ID = S.VENDOR_ID,
    T.TAXPAYER_ID_NO = S.TAXPAYER_ID_NO,
    T.LASTUPDDTTM = S.LASTUPDDTTM,
    T.LASTUPDOPRID = S.LASTUPDOPRID,
    T.DATA_ORIGIN = 'S',
    T.LASTUPD_EW_DTTM = sysdate,
    T.BATCH_SID = 1234
where 
    T.EFF_STATUS <> S.EFF_STATUS or 
    T.OTH_NAME_SORT_SRCH <> S.OTH_NAME_SORT_SRCH or 
    T.EXT_ORG_TYPE <> S.EXT_ORG_TYPE or 
    T.DESCR <> S.DESCR or 
    T.DESCR50 <> S.DESCR50 or 
    T.DESCRSHORT <> S.DESCRSHORT or 
    T.ORG_CONTACT <> S.ORG_CONTACT or 
    T.ORG_LOCATION <> S.ORG_LOCATION or 
    T.ORG_DEPARTMENT <> S.ORG_DEPARTMENT or 
    T.PROPRIETORSHIP <> S.PROPRIETORSHIP or 
    T.SETID <> S.SETID or 
    T.VENDOR_ID <> S.VENDOR_ID or 
    T.TAXPAYER_ID_NO <> S.TAXPAYER_ID_NO or 
    nvl(trim(T.LASTUPDDTTM),0) <> nvl(trim(S.LASTUPDDTTM),0) or 
    T.LASTUPDOPRID <> S.LASTUPDOPRID or 
    T.DATA_ORIGIN = 'D' 
when not matched then 
insert (
    T.EXT_ORG_ID, 
    T.EFFDT,
    T.SRC_SYS_ID, 
    T.EFF_STATUS, 
    T.OTH_NAME_SORT_SRCH, 
    T.EXT_ORG_TYPE, 
    T.DESCR,
    T.DESCR50,
    T.DESCRSHORT, 
    T.ORG_CONTACT,
    T.ORG_LOCATION, 
    T.ORG_DEPARTMENT, 
    T.PROPRIETORSHIP, 
    T.SETID,
    T.VENDOR_ID,
    T.TAXPAYER_ID_NO, 
    T.LASTUPDDTTM,
    T.LASTUPDOPRID, 
    T.LOAD_ERROR, 
    T.DATA_ORIGIN,
    T.CREATED_EW_DTTM,
    T.LASTUPD_EW_DTTM,
    T.BATCH_SID
    ) 
values (
    S.EXT_ORG_ID, 
    S.EFFDT,
    'CS90', 
    S.EFF_STATUS, 
    S.OTH_NAME_SORT_SRCH, 
    S.EXT_ORG_TYPE, 
    S.DESCR,
    S.DESCR50,
    S.DESCRSHORT, 
    S.ORG_CONTACT,
    S.ORG_LOCATION, 
    S.ORG_DEPARTMENT, 
    S.PROPRIETORSHIP, 
    S.SETID,
    S.VENDOR_ID,
    S.TAXPAYER_ID_NO, 
    S.LASTUPDDTTM,
    S.LASTUPDOPRID, 
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

strMessage01    := '# of PS_EXT_ORG_TBL rows merged: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_EXT_ORG_TBL',
                i_Action            => 'MERGE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update TABLE_STATUS on CSSTG_OWNER.UM_STAGE_JOBS';
update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Deleting',
       OLD_MAX_SCN = NEW_MAX_SCN
 where TABLE_NAME = 'PS_EXT_ORG_TBL';

strSqlCommand := 'commit';
commit;


strMessage01    := 'Updating DATA_ORIGIN on CSSTG_OWNER.PS_EXT_ORG_TBL';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update DATA_ORIGIN on CSSTG_OWNER.PS_EXT_ORG_TBL';
update CSSTG_OWNER.PS_EXT_ORG_TBL T
   set T.DATA_ORIGIN = 'D',
       T.LASTUPD_EW_DTTM = SYSDATE
 where T.DATA_ORIGIN <> 'D'
   and exists 
(select 1 from
(select EXT_ORG_ID, EFFDT
   from CSSTG_OWNER.PS_EXT_ORG_TBL T2
  where (select DELETE_FLG from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_EXT_ORG_TBL') = 'Y'
  minus
 select EXT_ORG_ID, EFFDT
   from SYSADM.PS_EXT_ORG_TBL@SASOURCE
  where (select DELETE_FLG from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_EXT_ORG_TBL') = 'Y' 
   ) S
 where T.EXT_ORG_ID = S.EXT_ORG_ID
   AND T.EFFDT = S.EFFDT
   and T.SRC_SYS_ID = 'CS90' 
   ) 
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_EXT_ORG_TBL rows updated: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_EXT_ORG_TBL',
                i_Action            => 'UPDATE',
                i_RowCount          => intRowCount
        );


strMessage01    := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update END_DT on CSSTG_OWNER.UM_STAGE_JOBS';

update CSSTG_OWNER.UM_STAGE_JOBS
   set TABLE_STATUS = 'Complete',
       END_DT = SYSDATE
 where TABLE_NAME = 'PS_EXT_ORG_TBL'
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

END PS_EXT_ORG_TBL_P;
/
