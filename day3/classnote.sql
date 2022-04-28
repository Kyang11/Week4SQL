

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(200),
    address VARCHAR(150),
    city VARCHAR(50),
    customer_state VARCHAR(100),
    zipcode VARCHAR(50)
);

CREATE TABLE "order"(
    order_id SERIAL PRIMARY KEY,
    order_date date DEFAULT CURRENT_DATE,
    amount NUMERIC(6, 2),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE
);

INSERT INTO customer(customer_id,first_name,last_name,email,address,city,customer_state,zipcode)
VALUES(1,'George','Washington','gwash@usa.gov', '3200 Mt Vernon Hwy', 'Mt Vernon', 'VA', '22121');

INSERT INTO customer(customer_id,first_name,last_name,email,address,city,customer_state,zipcode)
VALUES(2,'John','Adams','jadams@usa.gov','1200 Hancock', 'Quincy', 'MA','02169');

INSERT INTO customer(customer_id,first_name,last_name,email,address,city,customer_state,zipcode)
VALUES(3,'Thomas','Jefferson', 'tjeff@usa.gov', '931 Thomas Jefferson Pkway', 'Charlottesville','VA','02169');

INSERt INTO customer(customer_id,first_name,last_name,email,address,city,customer_state,zipcode)
VALUES(4,'James','Madison', 'jmad@usa.gov', '11350 Conway','Orange','VA','02169');

INSERT INTO customer(customer_id,first_name,last_name,email,address,city,customer_state,zipcode)
VALUES(5,'James','Monroe','jmonroe@usa.gov','2050 James Monroe Parkway','Charlottesville','VA','02169');

-- INSERT INFO INTO ORDERS TABLE

INSERT INTO order_(order_id,amount,customer_id)
VALUES(1,234.56,1);

INSERT INTO order_(order_id,amount,customer_id)
VALUES(2,78.50,3);

INSERT INTO order_(order_id,amount,customer_id)
VALUES(3,124.00,2);

INSERT INTO order_(order_id,amount,customer_id)
VALUES(4,65.50,3);

INSERT INTO order_(order_id,amount,customer_id)
VALUES(5,55.50,NULL);