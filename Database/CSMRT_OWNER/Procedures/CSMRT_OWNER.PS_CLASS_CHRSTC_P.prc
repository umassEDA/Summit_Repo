DROP PROCEDURE CSMRT_OWNER.PS_CLASS_CHRSTC_P
/

--
-- PS_CLASS_CHRSTC_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."PS_CLASS_CHRSTC_P"
   AUTHID CURRENT_USER
IS
   /*
   -- Run before the first time
   DELETE
   FROM CSSTG_OWNER.UM_STAGE_JOBS
    WHERE TABLE_NAME = 'PS_CLASS_CHRSTC'

   INSERT INTO CSSTG_OWNER.UM_STAGE_JOBS
   (TABLE_NAME, DELETE_FLG)
   VALUES
   ('PS_CLASS_CHRSTC', 'Y')

   SELECT *
   FROM CSSTG_OWNER.UM_STAGE_JOBS
    WHERE TABLE_NAME = 'PS_CLASS_CHRSTC'
   */


   ------------------------------------------------------------------------
   -- George Adams
   --
   -- Loads stage table PS_CLASS_CHRSTC from PeopleSoft table PS_CLASS_CHRSTC.
   --
   -- V01  SMT-xxxx 07/10/2017,    Preethi Lodha
   --                              Converted from PS_CLASS_CHRSTC.sql
   --
   ------------------------------------------------------------------------

   strMartId          VARCHAR2 (50) := 'CSW';
   strProcessName     VARCHAR2 (100) := 'PS_CLASS_CHRSTC';
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

   strMessage01 := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);


   strSqlCommand := 'update START_DT on CSSTG_OWNER.UM_STAGE_JOBS';

   UPDATE CSSTG_OWNER.UM_STAGE_JOBS
      SET TABLE_STATUS = 'Reading', START_DT = SYSDATE, END_DT = NULL
    WHERE TABLE_NAME = 'PS_CLASS_CHRSTC';

   strSqlCommand := 'commit';
   COMMIT;


   strSqlCommand := 'update NEW_MAX_SCN on CSSTG_OWNER.UM_STAGE_JOBS';

   UPDATE CSSTG_OWNER.UM_STAGE_JOBS
      SET TABLE_STATUS = 'Merging',
          NEW_MAX_SCN =
             (SELECT /*+ full(S) */
                    MAX (ORA_ROWSCN)
                FROM SYSADM.PS_CLASS_CHRSTC@SASOURCE S)
    WHERE TABLE_NAME = 'PS_CLASS_CHRSTC';

   strSqlCommand := 'commit';
   COMMIT;


   strMessage01 := 'Merging data into CSSTG_OWNER.PS_CLASS_CHRSTC';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'merge into CSSTG_OWNER.PS_CLASS_CHRSTC';
