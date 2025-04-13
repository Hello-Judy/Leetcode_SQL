
# Step 2 - Grouping: This step organizes the data in such a way that every unique combination of viewer_id and view_date forms a group. 
# group by 按照这俩，articles id会形成一个list

SELECT 
DISTINCT VIEWER_ID AS ID
FROM VIEWS
GROUP BY VIEW_DATE, VIEWER_ID
HAVING COUNT(DISTINCT ARTICLE_ID) >=  2
ORDER BY ID 