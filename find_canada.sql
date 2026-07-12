SELECT c.country_name
FROM sales s
INNER JOIN cities_sales cs ON s.id_sale = cs.sales_id
INNER JOIN cities ci ON cs.city_id = ci.id_city
INNER JOIN countries c ON ci.country_id = c.id_country
WHERE s.id_sale = 3;