DROP VIEW DLMRT_OWNER.DL_COUNTRY
/

--
-- DL_COUNTRY  (View) 
--
CREATE OR REPLACE VIEW DLMRT_OWNER.DL_COUNTRY
BEQUEATH DEFINER
AS 
SELECT COUNTRY_2CHAR,
           COUNTRY_DESCRIPTION,
           COUNTRY_DESCRSHORT,
           INSERT_TIME
      FROM DLMRT_OWNER.COUNTRY
/