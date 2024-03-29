DROP PROCEDURE CSMRT_OWNER.UM_D_PRSPCT_SBPLAN_P
/

--
-- UM_D_PRSPCT_SBPLAN_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."UM_D_PRSPCT_SBPLAN_P" AUTHID CURRENT_USER IS

------------------------------------------------------------------------
-- James Doucett
--
-- Loads stage table UM_D_PRSPCT_SBPLAN from stage table PS_ADM_PRSPCT_SBPL.
--
-- V01  SMT-xxxx 2/14/2019,    James Doucette
--                             Converted from DataStage
--
------------------------------------------------------------------------

        strMartId                       Varchar2(50)    := 'CSW';
        strProcessName                  Varchar2(100)   := 'UM_D_PRSPCT_SBPLAN';
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

strMessage01    := 'Merging data into CSMRT_OWNER.UM_D_PRSPCT_SBPLAN';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'merge into CSMRT_OWNER.UM_D_PRSPCT_SBPLAN';
merge /*+ use_hash(S,T) */ into CSMRT_OWNER.UM_D_PRSPCT_SBPLAN T 
using (                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
  with Q1 as (  
SELECT EMPLID, ACAD_CAREER, INSTITUTION, ACAD_PROG, ACAD_PLAN, ACAD_SUB_PLAN, SRC_SYS_ID,
       DATA_ORIGIN
  FROM CSSTG_OWNER.PS_ADM_PRSPCT_SBPL 
),
       S as (
select Q1.INSTITUTION INSTITUTION_CD, 
       Q1.ACAD_CAREER ACAD_CAR_CD, 
       Q1.EMPLID, 
       Q1.ACAD_PROG ACAD_PROG_CD, 
       Q1.ACAD_PLAN ACAD_PLAN_CD, 
       Q1.ACAD_SUB_PLAN ACAD_SUB_PLAN_CD, 
       Q1.SRC_SYS_ID, 
       nvl(PP.PRSPCT_PLAN_SID,2147483646) PRSPCT_PLAN_SID, 
       nvl(ASP.ACAD_SPLAN_SID,2147483646) ACAD_SPLAN_SID, 
       Q1.DATA_ORIGIN
  from Q1
  left outer join UM_D_PRSPCT_PLAN PP 
    on Q1.INSTITUTION = PP.INSTITUTION_CD   
   and Q1.ACAD_CAREER = PP.ACAD_CAR_CD
   and Q1.EMPLID = PP.EMPLID
   and Q1.ACAD_PROG = PP.ACAD_PROG_CD
   and Q1.ACAD_PLAN = PP.ACAD_PLAN_CD
   and Q1.SRC_SYS_ID = PP.SRC_SYS_ID
   and PP.DATA_ORIGIN <> 'D'
  left outer join UM_D_ACAD_SPLAN ASP 
    on Q1.INSTITUTION = ASP.INSTITUTION_CD
   and Q1.ACAD_PLAN = ASP.ACAD_PLAN_CD
   and Q1.ACAD_SUB_PLAN = ASP.ACAD_SPLAN_CD
   and Q1.SRC_SYS_ID = ASP.SRC_SYS_ID
   and ASP.EFFDT_ORDER = 1
   and ASP.DATA_ORIGIN <> 'D'
)
--select nvl(D.PRSPCT_SPLAN_SID, max(D.PRSPCT_SPLAN_SID) over (partition by 1) +                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
--       row_number() over (partition by 1 order by D.PRSPCT_SPLAN_SID nulls first)) PRSPCT_SPLAN_SID, 
select nvl(D.PRSPCT_SPLAN_SID, 
          (select nvl(max(PRSPCT_SPLAN_SID),0) from CSMRT_OWNER.UM_D_PRSPCT_SBPLAN where PRSPCT_SPLAN_SID < 2147483646) + 
                  row_number() over (partition by 1 order by D.PRSPCT_SPLAN_SID nulls first)) PRSPCT_SPLAN_SID,         -- Mar 2020 
       nvl(D.INSTITUTION_CD, S.INSTITUTION_CD) INSTITUTION_CD,
       nvl(D.ACAD_CAR_CD, S.ACAD_CAR_CD) ACAD_CAR_CD,
       nvl(D.EMPLID, S.EMPLID) EMPLID,
       nvl(D.ACAD_PROG_CD, S.ACAD_PROG_CD) ACAD_PROG_CD,
       nvl(D.ACAD_PLAN_CD, S.ACAD_PLAN_CD) ACAD_PLAN_CD, 
       nvl(D.ACAD_SUB_PLAN_CD, S.ACAD_SUB_PLAN_CD) ACAD_SUB_PLAN_CD, 
       nvl(D.SRC_SYS_ID, S.SRC_SYS_ID) SRC_SYS_ID, 
       decode(D.PRSPCT_PLAN_SID, S.PRSPCT_PLAN_SID, D.PRSPCT_PLAN_SID, S.PRSPCT_PLAN_SID) PRSPCT_PLAN_SID, 
       decode(D.ACAD_SPLAN_SID, S.ACAD_SPLAN_SID, D.ACAD_SPLAN_SID, S.ACAD_SPLAN_SID) ACAD_SPLAN_SID, 
       decode(D.DATA_ORIGIN, S.DATA_ORIGIN, D.DATA_ORIGIN, S.DATA_ORIGIN) DATA_ORIGIN, 
       nvl(D.CREATED_EW_DTTM, SYSDATE) CREATED_EW_DTTM,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
       nvl(D.LASTUPD_EW_DTTM, SYSDATE) LASTUPD_EW_DTTM 
  from S
left outer join CSMRT_OWNER.UM_D_PRSPCT_SBPLAN D
   on D.PRSPCT_SPLAN_SID <> 2147483646
  and D.INSTITUTION_CD = S.INSTITUTION_CD
  and D.ACAD_CAR_CD = S.ACAD_CAR_CD 
  and D.EMPLID = S.EMPLID
  and D.ACAD_PROG_CD = S.ACAD_PROG_CD
  and D.ACAD_PLAN_CD = S.ACAD_PLAN_CD
  and D.ACAD_SUB_PLAN_CD = S.ACAD_SUB_PLAN_CD
  and D.SRC_SYS_ID = S.SRC_SYS_ID                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
) S                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
   on (T.INSTITUTION_CD = S.INSTITUTION_CD
  and T.ACAD_CAR_CD = S.ACAD_CAR_CD 
  and T.EMPLID = S.EMPLID
  and T.ACAD_PROG_CD = S.ACAD_PROG_CD
  and T.ACAD_PLAN_CD = S.ACAD_PLAN_CD
  and T.ACAD_SUB_PLAN_CD = S.ACAD_SUB_PLAN_CD
  and T.SRC_SYS_ID = S.SRC_SYS_ID )                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
 when matched then update set                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
       T.PRSPCT_PLAN_SID = S.PRSPCT_PLAN_SID,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
       T.ACAD_SPLAN_SID = S.ACAD_SPLAN_SID,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
       T.DATA_ORIGIN = S.DATA_ORIGIN,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
       T.LASTUPD_EW_DTTM = SYSDATE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
 where                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
       decode(T.PRSPCT_PLAN_SID,S.PRSPCT_PLAN_SID,0,1) = 1 or                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
       decode(T.ACAD_SPLAN_SID,S.ACAD_SPLAN_SID,0,1) = 1 or                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
	   decode(T.DATA_ORIGIN,S.DATA_ORIGIN,0,1) = 1
  when not matched then                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
