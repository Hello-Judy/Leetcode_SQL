WITH answer_rate AS (
  SELECT question_id, 
         SUM(CASE WHEN action = 'answer' THEN 1 ELSE 0 END) * 1.0 
         / SUM(CASE WHEN action = 'show' THEN 1 ELSE 0 END) AS rate
  FROM surveylog
  GROUP BY question_id
)
SELECT question_id as "survey_log"
FROM (
  SELECT question_id, 
         RANK() OVER (ORDER BY rate DESC, question_id ASC) AS rnk
  FROM answer_rate
) ranked
WHERE rnk = 1;
