CREATE OR REPLACE VIEW UM_D_SF_LINE_SEQ_NBR_VW
BEQUEATH DEFINER
AS 
SELECT DISTINCT LINE_SEQ_NBR
      FROM UM_F_SF_ITEM_LINE;
