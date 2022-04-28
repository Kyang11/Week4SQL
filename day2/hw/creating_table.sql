
DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    customer_phone VARCHAR(13)

);

DROP TABLE IF EXISTS movies CASCADE;
CREATE TABLE movies (
    movies_id SERIAL PRIMARY KEY,
    movies_name VARCHAR(50),
    movies_type VARCHAR(50)
);

DROP TABLE IF EXISTS concession CASCADE;
CREATE TABLE concession(
    concession_id serial PRIMARY KEY,
    concession_order_number varchar(10),
    date_time TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now())

);

DROP TABLE IF EXISTS movies CASCADE;
CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50),
    movie_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    movie_type Varchar(50)
);

DROP TABLE IF EXISTS customer_movie CASCADE;
CREATE TABLE customer_movie(
    customer_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

DROP TABLE IF EXISTS ticket CASCADE;
CREATE TABLE ticket(
    ticket_id serial  PRIMARY KEY,
    movie_id INTEGER,
    ticket_number VARCHAR(50),
    movie_name Varchar(100),
    date_time TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)

);

DROP TABLE IF EXISTS cashier CASCADE;
CREATE TABLE cashier(
    employee_id serial PRIMARY KEY, 
    emplyee_name varchar(100),
    concession_id INTEGER,
    employee_phone varchar(13),
    FOREIGN KEY (concession_id) REFERENCES concession(concession_id)  
);


DROP TABLE IF EXISTS movies_cashier CASCADE;
CREATE TABLE movies_cashier(
    employee_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    ticket_id INTEGER NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES cashier(employee_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id)

);

DROP TABLE IF EXISTS payment CASCADE;
CREATE TABLE payment(
    payment_id serial PRIMARY KEY,
    employee_id INTEGER,
    amount decimal(10,2),
    customer_name varchar(50),
    date_time TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    FOREIGN KEY (employee_id) REFERENCES cashier(employee_id)

);