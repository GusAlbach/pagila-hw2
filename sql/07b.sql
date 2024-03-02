/*
 * This problem is the same as 07.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */
SELECT DISTINCT title 
FROM film 
JOIN inventory USING (film_id) 
LEFT JOIN (
    SELECT film.film_id 
    FROM film 
    JOIN inventory USING (film_id) 
    JOIN rental ON inventory.inventory_id = rental.inventory_id 
    JOIN customer ON rental.customer_id = customer.customer_id 
    JOIN address USING (address_id) 
    JOIN city USING (city_id) 
    JOIN country USING (country_id) 
    WHERE country_id = 103
) AS excluded_films ON film.film_id = excluded_films.film_id 
WHERE excluded_films.film_id IS NULL 
ORDER BY title;
