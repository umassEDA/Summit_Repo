CREATE OR REPLACE VIEW UM_D_ITEM_TYPE_VW
BEQUEATH DEFINER
AS 
select ITEM_TYPE_SID, SETID, ITEM_TYPE_ID, SRC_SYS_ID, EFFDT, EFF_STAT_CD, 
       ITEM_TYPE_SD, ITEM_TYPE_LD, 
       ITEM_CLS_TYPE_ID, ITEM_CLS_TYPE_SD, ITEM_CLS_TYPE_LD, 
       KEYWORD1, KEYWORD2, KEYWORD3, REFUND_FLG, TAXABLE_FLG,
       DATA_ORIGIN, CREATED_EW_DTTM, LASTUPD_EW_DTTM
  from PS_D_ITEM_TYPE;
