Use sakila;

DESCRIBE actor;
	SELECT
		actor_id
		,first_name
		,last_name
		,last_update
	FROM actor ORDER BY actor_id DESC;
Call actor_GetAll;
CALL actor_GetById(150);

INSERT INTO actor (first_name, last_name)
VALUES ("JAIME", "BAUTISTA");     
CALL actor_Insert("KIRA", "LOPEZ");


DESCRIBE address;
	Select 
		address_id
		,address
		,address2
		,district
		,city_id
		,postal_code
		,phone
		,location
		,last_update
	FROM address ORDER BY address_id DESC;
    -- ST_AsText(location) = para descubrir o mostrar el contenido de una columna que sea espacial (ejemplo tipo -geometry).
Call adress_GetAll;
CALL address_GetById(500);


INSERT INTO address (address,district,city_id,postal_code,phone,location)
VALUES ("25292 IMSS Tlalnepantla","Mexico",335,52929,5511223344,ST_GeomFromText('POINT(-26.66115 40.95858)'));


DESCRIBE category;
	SELECT 
		category_id
		,name
		,last_update
	FROM category ORDER BY category_id DESC;
Call category_GetAll;
Call category_ById(15);

INSERT INTO category (name)
VALUES ("Terror");
CALL category_Insert ("stand Up");
-- Borrar id 18

DESCRIBE city;
	SELECT
		city_id
		,city
		,country_id
		,last_update
	FROM city;
CALL city_GetAll;
CALL city_ById(400);

INSERT INTO city (city, country_id)
VALUES ( "Rio de Janeiro", 15);                                
CALL city_Insert ("Moterrey",60);

DESCRIBE country;
SELECT
	country_id
	,country
	,last_update
FROM country ORDER BY country_id DESC;
CALL country_GetAll;
CALL country_ById(100);

INSERT INTO country(country)
VALUES ("Marruecos");
CALL country_Insert ("Belice");


DESCRIBE customer;
	SELECT 
		customer_id
		,store_id
		,first_name
		,last_name
		,email
		,address_id
		,active
		,create_date
		,last_update
	FROM customer ORDER BY customer_id DESC;
CALL customer_GetAll;
CALL customer_ById(333);
SELECT NOW();

INSERT INTO customer (store_id,first_name,last_name,email,address_id,create_date)
VALUES (1,"Jimmy","Bata","Jimmy.bata@gmail.com", 606, NOW());

CALL customer_Insert (1,"Karla","Martinez","Karla.martinez@gmail.com",606);
CALL customer_Insert (1,"Alfredo","Bata","Alfredo.bata@gmail.com",606, "2022-07-12 22:10:34");
CALL customer_Insert (1,"Alfredo","Bata","Chepe.Bata@gmail.com",606, "2022-07-12 22:10:34");
CALL customer_Insert (1,"Kira","Bata","Kira.Bata@gmail.com",606);

DESCRIBE film;
	SELECT
		film_id
		,title
		,description
		,release_year
		,language_id
		,original_language_id
		,rental_duration
		,rental_rate
		,length
		,replacement_cost
		,rating
		,special_features
		,last_update
	FROM film ORDER BY film_id DESC;
 Call film_GetAll;
 CALL film_ById(400);
 
 INSERT INTO film(title,description,release_year,language_id,rental_duration,rental_rate,length,replacement_cost,rating,special_features)
 VALUES ("FURY","La 2da Guerra Mundial ",2014,1,5,5.5,140,60.41,"G","Deleted Scenes");
 CALL film_Insert ("HARRY POTTER","Magia negra",2001,1,5,5.5,140,60.41,"G","Deleted Scenes");
  CALL film_Insert ("GUERRA MUNDIAL Z","Zombies",2015,1,5,7.6,140,27.28,"G","Deleted Scenes");
 
 DESCRIBE film_actor;
	SELECT
		 actor_id
		,film_id
		,last_update
	FROM film_actor;
CALL film_actor_GetAll;

DESCRIBE film_category;
	SELECT 
		film_id
		,category_id
		,last_update
	FROM film_category ORDER BY film_id DESC;
CALL film_category_GetAll;

DESCRIBE film_text;
	SELECT 
		film_id
		,title
		,description
	FROM film_text ORDER BY film_id DESC;
CALL film_text_GetAll;
CALL film_text_GetById(19);

DESCRIBE inventory;
	SELECT 
		inventory_id
		,film_id
		,store_id
		,last_update
	FROM inventory;
CALL inventory_GetAll;

DESCRIBE language;
	SELECT
		language_id
		,name
		,last_update
	FROM language;
CALL language_GetAll;
CALL language_GetById(1);


DESCRIBE payment;
	SELECT
		payment_id
		,customer_id
		,staff_id
		,rental_id
		,amount
		,payment_date
		,last_update
	FROM payment ORDER BY payment_id DESC;
    CALL payment_GetAll;
    
DESCRIBE rental;
	SELECT
		rental_id
		,rental_date
		,inventory_id
		,customer_id
		,return_date
		,staff_id
		,last_update
	FROM rental;
CALL rental_GetAll;

DESCRIBE staff;
	SELECT
		staff_id
		,first_name
		,last_name
		,address_id
		,picture
		,email
		,store_id
		,active
		,username
		,password
		,last_update
	FROM staff;
CALL staff_GetAll;
CALL staff_GetById(1);

DESCRIBE store;
	SELECT
		store_id
		,manager_staff_id
		,address_id
		,last_update
	FROM store;
CALL store_GetAll;


USE WORLD;
DESCRIBE countrylanguage;





    