DROP PROCEDURE CSMRT_OWNER.AM_PS_SSR_STDGRD_ENRL_P
/

--
-- AM_PS_SSR_STDGRD_ENRL_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER."AM_PS_SSR_STDGRD_ENRL_P" IS

   ------------------------------------------------------------------------
   -- George Adams
   --
   -- Loads stage table PS_SSR_STDGRD_ENRL from PeopleSoft table PS_SSR_STDGRD_ENRL.
   --
   -- V01  SMT-7992 09/12/2018,    James Doucette
   --                              New stage table from PeopleSoft.
   --VXX    07/06/2021,            Kieu ,Srikanth - Added EMPLID or COMMON_ID additional filter logic 
   ------------------------------------------------------------------------

   strMartId          VARCHAR2 (50) := 'CSW';
   strProcessName     VARCHAR2 (100) := 'PS_SSR_STDGRD_ENRL';
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
    WHERE TABLE_NAME = 'PS_SSR_STDGRD_ENRL';

   strSqlCommand := 'commit';
   COMMIT;


   strSqlCommand := 'update NEW_MAX_SCN on AMSTG_OWNER.UM_STAGE_JOBS';

   UPDATE AMSTG_OWNER.UM_STAGE_JOBS
      SET TABLE_STATUS = 'Merging',
          NEW_MAX_SCN =
             (SELECT /*+ full(S) */
                    MAX (ORA_ROWSCN)
                FROM SYSADM.PS_SSR_STDGRD_ENRL@AMSOURCE S)
    WHERE TABLE_NAME = 'PS_SSR_STDGRD_ENRL';

   strSqlCommand := 'commit';
   COMMIT;


   strMessage01 := 'Merging data into AMSTG_OWNER.PS_SSR_STDGRD_ENRL';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'merge into AMSTG_OWNER.PS_SSR_STDGRD_ENRL';

merge /*+ use_hash(S,T) */ into AMSTG_OWNER.PS_SSR_STDGRD_ENRL T 
using (select /*+ full(S) */ 
	nvl(trim(EMPLID),'-') EMPLID, 
	nvl(trim(INSTITUTION),'-') INSTITUTION, 
	nvl(trim(ACAD_CAREER),'-') ACAD_CAREER, 
	nvl(STDNT_CAR_NBR,0) STDNT_CAR_NBR, 
	nvl(trim(ACAD_PROG),'-') ACAD_PROG, 
	nvl(trim(EXP_GRAD_TERM),'-') EXP_GRAD_TERM, 
	nvl(trim(DEGREE),'-') DEGREE, 
	nvl(trim(STRM),'-') STRM, 
	nvl(CLASS_NBR,0) CLASS_NBR, 
	nvl(trim(SSR_GRAD_NOTE),'-') SSR_GRAD_NOTE
from SYSADM.PS_SSR_STDGRD_ENRL@AMSOURCE S 
where ORA_ROWSCN > (select OLD_MAX_SCN from AMSTG_OWNER.UM_STAGE_JOBS where TABLE_NAME = 'PS_SSR_STDGRD_ENRL') 
 and EMPLID between '00000000' and '99999999'
   and length(EMPLID) = 8 

 ) S 
 on ( 
	T.EMPLID = S.EMPLID and 
	T.INSTITUTION = S.INSTITUTION and 
	T.ACAD_CAREER = S.ACAD_CAREER and 
	T.STDNT_CAR_NBR = S.STDNT_CAR_NBR and 
	T.ACAD_PROG = S.ACAD_PROG and 
	T.EXP_GRAD_TERM = S.EXP_GRAD_TERM and 
	T.DEGREE = S.DEGREE and 
	T.STRM = S.STRM and 
	T.CLASS_NBR = S.CLASS_NBR and 
	T.SRC_SYS_ID = 'CS90') 
when matched then update set 
	T.SSR_GRAD_NOTE = S.SSR_GRAD_NOTE, 
	T.DATA_ORIGIN = 'S', 
	T.LASTUPD_EW_DTTM = sysdate, 
	T.BATCH_SID = 1234 
where 
	T.SSR_GRAD_NOTE <> S.SSR_GRAD_NOTE or 
	T.DATA_ORIGIN = 'D' 
when not matched then 
insert ( 
	T.EMPLID, 
	T.INSTITUTION, 
	T.ACAD_CAREER, 
	T.STDNT_CAR_NBR, 
	T.ACAD_PROG, 
	T.EXP_GRAD_TERM, 
	T.DEGREE, 
	T.STRM, 
	T.CLASS_NBR, 
	T.SRC_SYS_ID, 
	T.SSR_GRAD_NOTE, 
	T.LOAD_ERROR, 
	T.DATA_ORIGIN, 
	T.CREATED_EW_DTTM, 
	T.LASTUPD_EW_DTTM, 
	T.BATCH_SID
	) 
