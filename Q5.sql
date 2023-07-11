# 5.Create a new data-frame where you classify some different countries into 
# some categories that make sense to you (8 countries min, 20 max) in this df 
# there will be two columns, one column will give the country name, the other 
# column will give the classification category.

SELECT
     c.country_name,
     CASE
         WHEN c.country_name IN ('United States', 'Canada', 'American Samoa') THEN 'North America'
         WHEN c.country_name IN ('United Kingdom', 'Austria', 'France') THEN 'Europe'
         WHEN c.country_name IN ('Afghanistan', 'Armenia', 'Azerbaijan') THEN 'West Asia'
 		 WHEN c.country_name IN ('Algeria', 'Angola', 'Anguilla') THEN 'Africa'
         WHEN c.country_name IN ('Brazil', 'Argentina', 'Colombia') THEN 'South America'
         ELSE 'Others'
     END AS classification
 FROM
     country c
