-- Ex1
SELECT DISTINCT city from station
WHERE id%2=0
-- Ex2
SELECT count(city) - count(distinct city) FROM station
-- Ex4
SELECT 
ROUND(CAST(SUM(item_count * order_occurrences)/SUM(order_occurrences)AS DECIMAL),1)
FROM items_per_order;
-- Ex5
SELECT DISTINCT candidate_id FROM candidates
WHERE skill in ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
having count (skill) =3
order by candidate_id;
-- Ex 6
SELECT user_id, 
DATE(Max(post_date)) - DATE(Min(post_date)) AS days_between
FROM posts
WHERE post_date between '2021-01-01' and '2022-01-01'
GROUP BY user_id
HAVING COUNT (post_id) >=2
-- Ex 7
SELECT card_name,
MAX(issue_month)-MIN(issue_month) AS diffrence 
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY diffrence DESC
-- Ex 8
SELECT manufacturer,
COUNT (drug) AS drug_count,
ABS (SUM(cogs-total_sales)) AS total_loss
FROM pharmacy_sales
WHERE total_sales < cogs
GROUP BY manufacturer
ORDER BY total_loss DESC
-- Ex 9 
SELECT * FROM cinema
WHERE id%2=1 and description <> 'boring'
ORDER BY rating DESC
-- Ex 10
SELECT teacher_id,
COUNT (DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id
-- Ex 11
SELECT user_id,
COUNT (follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id
-- Ex12
SELECT class FROM courses
GROUP BY class
HAVING COUNT (student) >=5 

