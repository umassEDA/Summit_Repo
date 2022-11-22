DROP PROCEDURE CSMRT_OWNER.AM_PS_INSTRUCTOR_TERM_P
/

--
-- AM_PS_INSTRUCTOR_TERM_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."AM_PS_INSTRUCTOR_TERM_P" IS

   ------------------------------------------------------------------------
   -- George Adams
   --
   -- Loads stage table PS_INSTRUCTOR_TERM from PeopleSoft table PS_INSTRUCTOR_TERM.
   --
   -- V01  SMT-xxxx 07/10/2017,    Preethi Lodha
   --                              Converted from PS_INSTRUCTOR_TERM.sql
   --VXX    07/06/2021,            Kieu ,Srikanth - Added EMPLID or COMMON_ID additional filter logic 
   ------------------------------------------------------------------------

   strMartId          VARCHAR2 (50) := 'CSW';
   strProcessName     VARCHAR2 (100) := 'PS_INSTRUCTOR_TERM';
   intProcessSid      INTEGER;
   dtProcessStart     DATE := SYSDATE;
   strMessage01       VARCHAR2 (4000);
   strMessage02       VARCHAR2 (512);
   strMessage03       VARCHAR2 (512) := '';
   strNewLine         VARCHAR2 (2) := CHR (13) || CHR (10);
   strSqlCommand      VARCHAR2 (32767) := '';
   strSqlDynamic      VARCHAR2 (32767) := '';
   strClientInfo      VARCHAR2 (100);
   intRowCount        INTEGER;
   intTotalRowCount   INTEGER := 0;
   numSqlCode         NUMBER;
   strSqlErrm         VARCHAR2 (4000);
   intTries           INTEGER;
BEGIN
   strSqlCommand := 'DBMS_APPLICATION_INFO.SET_CLIENT_INFO';
   DBMS_APPLICATION_INFO.SET_CLIENT_INFO (strProcessName);

   strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_INIT';
   COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_INIT (
      i_MartId             => strMartId,
      i_ProcessName        => strProcessName,
      i_ProcessStartTime   => dtProcessStart,
      o_ProcessSid         => intProcessSid);

   strMessage01 := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);


   strSqlCommand := 'update START_DT on AMSTG_OWNER.UM_STAGE_JOBS';

   UPDATE AMSTG_OWNER.UM_STAGE_JOBS
      SET TABLE_STATUS = 'Reading', START_DT = SYSDATE, END_DT = NULL
    WHERE TABLE_NAME = 'PS_INSTRUCTOR_TERM';

   strSqlCommand := 'commit';
   COMMIT;


   strSqlCommand := 'update NEW_MAX_SCN on AMSTG_OWNER.UM_STAGE_JOBS';

   UPDATE AMSTG_OWNER.UM_STAGE_JOBS
      SET TABLE_STATUS = 'Merging',
          NEW_MAX_SCN =
             (SELECT /*+ full(S) */
                    MAX (ORA_ROWSCN)
                FROM SYSADM.PS_INSTRUCTOR_TERM@AMSOURCE S)
    WHERE TABLE_NAME = 'PS_INSTRUCTOR_TERM';

   strSqlCommand := 'commit';
   COMMIT;


   strMessage01 := 'Merging data into AMSTG_OWNER.PS_INSTRUCTOR_TERM';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'merge into AMSTG_OWNER.PS_INSTRUCTOR_TERM';