values ( 
	S.EMPLID, 
	S.INSTITUTION, 
	S.ACAD_CAREER, 
	S.STDNT_CAR_NBR, 
	S.ACAD_PROG, 
	S.EXP_GRAD_TERM, 
	S.DEGREE, 
	S.STRM, 
	S.CLASS_NBR, 
	'CS90', 
	S.SSR_GRAD_NOTE, 
	'N', 
	'S', 
	sysdate, 
	sysdate, 
	1234)
	; 
 

   strSqlCommand := 'SET intRowCount';
   intRowCount := SQL%ROWCOUNT;

   strSqlCommand := 'commit';
   COMMIT;

   strMessage01 :=
         '# of PS_SSR_STDGRD_ENRL rows merged: '
      || TO_CHAR (intRowCount, '999,999,999,999');
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
   COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL (
      i_TargetTableName   => 'PS_SSR_STDGRD_ENRL',
      i_Action            => 'MERGE',
      i_RowCount          => intRowCount);


   strMessage01 := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'update TABLE_STATUS on AMSTG_OWNER.UM_STAGE_JOBS';

   UPDATE AMSTG_OWNER.UM_STAGE_JOBS
      SET TABLE_STATUS = 'Deleting', OLD_MAX_SCN = NEW_MAX_SCN
    WHERE TABLE_NAME = 'PS_SSR_STDGRD_ENRL';

   strSqlCommand := 'commit';
   COMMIT;


   strMessage01 := 'Updating DATA_ORIGIN on AMSTG_OWNER.PS_SSR_STDGRD_ENRL';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'update DATA_ORIGIN on AMSTG_OWNER.PS_SSR_STDGRD_ENRL';


   UPDATE AMSTG_OWNER.PS_SSR_STDGRD_ENRL T
      SET T.DATA_ORIGIN = 'D', T.LASTUPD_EW_DTTM = SYSDATE
    WHERE T.DATA_ORIGIN <> 'D'
      AND EXISTS
                 (SELECT 1
                    FROM (SELECT EMPLID, INSTITUTION, ACAD_CAREER, STDNT_CAR_NBR, ACAD_PROG, EXP_GRAD_TERM, DEGREE, STRM, CLASS_NBR
                            FROM AMSTG_OWNER.PS_SSR_STDGRD_ENRL T2
                           WHERE (SELECT DELETE_FLG
                                    FROM AMSTG_OWNER.UM_STAGE_JOBS
                                   WHERE TABLE_NAME = 'PS_SSR_STDGRD_ENRL') = 'Y'
                          MINUS
                          SELECT EMPLID, INSTITUTION, ACAD_CAREER, STDNT_CAR_NBR, ACAD_PROG, EXP_GRAD_TERM, DEGREE, STRM, CLASS_NBR
                            FROM SYSADM.PS_SSR_STDGRD_ENRL@AMSOURCE
                           WHERE (SELECT DELETE_FLG
                                    FROM AMSTG_OWNER.UM_STAGE_JOBS
                                   WHERE TABLE_NAME = 'PS_SSR_STDGRD_ENRL') = 'Y') S
                   WHERE T.EMPLID = S.EMPLID
                     AND T.INSTITUTION = S.INSTITUTION
					 AND T.ACAD_CAREER = S.ACAD_CAREER
					 AND T.STDNT_CAR_NBR = S.STDNT_CAR_NBR
					 AND T.ACAD_PROG = S.ACAD_PROG
					 AND T.EXP_GRAD_TERM = S.EXP_GRAD_TERM
					 AND T.DEGREE = S.DEGREE
					 AND T.STRM = S.STRM
					 AND T.CLASS_NBR = S.CLASS_NBR
                     AND T.SRC_SYS_ID = 'CS90');

   strSqlCommand := 'SET intRowCount';
   intRowCount := SQL%ROWCOUNT;

   strSqlCommand := 'commit';
   COMMIT;

   strMessage01 :=
         '# of PS_SSR_STDGRD_ENRL rows updated: '
      || TO_CHAR (intRowCount, '999,999,999,999');
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'SMT_PROCESS_LOG.PROCESS_DETAIL';
   COMMON_OWNER.SMT_PROCESS_LOG.PROCESS_DETAIL (
      i_TargetTableName   => 'PS_SSR_STDGRD_ENRL',
      i_Action            => 'UPDATE',
      i_RowCount          => intRowCount);


   strMessage01 := 'Updating AMSTG_OWNER.UM_STAGE_JOBS';
   COMMON_OWNER.SMT_LOG.PUT_MESSAGE (i_Message => strMessage01);

   strSqlCommand := 'update END_DT on AMSTG_OWNER.UM_STAGE_JOBS';

   UPDATE AMSTG_OWNER.UM_STAGE_JOBS
      SET TABLE_STATUS = 'Complete', END_DT = SYSDATE
    WHERE TABLE_NAME = 'PS_SSR_STDGRD_ENRL';

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
		 
END AM_PS_SSR_STDGRD_ENRL_P;
/
