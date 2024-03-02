/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */
SELECT title FROM (SELECT title FROM film WHERE 'Behind the Scenes' IN (SELECT spec FROM unnest(special_features) AS spec)) as subq INNER JOIN (SELECT title FROM film WHERE 'Trailers' IN (SELECT spec FROM unnest(special_features) AS spec)) AS subque USING (title) ORDER BY title;
