ALTER TABLE CSSTG_OWNER.PARTITION_SWAP_CONTROL MODIFY 
  TABLE_NAME NULL
/

ALTER TABLE CSSTG_OWNER.PARTITION_SWAP_CONTROL MODIFY 
  TABLE_NAME NOT NULL
  ENABLE VALIDATE
/
