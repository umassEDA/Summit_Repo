DROP PROCEDURE CSMRT_OWNER.UNUSABLE_SID_BITMAPS_P
/

--
-- UNUSABLE_SID_BITMAPS_P  (Procedure) 
--
CREATE OR REPLACE PROCEDURE CSMRT_OWNER.UNUSABLE_SID_BITMAPS_P IS
   bitmap_cur            SYS_REFCURSOR;
   v_sql_str             varchar2(2000);
   v_bitmap_total        number;

BEGIN

-- Open cursor for bitmap indexes.

   v_bitmap_total := 0;

   OPEN bitmap_cur FOR
    select 'alter index '||INDEX_NAME||' unusable'
    from USER_IND_COLUMNS
    where INDEX_NAME in (select INDEX_NAME from USER_INDEXES where INDEX_TYPE = 'BITMAP' and TABLE_NAME not like '%MV')
      and INDEX_NAME not in (select INDEX_NAME from USER_IND_COLUMNS where COLUMN_POSITION > 1)
      and INDEX_NAME not like 'PK%'
      and (COLUMN_NAME like '%_SID' or COLUMN_NAME like '%_ORDER')  -- Modified 5/25/2012 
    order by TABLE_NAME, COLUMN_NAME;

   LOOP
      FETCH bitmap_cur INTO v_sql_str;

      EXIT WHEN bitmap_cur%NOTFOUND;

      EXECUTE IMMEDIATE v_sql_str;

         v_bitmap_total := v_bitmap_total + 1;

         --DBMS_OUTPUT.PUT_LINE('SQL is: '||v_sql_str);

   END LOOP;

         DBMS_OUTPUT.PUT_LINE('Total SID BITMAP indexes altered: '||v_bitmap_total);
         
      CLOSE bitmap_cur;
      
END UNUSABLE_SID_BITMAPS_P;
/
