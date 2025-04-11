# Write your MySQL query statement below
#Step 1: Defining the Main Query Structure
SELECT 
    w1.id
FROM 
    Weather w1
JOIN 
    Weather w2
ON  # Step 2: Join Condition
    DATEDIFF(w1.recordDate, w2.recordDate) = 1
    # 使用DATEDIFF函数进行日期差的比较，保证只连接相差一天的记录。
WHERE  # Step 3: Filter Records with Higher Temperature
    w1.temperature > w2.temperature;

-- SELECT 
--     w1.id
-- FROM 
--     Weather w1
-- WHERE 
--     w1.temperature > (
--         SELECT w2.temperature
--         FROM Weather w2
--         WHERE DATEDIFF(w1.recordDate, w2.recordDate) = 1
--     );