merge /*+ use_hash(S,T) */ into CSSTG_OWNER.PS_CLASS_CHRSTC T
using (select /*+ full(S) */
nvl(trim(CRSE_ID),'-') CRSE_ID,
nvl(CRSE_OFFER_NBR,0) CRSE_OFFER_NBR,
nvl(trim(STRM),'-') STRM,
nvl(trim(SESSION_CODE),'-') SESSION_CODE,
nvl(trim(CLASS_SECTION),'-') CLASS_SECTION,
nvl(trim(ROOM_CHRSTC),'-') ROOM_CHRSTC,
nvl(ROOM_CHRSTC_QUANTI,0) ROOM_CHRSTC_QUANTI
from SYSADM.PS_CLASS_CHRSTC@SASOURCE S
where ORA_ROWSCN > (select OLD_MAX_SCN from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_CLASS_CHRSTC') ) S
   on (
T.CRSE_ID = S.CRSE_ID and
T.CRSE_OFFER_NBR = S.CRSE_OFFER_NBR and
T.STRM = S.STRM and
T.SESSION_CODE = S.SESSION_CODE and
T.CLASS_SECTION = S.CLASS_SECTION and
T.ROOM_CHRSTC = S.ROOM_CHRSTC and
T.SRC_SYS_ID = 'CS90')
when matched then update set
T.ROOM_CHRSTC_QUANTI = S.ROOM_CHRSTC_QUANTI,
T.DATA_ORIGIN = 'S',
T.LASTUPD_EW_DTTM = sysdate,
T.BATCH_SID   = 1234
where
T.ROOM_CHRSTC_QUANTI <> S.ROOM_CHRSTC_QUANTI or
T.DATA_ORIGIN = 'D'
when not matched then
insert (
T.CRSE_ID,
T.CRSE_OFFER_NBR,
T.STRM,
T.SESSION_CODE,
T.CLASS_SECTION,
T.ROOM_CHRSTC,
T.SRC_SYS_ID,
T.ROOM_CHRSTC_QUANTI,
T.LOAD_ERROR,
T.DATA_ORIGIN,
T.CREATED_EW_DTTM,
T.LASTUPD_EW_DTTM,
T.BATCH_SID
)
values (
S.CRSE_ID,
S.CRSE_OFFER_NBR,
S.STRM,
S.SESSION_CODE,
S.CLASS_SECTION,
S.ROOM_CHRSTC,
'CS90',
S.ROOM_CHRSTC_QUANTI,
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
         '# of PS_CLASS_CHRSTC rows merged: '
      || TO_CHAR (intRowCount, '999,999,999,999');
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
   COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL (
      i_TargetTableName   => 'PS_CLASS_CHRSTC',
      i_Action            => 'MERGE',
      i_RowCount          => intRowCount);


   strMessage01 := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'update TABLE_STATUS on CSSTG_OWNER.UM_STAGE_JOBS';

   UPDATE CSSTG_OWNER.UM_STAGE_JOBS
      SET TABLE_STATUS = 'Deleting', OLD_MAX_SCN = NEW_MAX_SCN
    WHERE TABLE_NAME = 'PS_CLASS_CHRSTC';

   strSqlCommand := 'commit';
   COMMIT;


   strMessage01 := 'Updating DATA_ORIGIN on CSSTG_OWNER.PS_CLASS_CHRSTC';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'update DATA_ORIGIN on CSSTG_OWNER.PS_CLASS_CHRSTC';

update CSSTG_OWNER.PS_CLASS_CHRSTC T
        set T.DATA_ORIGIN = 'D',
               T.LASTUPD_EW_DTTM = SYSDATE
 where T.DATA_ORIGIN <> 'D'
   and exists 
(select 1 from
(select CRSE_ID, CRSE_OFFER_NBR, STRM, SESSION_CODE, CLASS_SECTION, ROOM_CHRSTC
   from CSSTG_OWNER.PS_CLASS_CHRSTC T2
  where (select DELETE_FLG from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_CLASS_CHRSTC') = 'Y'
  minus
 select CRSE_ID, CRSE_OFFER_NBR, STRM, SESSION_CODE, CLASS_SECTION, ROOM_CHRSTC
   from SYSADM.PS_CLASS_CHRSTC@SASOURCE
  where (select DELETE_FLG from CSSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_CLASS_CHRSTC') = 'Y' 
   ) S
 where T.CRSE_ID = S.CRSE_ID   
  AND T.CRSE_OFFER_NBR = S.CRSE_OFFER_NBR
  AND T.STRM = S.STRM
  AND T.SESSION_CODE = S.SESSION_CODE
  AND T.CLASS_SECTION = S.CLASS_SECTION
  AND T.ROOM_CHRSTC = S.ROOM_CHRSTC
   and T.SRC_SYS_ID = 'CS90' 
   ) 
;
   strSqlCommand := 'SET intRowCount';
   intRowCount := SQL%ROWCOUNT;

   strSqlCommand := 'commit';
   COMMIT;

   strMessage01 :=
         '# of PS_CLASS_CHRSTC rows updated: '
      || TO_CHAR (intRowCount, '999,999,999,999');
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
   COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL (
      i_TargetTableName   => 'PS_CLASS_CHRSTC',
      i_Action            => 'UPDATE',
      i_RowCount          => intRowCount);


   strMessage01 := 'Updating CSSTG_OWNER.UM_STAGE_JOBS';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'update END_DT on CSSTG_OWNER.UM_STAGE_JOBS';

   UPDATE CSSTG_OWNER.UM_STAGE_JOBS
      SET TABLE_STATUS = 'Complete', END_DT = SYSDATE
    WHERE TABLE_NAME = 'PS_CLASS_CHRSTC';

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
END PS_CLASS_CHRSTC_P;
/
