SELECT p.payment_date, c.country_name, SUM(p.amount) AS Daily_total_revenue
FROM payment p
JOIN customer cust ON p.customer_id = cust.customer_id
JOIN address addr ON cust.address_id = addr.address_id
JOIN city ci ON addr.city_id = ci.city_id
JOIN country c ON ci.country_id = c.country_id
WHERE c.country_name IN ('Canada', 'Chad', 'China')
GROUP BY p.payment_date, c.country_id
ORDER BY p.payment_date