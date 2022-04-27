
DROP TABLE IF EXISTS vendor CASCADE;
CREATE TABLE vendor(
    vendor_id SERIAL PRIMARY KEY,
    vendor_name VARCHAR(100),
    vendor_phone VARCHAR(13)
);

DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100)
);

DROP TABLE IF EXISTS item CASCADE;
CREATE TABLE item(
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(50),
    "desc" TEXT,
    price DECIMAL(10,2)
);

DROP TABLE IF EXISTS vendor_item CASCADE;
CREATE TABLE vendor_item(
    vendor_id INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    FOREIGN KEY(vendor_id) REFERENCES vendor(vendor_id),
    FOREIGN KEY(item_id) REFERENCES item(item_id)
);


DROP TABLE IF EXISTS cart CASCADE;
CREATE TABLE cart(
    customer_id INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(item_id) REFERENCES item(item_id)
);


DROP TABLE IF EXISTS "order" CASCADE;
CREATE TABLE "order"(
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc',now()),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

DROP TABLE IF EXISTS order_item CASCADE;
CREATE TABLE order_item(
    order_id INTEGER NOT NULL,
    item_id INTEGER NOT NULL,
    FOREIGN KEY(order_id) REFERENCES "order"(order_id),
    FOREIGN KEY(item_id) REFERENCES item(item_id) 
);


DROP TABLE IF EXISTS inventory CASCADE;
CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    item_id INTEGER NOT NULL UNIQUE,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (item_id) REFERENCES item(item_id)
);





