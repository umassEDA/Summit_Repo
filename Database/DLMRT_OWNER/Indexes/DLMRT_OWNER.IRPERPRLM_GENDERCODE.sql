DROP INDEX DLMRT_OWNER.IRPERPRLM_GENDERCODE
/

--
-- IRPERPRLM_GENDERCODE  (Index) 
--
CREATE BITMAP INDEX DLMRT_OWNER.IRPERPRLM_GENDERCODE ON DLMRT_OWNER.IR_PERSON_PRELIM
(GENDER_CODE)
  LOCAL (  
  PARTITION UMAMH_PPPPP_1,  
  PARTITION UMBOS_20174_1,  
  PARTITION UMBOS_20181_1,  
  PARTITION UMBOS_20182_1,  
  PARTITION UMBOS_20183_1,  
  PARTITION UMBOS_20184_1,  
  PARTITION UMBOS_20191_1,  
  PARTITION UMBOS_20192_1,  
  PARTITION UMBOS_20193_1,  
  PARTITION UMDAR_20174_2,  
  PARTITION UMDAR_20181_1,  
  PARTITION UMDAR_20182_2,  
  PARTITION UMDAR_20183_1,  
  PARTITION UMAMH_20174_1,  
  PARTITION UMAMH_20181_1,  
  PARTITION UMAMH_20182_1,  
  PARTITION UMAMH_20183_1,  
  PARTITION UMLOW_20174_1,  
  PARTITION UMLOW_20181_1,  
  PARTITION UMLOW_20182_1,  
  PARTITION UMLOW_20183_1,  
  PARTITION UMWOR_20181_1,  
  PARTITION UMBOS_20194_1,  
  PARTITION UMBOS_20201_1,  
  PARTITION UMWOR_20174_1,  
  PARTITION UMWOR_20183_1,  
  PARTITION UMBOS_20204_1,  
  PARTITION UMBOS_20211_1,  
  PARTITION UMWOR_20194_1,  
  PARTITION UMWOR_20201_1,  
  PARTITION UMWOR_20203_1,  
  PARTITION UMWOR_20211_1,  
  PARTITION UMDAR_20194_2,  
  PARTITION UMDAR_20201_1,  
  PARTITION UMDAR_20202_2,  
  PARTITION UMDAR_20203_1,  
  PARTITION UMDAR_20204_2,  
  PARTITION UMDAR_20211_1,  
  PARTITION UMBOS_20202_1,  
  PARTITION UMBOS_20203_1,  
  PARTITION UMAMH_20201_1,  
  PARTITION UMAMH_20202_1,  
  PARTITION UMAMH_20203_1,  
  PARTITION UMAMH_20204_1,  
  PARTITION UMAMH_20211_1,  
  PARTITION UMAMH_20212_1,  
  PARTITION UMAMH_20213_1,  
  PARTITION UMAMH_20191_1,  
  PARTITION UMAMH_20192_1,  
  PARTITION UMAMH_20193_1,  
  PARTITION UMAMH_20194_1,  
  PARTITION UMAMH_20184_1,  
  PARTITION UMDAR_20184_2,  
  PARTITION UMDAR_20192_2,  
  PARTITION UMDAR_20191_1,  
  PARTITION UMDAR_20193_1,  
  PARTITION UMDAR_20212_2,  
  PARTITION UMDAR_20213_1,  
  PARTITION UMWOR_20184_1,  
  PARTITION UMWOR_20191_1,  
  PARTITION UMWOR_20193_1,  
  PARTITION UMWOR_20204_1,  
  PARTITION UMBOS_20212_1,  
  PARTITION UMAMH_20214_1,  
  PARTITION UMAMH_20221_1,  
  PARTITION UMWOR_20213_1,  
  PARTITION UMWOR_20221_1,  
  PARTITION UMDAR_20214_2,  
  PARTITION UMDAR_20221_1,  
  PARTITION UMBOS_20214_1,  
  PARTITION UMBOS_20221_1,  
  PARTITION UMBOS_20213_1,  
  PARTITION UMWOR_20214_1,  
  PARTITION UMAMH_20222_1,  
  PARTITION UMAMH_20223_1,  
  PARTITION UMDAR_20222_2,  
  PARTITION UMDAR_20223_1,  
  PARTITION UMLOW_20211_1,  
  PARTITION UMLOW_20214_1,  
  PARTITION UMWOR_20223_1,  
  PARTITION UMLOW_20212_1,  
  PARTITION UMLOW_20213_1,  
  PARTITION UMLOW_20221_1,  
  PARTITION UMLOW_20222_1,  
  PARTITION UMLOW_20223_1
)
/
