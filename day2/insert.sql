INSERT INTO customer (customer_name, email) VALUES
('Steve','steve@gmail.com'),
('John', 'john@hotmail.com'),
('Jack', 'always@jillhouse.com');

INSERT INTO vendor(vendor_name, vendor_phone) VALUES
('Amigone Funeral Home', '7804569856'),
('Sam and Ellas', '5648546556'),
('Pass More Gas and Propane', '1234567890');

INSERT INTO item(item_name, "desc", price) VALUES
('sandals', 'What Jesus wore', 99.99),
('Knee High Socks', 'If you thought your birkenstocks were cool before...', 5.99),
('High water Shorts', 'Think John Stockton but sexier', 12);

INSERT INTO vendor_item(vendor_id, item_id) VALUES
(1, 1),
(1, 2),
(3, 3),
(2, 1);

INSERT INTO cart(item_id, customer_id) VALUES
(1,1),
(1,1),
(1,2),
(1,1),
(2,2),
(2,1),
(3,3);

INSERT INTO "order"(customer_id) VALUES
(1),
(2),
(3);

INSERT INTO order_item(order_id, item_id) VALUES
(1,2),
(1,2),
(1,3),
(2,1),
(3,3),
(3,3);
