DROP INDEX CSSTG_OWNER.PK_PS_SFA_PERK_MPN
/

--
-- PK_PS_SFA_PERK_MPN  (Index) 
--
CREATE UNIQUE INDEX CSSTG_OWNER.PK_PS_SFA_PERK_MPN ON CSSTG_OWNER.PS_SFA_PERK_MPN
(AID_YEAR, EMPLID, INSTITUTION, SFA_MPN_SEQ, SRC_SYS_ID)
/