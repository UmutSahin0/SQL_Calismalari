/* Soru 1: city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte 
görebileceğimiz INNER JOIN sorgusunu yazınız. */
SELECT country.country as name_of_country,city.city as name_of_city FROM country 
INNER JOIN city ON city.country_id = country.country_id

/* Soru 2: customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki 
first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.*/
SELECT c.first_name,c.last_name,p.payment_id FROM customer as c
INNER JOIN payment as p ON c.customer_id = p.customer_id

/* Soru 3: customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name 
isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.*/
SELECT c.first_name,c.last_name,r.rental_id FROM customer as c 
INNER JOIN rental as r ON c.customer_id = r.customer_id
