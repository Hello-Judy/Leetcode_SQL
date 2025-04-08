# Write your MySQL query statement below
#SELECT email as "Email" FROM
#Person as a, Person as b
#where a.email = b.email and a.id != b.id;
# Correct Answer should be:
-- SELECT email AS "Email"
-- FROM Person
-- GROUP BY email
-- HAVING COUNT(*) > 1;

SELECT DISTINCT(a.email) as "Email" FROM
Person as a, Person as b
where a.email = b.email and a.id != b.id;
