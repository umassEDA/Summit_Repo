ALTER TABLE CSMRT_OWNER.UM_F_ADM_APPL_TRANSFER MODIFY 
  REJECT_REASON_SD NULL
/

ALTER TABLE CSMRT_OWNER.UM_F_ADM_APPL_TRANSFER MODIFY 
  REJECT_REASON_SD NOT NULL
  ENABLE VALIDATE
/