DROP PROCEDURE CSMRT_OWNER.PS_D_EXT_SUMM_TYP_P
/

--
-- PS_D_EXT_SUMM_TYP_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."PS_D_EXT_SUMM_TYP_P" AUTHID CURRENT_USER IS

------------------------------------------------------------------------
-- George Adams
--
-- Loads stage table PS_D_EXT_SUMM_TYP from PeopleSoft table PS_D_EXT_SUMM_TYP.
--
 --V01  SMT-xxxx 11/03/2017,    James Doucette
--                              Converted from DataStage
--V02 2/12/2021              -- Srikanth,Pabbu made changes to EXT_SUMM_TYPE_SID field
------------------------------------------------------------------------

        strMartId                       Varchar2(50)    := 'CSW';
        strProcessName                  Varchar2(100)   := 'PS_D_EXT_SUMM_TYP';
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

strMessage01    := 'Merging data into CSMRT_OWNER.PS_D_EXT_SUMM_TYP';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'merge into CSMRT_OWNER.PS_D_EXT_SUMM_TYP';
merge /*+ use_hash(S,T) */ into CSMRT_OWNER.PS_D_EXT_SUMM_TYP T                                                                                                                                                                                             
using (                                                                                                                                                                                                                                                         
  with Q1 as (  
select EXT_SUMM_TYPE EXT_SUMM_TYPE_ID, SRC_SYS_ID, EFFDT, EFF_STATUS EFF_STAT_CD, 
       DESCRSHORT EXT_SUMM_TYPE_SD, DESCR EXT_SUMM_TYPE_LD,  
       DATA_ORIGIN,  
       row_number() over (partition by EXT_SUMM_TYPE, SRC_SYS_ID
                              order by DATA_ORIGIN desc, (case when EFFDT > trunc(SYSDATE) then to_date('01-JAN-1800') else EFFDT end) desc) Q_ORDER
  from CSSTG_OWNER.PS_EXT_SUMM_TP_TBL),
       S as (
select EXT_SUMM_TYPE_ID, SRC_SYS_ID, EFFDT, EFF_STAT_CD, 
       EXT_SUMM_TYPE_SD, EXT_SUMM_TYPE_LD,  
       DATA_ORIGIN  
  from Q1
 where Q1.Q_ORDER = 1)                                                                                                                                                                                             
select nvl(D.EXT_SUMM_TYPE_SID, --max(D.EXT_SUMM_TYPE_SID) over (partition by 1) + This code does not ignore SID 2147483646 and below line will fix the issue and is added on 2/12/2021  
(select nvl(max(EXT_SUMM_TYPE_SID),0) from CSMRT_OWNER.PS_D_EXT_SUMM_TYP where EXT_SUMM_TYPE_SID <> 2147483646) +                                                                                                                                                                             
       row_number() over (partition by 1 order by D.EXT_SUMM_TYPE_SID nulls first)) EXT_SUMM_TYPE_SID,                                                                                                                                                          
       nvl(D.EXT_SUMM_TYPE_ID, S.EXT_SUMM_TYPE_ID) EXT_SUMM_TYPE_ID,                                                                                                                                                                                            
       nvl(D.SRC_SYS_ID, S.SRC_SYS_ID) SRC_SYS_ID,                                                                                                                                                                                                              
       decode(D.EFFDT, S.EFFDT, D.EFFDT, S.EFFDT) EFFDT,                                                                                                                                                                                                        
       decode(D.EFF_STAT_CD, S.EFF_STAT_CD, D.EFF_STAT_CD, S.EFF_STAT_CD) EFF_STAT_CD,                                                                                                                                                                          
       decode(D.EXT_SUMM_TYPE_SD, S.EXT_SUMM_TYPE_SD, D.EXT_SUMM_TYPE_SD, S.EXT_SUMM_TYPE_SD) EXT_SUMM_TYPE_SD,                                                                                                                                                 
       decode(D.EXT_SUMM_TYPE_LD, S.EXT_SUMM_TYPE_LD, D.EXT_SUMM_TYPE_LD, S.EXT_SUMM_TYPE_LD) EXT_SUMM_TYPE_LD,                                                                                                                                                 
       decode(D.DATA_ORIGIN, S.DATA_ORIGIN, D.DATA_ORIGIN, S.DATA_ORIGIN) DATA_ORIGIN,                                                                                                                                                                          
       nvl(D.CREATED_EW_DTTM, SYSDATE) CREATED_EW_DTTM,                                                                                                                                                                                                         
       nvl(D.LASTUPD_EW_DTTM, SYSDATE) LASTUPD_EW_DTTM                                                                                                                                                                                                          
  from S                                                                                                                                                                                                                                                        
  left outer join CSMRT_OWNER.PS_D_EXT_SUMM_TYP D                                                                                                                                                                                                           
    on D.EXT_SUMM_TYPE_SID <> 2147483646                                                                                                                                                                                                                        
   and D.EXT_SUMM_TYPE_ID = S.EXT_SUMM_TYPE_ID                                                                                                                                                                                                                  
   and D.SRC_SYS_ID = S.SRC_SYS_ID                                                                                                                                                                                                                              
) S                                                                                                                                                                                                                                                             
    on  (T.EXT_SUMM_TYPE_ID = S.EXT_SUMM_TYPE_ID                                                                                                                                                                                                                
   and  T.SRC_SYS_ID = S.SRC_SYS_ID)                                                                                                                                                                                                                            
 when matched then update set                                                                                                                                                                                                                                   
       T.EFFDT = S.EFFDT,                                                                                                                                                                                                                                       
       T.EFF_STAT_CD = S.EFF_STAT_CD,                                                                                                                                                                                                                           
       T.EXT_SUMM_TYPE_SD = S.EXT_SUMM_TYPE_SD,                                                                                                                                                                                                                 
       T.EXT_SUMM_TYPE_LD = S.EXT_SUMM_TYPE_LD,                                                                                                                                                                                                                 
       T.DATA_ORIGIN = S.DATA_ORIGIN,                                                                                                                                                                                                                           
       T.LASTUPD_EW_DTTM = SYSDATE                                                                                                                                                                                                                              
 where                                                                                                                                                                                                                                                          
       decode(T.EFFDT,S.EFFDT,0,1) = 1 or                                                                                                                                                                                                                       
       decode(T.EFF_STAT_CD,S.EFF_STAT_CD,0,1) = 1 or                                                                                                                                                                                                           
       decode(T.EXT_SUMM_TYPE_SD,S.EXT_SUMM_TYPE_SD,0,1) = 1 or                                                                                                                                                                                                 
       decode(T.EXT_SUMM_TYPE_LD,S.EXT_SUMM_TYPE_LD,0,1) = 1 or                                                                                                                                                                                                 
       decode(T.DATA_ORIGIN,S.DATA_ORIGIN,0,1) = 1                                                                                                                                                                                                              
  when not matched then                                                                                                                                                                                                                                         
