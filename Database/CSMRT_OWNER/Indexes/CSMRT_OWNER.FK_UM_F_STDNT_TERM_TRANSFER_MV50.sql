DROP INDEX CSMRT_OWNER.FK_UM_F_STDNT_TERM_TRANSFER_MV50
/

--
-- FK_UM_F_STDNT_TERM_TRANSFER_MV50  (Index) 
--
CREATE BITMAP INDEX CSMRT_OWNER.FK_UM_F_STDNT_TERM_TRANSFER_MV50 ON CSMRT_OWNER.UM_F_STDNT_TERM_TRANSFER_MV
(T_FA_LOAD_SID)
/