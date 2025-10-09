SELECT location_id, street_address, city, country_name
FROM locations NATURAL JOIN countries;

SELECT location_id, street_address, city, country_name
FROM locations JOIN countries USING (country_id);

SELECT l.location_id, l.street_address, l.city, c.country_name
FROM locations l JOIN countries c ON l.country_id = c.country_id;

SELECT l.location_id, l.street_address, l.city, c.country_name
FROM locations l INNER JOIN countries c ON l.country_id = c.country_id;

SELECT l.location_id, l.street_address, l.city, c.country_name
FROM locations l LEFT JOIN countries c ON l.country_id = c.country_id;

SELECT l.location_id, l.street_address, l.city, c.country_name
FROM locations l RIGHT JOIN countries c ON l.country_id = c.country_id;

SELECT l.location_id, l.street_address, l.city, c.country_name
FROM locations l FULL OUTER JOIN countries c ON l.country_id = c.country_id;