merge /*+ use_hash(S,T) */ into AMSTG_OWNER.PS_INSTRUCTOR_TERM T
using (select /*+ full(S) */
nvl(trim(EMPLID),'-') EMPLID,
nvl(trim(INSTITUTION),'-') INSTITUTION,
nvl(trim(STRM),'-') STRM,
nvl(trim(INSTRUCTOR_CLASS),'-') INSTRUCTOR_CLASS,
nvl(trim(LOAD_CALC_APPLY),'-') LOAD_CALC_APPLY,
nvl(trim(WORKLD_LIMIT_APPLY),'-') WORKLD_LIMIT_APPLY,
nvl(ASSIGNED_FTE_PCT,0) ASSIGNED_FTE_PCT,
nvl(INSTR_MULTIPLIER,0) INSTR_MULTIPLIER
from SYSADM.PS_INSTRUCTOR_TERM@AMSOURCE S
where ORA_ROWSCN > (select OLD_MAX_SCN from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_INSTRUCTOR_TERM') 
AND LENGTH(EMPLID) = 8 AND EMPLID BETWEEN '00000000' AND '99999999') S
   on (
T.EMPLID = S.EMPLID and
T.INSTITUTION = S.INSTITUTION and
T.STRM = S.STRM and
T.SRC_SYS_ID = 'CS90')
when matched then update set
T.INSTRUCTOR_CLASS = S.INSTRUCTOR_CLASS,
T.LOAD_CALC_APPLY = S.LOAD_CALC_APPLY,
T.WORKLD_LIMIT_APPLY = S.WORKLD_LIMIT_APPLY,
T.ASSIGNED_FTE_PCT = S.ASSIGNED_FTE_PCT,
T.INSTR_MULTIPLIER = S.INSTR_MULTIPLIER,
T.DATA_ORIGIN = 'S',
T.LASTUPD_EW_DTTM = sysdate,
T.BATCH_SID   = 1234
where
T.INSTRUCTOR_CLASS <> S.INSTRUCTOR_CLASS or
T.LOAD_CALC_APPLY <> S.LOAD_CALC_APPLY or
T.WORKLD_LIMIT_APPLY <> S.WORKLD_LIMIT_APPLY or
T.ASSIGNED_FTE_PCT <> S.ASSIGNED_FTE_PCT or
T.INSTR_MULTIPLIER <> S.INSTR_MULTIPLIER or
T.DATA_ORIGIN = 'D'
when not matched then
insert (
T.EMPLID,
T.INSTITUTION,
T.STRM,
T.SRC_SYS_ID,
T.INSTRUCTOR_CLASS,
T.LOAD_CALC_APPLY,
T.WORKLD_LIMIT_APPLY,
T.ASSIGNED_FTE_PCT,
T.INSTR_MULTIPLIER,
T.LOAD_ERROR,
T.DATA_ORIGIN,
T.CREATED_EW_DTTM,
T.LASTUPD_EW_DTTM,
T.BATCH_SID
)
values (
S.EMPLID,
S.INSTITUTION,
S.STRM,
'CS90',
S.INSTRUCTOR_CLASS,
S.LOAD_CALC_APPLY,
S.WORKLD_LIMIT_APPLY,
S.ASSIGNED_FTE_PCT,
S.INSTR_MULTIPLIER,
'N',
'S',
sysdate,
sysdate,
1234);
   strSqlCommand := 'SET intRowCount';
   intRowCount := SQL%ROWCOUNT;

   strSqlCommand := 'commit';
   COMMIT;

   strMessage01 :=
         '# of PS_INSTRUCTOR_TERM rows merged: '
      || TO_CHAR (intRowCount, '999,999,999,999');
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
   COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL (
      i_TargetTableName   => 'PS_INSTRUCTOR_TERM',
      i_Action            => 'MERGE',
      i_RowCount          => intRowCount);


   strMessage01 := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'update TABLE_STATUS on AMSTG_OWNER.UM_STAGE_JOBS';

   UPDATE AMSTG_OWNER.UM_STAGE_JOBS
      SET TABLE_STATUS = 'Deleting', OLD_MAX_SCN = NEW_MAX_SCN
    WHERE TABLE_NAME = 'PS_INSTRUCTOR_TERM';

   strSqlCommand := 'commit';
   COMMIT;


   strMessage01 := 'Updating DATA_ORIGIN on AMSTG_OWNER.PS_INSTRUCTOR_TERM';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'update DATA_ORIGIN on AMSTG_OWNER.PS_INSTRUCTOR_TERM';

update AMSTG_OWNER.PS_INSTRUCTOR_TERM T
        set T.DATA_ORIGIN = 'D',
               T.LASTUPD_EW_DTTM = SYSDATE
 where T.DATA_ORIGIN <> 'D'
   and exists 
(select 1 from
(select EMPLID, INSTITUTION, STRM
   from AMSTG_OWNER.PS_INSTRUCTOR_TERM T2
  where (select DELETE_FLG from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_INSTRUCTOR_TERM') = 'Y'
  minus
 select EMPLID, INSTITUTION, STRM
   from SYSADM.PS_INSTRUCTOR_TERM@AMSOURCE
  where (select DELETE_FLG from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_INSTRUCTOR_TERM') = 'Y' 
   ) S
 where T.EMPLID = S.EMPLID   
  AND T.INSTITUTION = S.INSTITUTION
  AND T.STRM = S.STRM
   and T.SRC_SYS_ID = 'CS90' 
   ) 
;
   strSqlCommand := 'SET intRowCount';
   intRowCount := SQL%ROWCOUNT;

   strSqlCommand := 'commit';
   COMMIT;

   strMessage01 :=
         '# of PS_INSTRUCTOR_TERM rows updated: '
      || TO_CHAR (intRowCount, '999,999,999,999');
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
   COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL (
      i_TargetTableName   => 'PS_INSTRUCTOR_TERM',
      i_Action            => 'UPDATE',
      i_RowCount          => intRowCount);


   strMessage01 := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'update END_DT on AMSTG_OWNER.UM_STAGE_JOBS';

   UPDATE AMSTG_OWNER.UM_STAGE_JOBS
      SET TABLE_STATUS = 'Complete', END_DT = SYSDATE
    WHERE TABLE_NAME = 'PS_INSTRUCTOR_TERM';

   strSqlCommand := 'commit';
   COMMIT;


   strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_SUCCESS';
   COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_SUCCESS;

   strMessage01 := strProcessName || ' is complete.';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);
EXCEPTION
   WHEN OTHERS
   THEN
      COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_EXCEPTION (
         i_SqlCommand   => strSqlCommand,
         i_SqlCode      => SQLCODE,
         i_SqlErrm      => SQLERRM);
END AM_PS_INSTRUCTOR_TERM_P;
/