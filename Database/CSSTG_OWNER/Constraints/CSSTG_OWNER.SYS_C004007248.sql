ALTER TABLE CSSTG_OWNER.PARTITION_SWAP_CONTROL MODIFY 
  TABLE_OWNER NULL
/

ALTER TABLE CSSTG_OWNER.PARTITION_SWAP_CONTROL MODIFY 
  TABLE_OWNER NOT NULL
  ENABLE VALIDATE
/
