ALTER TABLE CSSTG_OWNER.PS_SFA_PERK_MPN MODIFY 
  SFA_MPN_POSTAL_CD NULL
/

ALTER TABLE CSSTG_OWNER.PS_SFA_PERK_MPN MODIFY 
  SFA_MPN_POSTAL_CD NOT NULL
  ENABLE VALIDATE
/