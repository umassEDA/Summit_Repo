ALTER TABLE CSMRT_OWNER.UM_D_ACAD_PLAN MODIFY 
  SAA_WHIF_DISP_PREM_FLG NULL
/

ALTER TABLE CSMRT_OWNER.UM_D_ACAD_PLAN MODIFY 
  SAA_WHIF_DISP_PREM_FLG NOT NULL
  ENABLE VALIDATE
/
