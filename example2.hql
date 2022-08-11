SELECT 
  field1,
  field2,
  field3,
  field4,
  field5,
  field6
FROM (
    SELECT * from ${hive_example1}.v_d_table_test10 a
    left join ${hive_example2}.v_d_table_test20 b on a.id = b.id
    WHERE 
      a.field1 = 'COMISSION'

) x

UNION ALL 

SELECT other_field1, other_field2, other_field3 FROM  ${hive_example3}.other_tb1 
left join ${hive_example12}.other_tb20 otb2 on otb1.id = otb2.id 
left join ${hive_example10}.other_tb30 otb3 on otb1.id = otb3.id
left join ${hive_example2}.v_d_table_test20 b on otb1.id = a.id
WHERE total_amount > 0