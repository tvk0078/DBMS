#...........Assignment-2

select count(*) from film 
inner join inventory on film.film_id=inventory.film_id 
inner join rental on inventory.inventory_id=rental.inventory_id 
inner join customer on rental.customer_id=customer.customer_id 
where rating="R" and customer.first_name="SUSAN" and customer.last_name="WILSON";


select count(category.name)  from staff s  
join store st on st.manager_staff_id= s.staff_id 
join inventory on inventory.store_id=st.store_id  
join film on inventory.film_id=film.film_id 
join film_category on film.film_id = film_category.film_id 
join category on film_category.category_id=category.category_id  
where s.first_name="Jon" and s.last_name="Stephens" and category.name="sci-fi" ;


select count(category.name) from category 
join film_category on category.category_id=film_category.category_id
join film on film.film_id=film_category.film_id where category.name="Documentary";
 
select count(r.rental_id) from rental r
join inventory i on i.inventory_id=r.inventory_id
join film_category fc on fc.film_id=i.film_id
join category cat on cat.category_id=fc.category_id 
join staff_list sl on sl.id=i.store_id where cat.name="Animation";

select cu.first_name,cu.last_name, r.rental_id,cat.name, count(cat.name) as rental_count from rental r
join inventory i on i.inventory_id=r.inventory_id
join film_category f on f.film_id=i.film_id
join category cat on cat.category_id=f.category_id
join staff_list sl on sl.id=i.store_id
join customer cu on cu.customer_id=r.customer_id
where cu.first_name="PATRICIA" and cu.last_name="JOHNSON"
order by rental_count desc
limit 3;