insert (                                                                                                                                                                                                                                                        
       T.EXT_SUMM_TYPE_SID,                                                                                                                                                                                                                                     
       T.EXT_SUMM_TYPE_ID,                                                                                                                                                                                                                                      
       T.SRC_SYS_ID,                                                                                                                                                                                                                                            
       T.EFFDT,                                                                                                                                                                                                                                                 
       T.EFF_STAT_CD,                                                                                                                                                                                                                                           
       T.EXT_SUMM_TYPE_SD,                                                                                                                                                                                                                                      
       T.EXT_SUMM_TYPE_LD,                                                                                                                                                                                                                                      
       T.DATA_ORIGIN,                                                                                                                                                                                                                                           
       T.CREATED_EW_DTTM,                                                                                                                                                                                                                                       
       T.LASTUPD_EW_DTTM)                                                                                                                                                                                                                                       
values (                                                                                                                                                                                                                                                        
       S.EXT_SUMM_TYPE_SID,                                                                                                                                                                                                                                     
       S.EXT_SUMM_TYPE_ID,                                                                                                                                                                                                                                      
       S.SRC_SYS_ID,                                                                                                                                                                                                                                            
       S.EFFDT,                                                                                                                                                                                                                                                 
       S.EFF_STAT_CD,                                                                                                                                                                                                                                           
       S.EXT_SUMM_TYPE_SD,                                                                                                                                                                                                                                      
       S.EXT_SUMM_TYPE_LD,                                                                                                                                                                                                                                      
       S.DATA_ORIGIN,                                                                                                                                                                                                                                           
       SYSDATE,                                                                                                                                                                                                                                                 
       SYSDATE)
;                                                                                                                                                                                                                                                       

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_D_EXT_SUMM_TYP rows merged: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_D_EXT_SUMM_TYP',
                i_Action            => 'MERGE',
                i_RowCount          => intRowCount
        );

strMessage01    := 'Updating DATA_ORIGIN on CSMRT_OWNER.PS_D_EXT_SUMM_TYP';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update DATA_ORIGIN on CSMRT_OWNER.PS_D_EXT_SUMM_TYP';
update CSMRT_OWNER.PS_D_EXT_SUMM_TYP T
   set DATA_ORIGIN = 'D',
       LASTUPD_EW_DTTM = SYSDATE
 where DATA_ORIGIN <> 'D'
   and T.EXT_SUMM_TYPE_SID < 2147483646
   and not exists (select 1
                     from CSSTG_OWNER.PS_EXT_SUMM_TP_TBL S
                    where T.EXT_SUMM_TYPE_ID = S.EXT_SUMM_TYPE
                      and T.SRC_SYS_ID = S.SRC_SYS_ID
                      and S.DATA_ORIGIN <> 'D')
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of PS_D_EXT_SUMM_TYP rows updated: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'PS_D_EXT_SUMM_TYP',
                i_Action            => 'UPDATE',
                i_RowCount          => intRowCount
        );

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

END PS_D_EXT_SUMM_TYP_P;
/
