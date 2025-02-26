

DROP TABLE products;
CREATE TABLE products(
         product_id INT PRIMARY KEY NOT NULL,
         product_names VARCHAR(20)
         );
INSERT INTO products(product_id , product_names)
VALUES(4563,"Hair Band"),
	  (6764,"Lip stick"),
      (5432,"Nail Polish"),
      (2233,"Mirror");
      
DROP TABLE reviews;
CREATE TABLE reviews(
		 review_id 	INT PRIMARY KEY NOT NULL,
         user_id INT NOT NULL,
         submit_date DATE,
         product_id INT NOT NULL, 
         stars INT CHECK (stars >= 1 AND stars <= 5)
         );
INSERT INTO reviews (review_id, user_id, submit_date, product_id, stars) 
VALUES
    (1, 101, '2025-02-26', 4563, 4),
    (2, 102, '2025-06-25', 6764, 5),
    (3, 103, '2025-04-24', 5432, 3),
    (4, 104, '2025-03-23', 2233, 2);
         
