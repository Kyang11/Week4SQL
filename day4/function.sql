CREATE OR REPLACE PROCEDURE latefee(
	customer INTEGER,
	lateFeeAmount DECIMAL
)
AS
$$
BEGIN
	-- Add late fee to customer payment amount
	UPDATE payment
	SET amount = amount + lateFeeAmount
	WHERE customer_id = customer;
	
	-- Commit the above statement inside of a transaction
	COMMIT;
	
END;
$$
LANGUAGE plpgsql;

drop PROCEDURE latefee  drop if error 



call latefee(16,10.00);  -- put the a person ID first then the amout if fee 

-- select * from customer  # check name to add fee to specified amount

select customer_id,
    amount
from payment
where customer_id = 16;

select*
from actor;

create or replace function add_actor_123(
    _first_name varchar,
    _last_name varchar
)
returns void

as 
$main$
    BEGIN

    INSERT INTO actor(first_name, last_name, last_update),
    values(_first_name, _last_name now()::timestamp)  -- this call the variable from line 37 and 38

    END;

$main$

language plpgsql


CREATE OR REPLACE FUNCTION add_actor(
	_actor_id INTEGER, 
	_first_name VARCHAR, 
	_last_name VARCHAR, 
	_last_update TIMESTAMP WITHOUT TIME ZONE
)
RETURNS void
AS $MAIN$
BEGIN
	INSERT INTO actor(actor_id,first_name,last_name,last_update)
	VALUES(_actor_id,_first_name,_last_name,_last_update);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT add_actor(500, 'Kevin','Hart', NOW()::timestamp)

-- Verify that it worked
SELECT * FROM actor WHERE actor_id = 500;




