-- Calculate the Monthly Average Ratings for Each Product

SELECT * FROM products;
SELECT * FROM reviews;

SELECT 
    p.product_id, 
    p.product_names,
    MONTH(r.submit_date) AS month,
    AVG(r.stars) AS monthly_avg_rating
FROM 
    products p
JOIN
    reviews r ON p.product_id = r.product_id
GROUP BY 
    p.product_id, YEAR(r.submit_date), MONTH(r.submit_date)
ORDER BY 
	month DESC, p.product_id;




