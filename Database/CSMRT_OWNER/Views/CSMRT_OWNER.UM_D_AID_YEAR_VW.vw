DROP VIEW CSMRT_OWNER.UM_D_AID_YEAR_VW
/

--
-- UM_D_AID_YEAR_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.UM_D_AID_YEAR_VW
BEQUEATH DEFINER
AS 
SELECT DISTINCT AID_YEAR FROM UM_F_FA_STDNT_AID_ISIR
/
