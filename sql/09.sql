/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 */
SELECT spec AS special_features, COUNT(*)
FROM film, unnest(special_features) AS spec
GROUP BY spec
ORDER BY spec;
