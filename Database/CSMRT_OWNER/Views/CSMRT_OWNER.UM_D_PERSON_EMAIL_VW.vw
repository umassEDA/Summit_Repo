CREATE OR REPLACE VIEW UM_D_PERSON_EMAIL_VW
BEQUEATH DEFINER
AS 
select INSTITUTION_CD, PERSON_ID, E_ADDR_TYPE, SRC_SYS_ID, EMAIL_ADDR, PERSON_SID, 
       E_ADDR_TYPE_SD, E_ADDR_TYPE_LD, PREF_EMAIL_FLAG, PS_EMAIL_ORDER, SP_EMAIL_ORDER, 
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from UM_D_PERSON_EMAIL;