insert (                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
       T.PRSPCT_SPLAN_SID,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
       T.INSTITUTION_CD,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
       T.ACAD_CAR_CD,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
       T.EMPLID,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
       T.ACAD_PROG_CD,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
       T.ACAD_PLAN_CD,
	   T.ACAD_SUB_PLAN_CD,
	   T.SRC_SYS_ID,
	   T.PRSPCT_PLAN_SID,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
       T.ACAD_SPLAN_SID,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
       T.LOAD_ERROR,
       T.DATA_ORIGIN, 
       T.CREATED_EW_DTTM, 
       T.LASTUPD_EW_DTTM, 
       T.BATCH_SID	   
	   )                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
values (                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
       S.PRSPCT_SPLAN_SID,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
       S.INSTITUTION_CD,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
       S.ACAD_CAR_CD,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
       S.EMPLID,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
       S.ACAD_PROG_CD,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
       S.ACAD_PLAN_CD,
	   S.ACAD_SUB_PLAN_CD,
	   S.SRC_SYS_ID,
	   S.PRSPCT_PLAN_SID,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
       S.ACAD_SPLAN_SID,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
       'N',	   
       S.DATA_ORIGIN,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
       SYSDATE,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
       SYSDATE,
	   '1234')
;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of UM_D_PRSPCT_SBPLAN rows merged: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'UM_D_PRSPCT_SBPLAN',
                i_Action            => 'MERGE',
                i_RowCount          => intRowCount
        );

strMessage01    := 'Updating DATA_ORIGIN on CSMRT_OWNER.UM_D_PRSPCT_SBPLAN';
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand   := 'update DATA_ORIGIN on CSMRT_OWNER.UM_D_PRSPCT_SBPLAN';
update CSMRT_OWNER.UM_D_PRSPCT_SBPLAN T
   set DATA_ORIGIN = 'D',
       LASTUPD_EW_DTTM = SYSDATE
 where DATA_ORIGIN <> 'D'
   and T.PRSPCT_SPLAN_SID <> 2147483646
   and not exists (select 1
                     from CSSTG_OWNER.PS_ADM_PRSPCT_SBPL S  
                    where T.INSTITUTION_CD = S.INSTITUTION
                      and T.ACAD_CAR_CD = S.ACAD_CAREER
					  and T.EMPLID = S.EMPLID
					  and T.ACAD_PROG_CD = S.ACAD_PROG
					  and T.ACAD_PLAN_CD = S.ACAD_PLAN
					  and T.ACAD_SUB_PLAN_CD = S.ACAD_SUB_PLAN
                      and T.SRC_SYS_ID = S.SRC_SYS_ID
                      and S.DATA_ORIGIN <> 'D')
;

strSqlCommand   := 'SET intRowCount';
intRowCount     := SQL%ROWCOUNT;

strSqlCommand := 'commit';
commit;

strMessage01    := '# of UM_D_PRSPCT_PROG rows updated: ' || TO_CHAR(intRowCount,'999,999,999,999');
COMMON_OWNER.SMT_LOG.PUT_MESSAGE(i_Message => strMessage01);

strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL
        (
                i_TargetTableName   => 'UM_D_PRSPCT_SBPLAN',
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

END UM_D_PRSPCT_SBPLAN_P;
/
