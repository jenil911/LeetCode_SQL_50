# Write your MySQL query statement below
SELECT act1.machine_id, ROUND(AVG(act2.timestamp - act1.timestamp), 3) as processing_time 
FROM Activity act1
JOIN Activity act2
ON act1.process_id = act2.process_id 
AND act1.machine_id = act2.machine_id
AND act1.activity_type='start' 
AND act2.activity_type='end'
group by act1.machine_id
