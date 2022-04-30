INSERT INTO salesperson (first_name, last_name, email, phone) VALUES
('Lydia', 'Yang', 'lydia.yang@car_dealership.com', '1237867891'),
('Kue', 'Lor', 'ku.lor@car_dealership.com', '2341178912'),
('Nathan', 'Yang', 'Nathan.Yang@car_dealership.com', '3456111123'),
('Luna', 'Vue', 'Luna.vue@gcar_dealership.com', '5897812345'),
('Neng', 'Thao', 'Neng.thao@car_dealership.com', '6781233456');


INSERT INTO service_ticket (car_name, service_ticket_number) VALUES
('BMW i8','12775'),
('Nazda lovely','15646'),
('Toyata Corolla','12347'),
('Subaru ZV','15647'),
('Porsche Cayenne Coupe','12349');


INSERT INTO mechanic (first_name, last_name) VALUES
('Mitch', 'Young'),
('David', 'Yang'),
('Paj', 'Thoj'),
('Angela', 'Vue'),
('Jimmy', 'Her');


INSERT INTO invoice (salesperson_id, invoice_number) VALUES
(1,'01244'),
(2,'01635'),
(3,'01246'),
(4,'01937'),
(5,'01038');


INSERT INTO buy (invoice_id) VALUES
(5),
(8),
(7),
(9),
(7);


INSERT INTO sell (invoice_id) VALUES
(8),
(5),
(6),
(4),
(9);


INSERT INTO mechanic_service (service_ticket_id, labor_hrs, rate, customer_feedback) VALUES
(1,2,100, 'Really happy with the fast turnaround'),
(4,4,220, 'Everything went great. Car is working perfectly.'),
(3,2,200, 'Thanks so much for the service.'),
(5,3,290, 'Enjoyed the service!'),
(2,6,780, 'Unhappy with how long the service took. Please try better next time.');


INSERT INTO service_history (mechanic_service_id, serial_number_VIN, "desc") VALUES
(2,'1ABCD11EFGHg','changed oil and changed air filter'),
(1,'2ABCD145FGH22','rotating tires and added antifreeze'),
(3,'3ABCD11EFGH833','replaced the transmission'),
(4,'4ABCD11EFGH4fghe','replaced the brakes'),
(5,'5ABCD11EFGH5sdge','machined engine piston housing');


INSERT INTO customer (mechanic_service_id, first_name, last_name, email, phone, address) VALUES
(1,'Stanley', 'Vang','stanley.Vang@gmail.com', '9874781231','1734 Stanley Dr.'),
(5,'Kim', 'Vue', 'kim.vue@yahoo.com','8745642312','4967 Kim.'),
(3,'Ryan', 'Yang','ryan.Yang@gmail.com','7111123123','5638 Ryan.'),
(2,'Andy', 'Lee', 'andy.Lee@hotmail.com','6341233214','7991 Andy Dr.'),
(4,'Phyllis', 'Khan', 'phyllis.khan@gmail.com','5614785478','9874 Phyllis Dr.');


INSERT INTO part (mechanic_service_id, part_name, part_number, "desc", price) VALUES
(2,'air filter','13','the air filter needed to be replaced',69.50),
(1,'tires','14','four tires were replaced',500.00),
(5,'piston rings','15','the pistons were replaced on drivers side.',1500.00),
(4,'brakes','12','the brakes were worn out and were replaced',500.00),
(3,'automatic transmission', '11','the transmission needed to be replaced', 3000.00 );


INSERT INTO mechanic_mechanic_service (mechanic_id, mechanic_service_id) VALUES
(1,3),
(2,2),
(3,4),
(4,5),
(5,1);


INSERT INTO car_item (service_ticket_id, customer_id, salesperson_id, make,model,"year", color) VALUES
(1,5,2,'Hondai','RD','2022','red'),
(2,4,3,'BMW', 'i8', '2019','gray'),
(3,3,4,'Toyata','Camry','2017','black'),
(4,2,5,'Cardallic', 'EV','2023','gray'),
(5,1,1,'Kia', 'couple', '2022', 'blue');