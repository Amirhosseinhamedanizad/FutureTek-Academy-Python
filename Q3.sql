# 3.Create a visual in the notebook that shows how much revenue is coming 
# from different countries to the DVD store (you will want matplotlib).

 SELECT c.country_name, SUM(p.amount) AS revenue
 FROM country c
 JOIN city ci ON c.country_id = ci.country_id
 JOIN address a ON ci.city_id = a.city_id
 JOIN customer cust ON a.address_id = cust.address_id
 JOIN payment p ON cust.customer_id = p.customer_id
 GROUP BY c.country_name
 ORDER BY revenue DESC
