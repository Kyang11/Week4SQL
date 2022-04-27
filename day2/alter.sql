alter table customer

add customer_phone Varchar(13);

update customer 
set customer_phone ='12312541'
where customer_id = 2;