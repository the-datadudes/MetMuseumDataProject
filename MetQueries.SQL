/*This is how many pieces are in the American Decorative Art collection?*/
SELECT COUNT(title)
FROM met
WHERE department = 'American Decorative Arts';

/*Did you know that celery was considered a luxurious snack in the Victorian era (around the 1800s). Wealthy families served stalks of it in intricate glass vases.

Don’t believe me?

Check out the number of pieces where the category includes ‘celery’.
*/
SELECT COUNT(*)
FROM met
WHERE title LIKE '%celery%';

/*This shows the date, title, and medium of the oldest piece(s) in the collection*/
SELECT date, title, medium
FROM met
WHERE date LIKE '%1600%';

/*This query shows the top 10 countries with the most pieces in the collection*/
SELECT country, COUNT(*)
FROM met
GROUP BY 1
ORDER BY 2 DESC;

/*This query lists the categores with more than 100 pieces in descending order*/
SELECT category, COUNT(*)
FROM met
GROUP BY 1
HAVING COUNT(*) > 100
ORDER BY COUNT(*) DESC;

/*This query shows the number of pieces where the medium contains gold or silver*/
SELECT CASE
   WHEN medium LIKE '%gold%'   THEN 'Gold'
   WHEN medium LIKE '%silver%' THEN 'Silver'
   ELSE NULL
  END AS 'Bling',
  COUNT(*)
FROM met
WHERE Bling IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;