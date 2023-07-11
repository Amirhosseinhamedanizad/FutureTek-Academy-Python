# 4.Do an analysis to show which actors are bringing 
# in the most revenue (top 10 ranked)

 SELECT a.actor_id, a.first_name, a.last_name, SUM(p.amount) AS revenue
 FROM actor a
 JOIN film_actor fa ON a.actor_id = fa.actor_id
 JOIN film f ON fa.film_id = f.film_id
 JOIN inventory i ON f.film_id = i.film_id
 JOIN rental r ON i.inventory_id = r.inventory_id
 JOIN payment p ON r.rental_id = p.rental_id
 GROUP BY a.actor_id, a.first_name, a.last_name
 ORDER BY revenue DESC
 LIMIT 10