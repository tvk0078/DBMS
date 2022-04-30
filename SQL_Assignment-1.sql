#..........Assignment-1

select film.title from category 
 join  film_category on category.category_id=film_category.category_id  
join film on film.film_id=film_category.film_id where rating="PG-13" and category.name="COMEDY";



select distinct film.title from category 
inner join film_category on category.category_id=film_category.category_id
inner join film on film.film_id=film_category.film_id
inner join inventory on film.film_id=inventory.film_id
inner join rental on inventory.inventory_id=rental.inventory_id
inner join payment on rental.rental_id=payment.rental_id 
where category.name="Horror"
limit 3;

select c.customer_id, c.first_name, c.last_name, c.address_id,co.country,cat.name from customer c
join address ad on c.address_id = ad.address_id
join city ci on ad.city_id=ci.city_id
join country co on ci.country_id=co.country_id
join  rental re on c.customer_id=re.customer_id
join inventory inv on re.inventory_id=inv.inventory_id
join film f on inv.film_id=f.film_id
join film_category fc on f.film_id=fc.film_id
join category cat on fc.category_id = cat.category_id
where co.country="India" and cat.name="Sports";

select c.customer_id, c.first_name, c.last_name, c.address_id, co.country, a.first_name, a.last_name from customer c
join address ad on c.address_id = ad.address_id
join city ci on ad.city_id=ci.city_id
join country co on ci.country_id=co.country_id
join  rental re on c.customer_id=re.customer_id
join inventory inv on re.inventory_id=inv.inventory_id
join film f on inv.film_id=f.film_id
join film_category fc on f.film_id=fc.film_id
join category cat on fc.category_id = cat.category_id
join film_actor fia on fia.film_id= f.film_id
join actor a on fia.actor_id=a.actor_id
where co.country="Canada" and a.first_name="NICK" and a.last_name="WAHLBERG";


select count(f.film_id) from film f
join film_actor fa on f.film_id=fa.film_id
join actor a on fa.actor_id=a.actor_id
where a.first_name="SEAN" and a.last_name="WILLIAMS";