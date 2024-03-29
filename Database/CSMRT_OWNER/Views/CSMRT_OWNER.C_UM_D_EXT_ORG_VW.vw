DROP VIEW CSMRT_OWNER.C_UM_D_EXT_ORG_VW
/

--
-- C_UM_D_EXT_ORG_VW  (View) 
--
CREATE OR REPLACE VIEW CSMRT_OWNER.C_UM_D_EXT_ORG_VW
BEQUEATH DEFINER
AS 
SELECT CAST (EXT_ORG_SID AS NUMBER (10))          EXT_ORG_SID,
           SRC_SYS_ID,
           EXT_ORG_ID,
           EFFDT,
           EFF_STAT_CD,
           EXT_ORG_SD,
           EXT_ORG_LD,
           EXT_ORG_TYPE_ID,
           EXT_ORG_TYPE_SD,
           CAST (EXT_ORG_TYPE_LD AS VARCHAR2 (30))    EXT_ORG_TYPE_LD,
              EXT_ORG_LD
           || CASE
                  WHEN CITY_NM <> '-' AND STATE_ID <> '-'
                  THEN
                      ' (' || CITY_NM || ', ' || STATE_ID || ')'
                  ELSE
                      ''
              END                                     EXT_ORG_LD_LOC,
           SCHOOL_TYPE_ID,
           SCHOOL_TYPE_SD,
           SCHOOL_TYPE_LD,
           ADDR1_LD,
           ADDR2_LD,
           ADDR3_LD,
           ADDR4_LD,
           CITY_NM,
           CNTY_NM,
           STATE_ID,
           STATE_LD,
           POSTAL_CD,
           CNTRY_ID,
           CNTRY_SD,
           CNTRY_LD,
           ACCREDITED_FLG,
           ATP_CD,
           EXT_CAREER,
           EXT_CAREER_SD,
           EXT_CAREER_LD,
           EXT_TERM_TYPE,
           EXT_TERM_TYPE_SD,
           EXT_TERM_TYPE_LD,
           OFFERS_COURSES_FLG,
           ORG_LOCATION,
           PROPRIETORSHIP,
           PROPRIETORSHIP_SD,
           PROPRIETORSHIP_LD,
           SHARED_CATALOG_FLG,
           UNT_TYPE,
           UNT_TYPE_SD,
           UNT_TYPE_LD,
           --      TO_DATE ('1/1/1753', 'MM/DD/YYYY')       EFF_START_DT,
           --  TO_DATE ('12/31/9999', 'MM/DD/YYYY')     EFF_END_DT,
           --  CAST('Y' AS VARCHAR2(1))                 CURRENT_IND,
           --     CAST('N' AS VARCHAR2(1))                 LOAD_ERROR,
           DATA_ORIGIN,
           CREATED_EW_DTTM,
           LASTUPD_EW_DTTM,
           --  CAST(1234 AS NUMBER(10))                 BATCH_SID,
           EXT_ORG_FD--,
           --INACTIVE_FLAG  --not needed on the census views, commented out 6/23/2022 
      FROM CSMRT_OWNER.PS_D_EXT_ORG
     WHERE DATA_ORIGIN <> 'D'
/
