DROP INDEX DLMRT_OWNER.IRENRLCNFRMD_CESSTUDENTFLAG
/

--
-- IRENRLCNFRMD_CESSTUDENTFLAG  (Index) 
--
CREATE BITMAP INDEX DLMRT_OWNER.IRENRLCNFRMD_CESSTUDENTFLAG ON DLMRT_OWNER.IR_STUDENT_ENROL_CONFIRMED
(CES_STUDENT_FLAG)
  LOCAL (  
  PARTITION UMAMH_PPPPP_1,  
  PARTITION UMWOR_20181_1,  
  PARTITION UMWOR_20174_1,  
  PARTITION UMWOR_20183_1,  
  PARTITION UMWOR_20194_1,  
  PARTITION UMWOR_20201_1,  
  PARTITION UMWOR_20203_1,  
  PARTITION UMWOR_20211_1,  
  PARTITION UMWOR_20184_1,  
  PARTITION UMWOR_20191_1,  
  PARTITION UMWOR_20193_1,  
  PARTITION UMWOR_20204_1,  
  PARTITION UMWOR_20213_1,  
  PARTITION UMWOR_20221_1,  
  PARTITION UMWOR_20214_1,  
  PARTITION UMWOR_20223_1
)
/