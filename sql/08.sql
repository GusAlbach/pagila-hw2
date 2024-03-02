/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 *
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */
 SELECT title FROM film WHERE rating = 'G' AND 'Trailers' IN (
	SELECT spec 
	FROM unnest(special_features) AS spec
)
ORDER BY title;
