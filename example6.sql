SELECT 
  field1,
  field2,
  field3,
  field4,
  field5,
  field6
FROM (
    SELECT * from ${hive_example1}.v_d_table_test16 a
    left join ${hive_example2}.v_d_table_test26 b on a.id = b.id
    WHERE 
      a.field1 = 'COMISSION'

) x

UNION ALL 

SELECT other_field1, other_field2, other_field3 FROM  ${hive_example3}.other_tb1 
left join ${hive_example12}.other_tb2 otb26 on otb1.id = otb2.id 
left join ${hive_example10}.other_tb3 otb36 on otb1.id = otb3.id
left join ${hive_example2}.v_d_table_test26 b on otb1.id = a.id
WHERE total_amount > 0