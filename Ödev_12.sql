/* Soru 1: film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan 
fazla kaç tane film vardır? */
SELECT * FROM film WHERE length > (select avg(length) from film )

/* Soru 2: film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır? */
SELECT COUNT(*) FROM film WHERE rental_rate = (select max(rental_rate) from film)

/* Soru 3: film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.*/
SELECT COUNT(*) FROM film 
	WHERE (rental_rate = (select min(rental_rate) from film)) 
		AND (replacement_cost = (select min(replacement_cost) from film))
		
/* Soru 4: payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız. */
SELECT DISTINCT(customer.first_name, customer.last_name) AS full_name, COUNT(*) AS payment_number FROM payment
INNER JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id, customer.first_name, customer.last_name
ORDER BY COUNT(*) DESC;
