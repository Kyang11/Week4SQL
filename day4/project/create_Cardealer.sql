

DROP TABLE IF EXISTS salesperson CASCADE;
CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(13)
);




DROP TABLE IF EXISTS service_ticket CASCADE;
CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    car_name varchar(255),
    "date" TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc', now()),
    service_ticket_number VARCHAR(255)
);



DROP TABLE IF EXISTS mechanic CASCADE;
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);



DROP TABLE IF EXISTS invoice CASCADE;
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER NOT NULL,
    "date" TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc', now()),
    invoice_number VARCHAR(255),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
);



DROP TABLE IF EXISTS buy CASCADE;
CREATE TABLE buy(
    buy_id SERIAL PRIMARY KEY,
    invoice_id INTEGER NOT NULL,
    FOREIGN KEY(invoice_id) REFERENCES invoice(invoice_id)
);




DROP TABLE IF EXISTS sell CASCADE;
CREATE TABLE sell(
    sell_id SERIAL PRIMARY KEY,
    invoice_id INTEGER NOT NULL,
    FOREIGN KEY(invoice_id) REFERENCES invoice(invoice_id)
);




DROP TABLE IF EXISTS mechanic_service CASCADE;
CREATE TABLE mechanic_service(
    mechanic_service_id SERIAL PRIMARY KEY,
    service_ticket_id INTEGER NOT NULL,
    labor_hrs DECIMAL(10,2),
    rate DECIMAL(10,2),
    customer_feedback TEXT,
    FOREIGN KEY(service_ticket_id) REFERENCES service_ticket(service_ticket_id)
);



DROP TABLE IF EXISTS service_history CASCADE;
CREATE TABLE service_history(
    service_history_id SERIAL PRIMARY KEY,
    mechanic_service_id INTEGER NOT NULL,
    serial_number_VIN VARCHAR(255),
    "desc" TEXT,
    FOREIGN KEY(mechanic_service_id) REFERENCES mechanic_service(mechanic_service_id)
);



DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    mechanic_service_id INTEGER NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(13),
    address VARCHAR(255),
    FOREIGN KEY(mechanic_service_id) REFERENCES mechanic_service(mechanic_service_id)
);


DROP TABLE IF EXISTS part CASCADE;
CREATE TABLE part(
    part_id SERIAL PRIMARY KEY,
    mechanic_service_id INTEGER NOT NULL,
    part_name VARCHAR(255),
    part_number VARCHAR(255),
    "desc" TEXT,
    price decimal(10,2),
    FOREIGN KEY(mechanic_service_id) REFERENCES mechanic_service(mechanic_service_id)
);


DROP TABLE IF EXISTS mechanic_mechanic_service CASCADE;
CREATE TABLE mechanic_mechanic_service(
    mechanic_id INTEGER NOT NULL,
    mechanic_service_id INTEGER NOT NULL,
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
    FOREIGN KEY(mechanic_service_id) REFERENCES mechanic_service(mechanic_service_id)
);


DROP TABLE IF EXISTS car_item CASCADE;
CREATE TABLE car_item(
    car_item_id SERIAL PRIMARY KEY,
    service_ticket_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    salesperson_id INTEGER NOT NULL,
    make VARCHAR(255),
    model VARCHAR(255),
    "year" VARCHAR(5),
    color VARCHAR(255),
    FOREIGN KEY(service_ticket_id) REFERENCES service_ticket(service_ticket_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id)
);