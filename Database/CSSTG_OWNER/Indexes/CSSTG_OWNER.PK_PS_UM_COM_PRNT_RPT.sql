DROP INDEX CSSTG_OWNER.PK_PS_UM_COM_PRNT_RPT
/

--
-- PK_PS_UM_COM_PRNT_RPT  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_UM_COM_PRNT_RPT ON CSSTG_OWNER.PS_UM_COM_PRNT_RPT
(UM_ADM_USERID, INSTITUTION, UM_ADM_REC_NBR, SRC_SYS_ID)
/
