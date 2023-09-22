-- CREATE DATABASE ServiceCenter;
USE ServiceCenter;
-- -----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Customers
(
	id SERIAL,
	firstname VARCHAR(20),
	lastname VARCHAR(30),
	email VARCHAR(120) UNIQUE,
    phone BIGINT
);
INSERT INTO `Customers` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('1', 'Reuben', 'Nienow', 'arlo50@example.org', '9374071116');
INSERT INTO `Customers` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('2', 'Reuben', 'Nienow', 'terrence.cartwright@example.org', '9127498182');
INSERT INTO `Customers` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('3', 'Reuben', 'Windler', 'rupert55@example.org', '9921090703');
INSERT INTO `Customers` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('4', 'Reuben', 'West', 'rebekah29@example.net', '9592139196');
INSERT INTO `Customers` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('5', 'Frederick', 'Effertz', 'von.bridget@example.net', '9909791725');
INSERT INTO `Customers` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('6', 'Frederick', 'Medhurst', 'sstehr@example.net', '9456642385');
INSERT INTO `Customers` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('7', 'Frederick', 'Braun', 'itzel.beahan@example.com', '9448906606');
INSERT INTO `Customers` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('8', 'Frederick', 'Kilback', 'johnathan.wisozk@example.com', '9290679311');
INSERT INTO `Customers` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('9', 'Frederick', 'Orn', 'missouri87@example.org', '9228624339');
INSERT INTO `Customers` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('10', 'Jordyn', 'Jerde', 'edach@example.com', '9443126821');
-- -----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Masters
(
	id SERIAL,
	firstname VARCHAR(20),
	lastname VARCHAR(30),
	email VARCHAR(120) UNIQUE,
    phone BIGINT
);
INSERT INTO `Masters` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('1', 'Jordyn', 'McDermott', 'shaun.ferry@example.org', '9840726982');
INSERT INTO `Masters` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('2', 'Jordyn', 'Runolfsdottir', 'doug57@example.net', '9260442904');
INSERT INTO `Masters` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('3', 'Jordyn', 'Haag', 'lhoeger@example.net', '9984574866');
INSERT INTO `Masters` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('4', 'Jordyn', 'Stanton', 'tconsidine@example.org', '9499932439');
INSERT INTO `Masters` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('5', 'Jordyn', 'Wolff', 'effertz.laverna@example.org', '9251665331');
INSERT INTO `Masters` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('6', 'Lina', 'Macejkovic', 'smitham.demarcus@example.net', '9762021357');
INSERT INTO `Masters` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('7', 'Jerrell', 'Stanton', 'deja00@example.com', '9191103792');
INSERT INTO `Masters` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('8', 'Golden', 'Wisozk', 'frida19@example.com', '9331565437');
INSERT INTO `Masters` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('9', 'Elisa', 'Balistreri', 'romaine27@example.org', '9372983850');
INSERT INTO `Masters` (`id`, `firstname`, `lastname`, `email`, `phone`) VALUES ('10', 'Reed', 'Bogan', 'zhyatt@example.com', '9924753974');
-- -----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Orders
(
	id SERIAL,
	customer_id BIGINT UNSIGNED NOT NULL,
	master_id BIGINT UNSIGNED NOT NULL,
	description TEXT,
	order_date DATE,
	FOREIGN KEY (customer_id) REFERENCES Customers(id),
	FOREIGN KEY (master_id) REFERENCES Masters(id)
);
INSERT INTO `Orders` (`id`, `customer_id`, `master_id`, `description`, `order_date`) VALUES ('1', '1', '2', 'Phone repair', '2023-07-23');
INSERT INTO `Orders` (`id`, `customer_id`, `master_id`, `description`, `order_date`) VALUES ('2', '2', '1', 'TV repair', '2023-07-15');
INSERT INTO `Orders` (`id`, `customer_id`, `master_id`, `description`, `order_date`) VALUES ('3', '4', '3', 'Phone repair', '2023-08-23');
INSERT INTO `Orders` (`id`, `customer_id`, `master_id`, `description`, `order_date`) VALUES ('4', '5', '5', 'TV repair', '2023-09-23');
INSERT INTO `Orders` (`id`, `customer_id`, `master_id`, `description`, `order_date`) VALUES ('5', '6', '4', 'Phone repair', '2023-01-11');
INSERT INTO `Orders` (`id`, `customer_id`, `master_id`, `description`, `order_date`) VALUES ('6', '10', '10', 'TV repair', '2023-02-12');
INSERT INTO `Orders` (`id`, `customer_id`, `master_id`, `description`, `order_date`) VALUES ('7', '3', '6', 'TV repair', '2023-03-13');
INSERT INTO `Orders` (`id`, `customer_id`, `master_id`, `description`, `order_date`) VALUES ('8', '7', '7', 'TV repair', '2023-04-14');
INSERT INTO `Orders` (`id`, `customer_id`, `master_id`, `description`, `order_date`) VALUES ('9', '9', '8', 'TV repair', '2023-05-15');
INSERT INTO `Orders` (`id`, `customer_id`, `master_id`, `description`, `order_date`) VALUES ('10', '8', '9', 'Phone repair', '2023-06-16');
-- -----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE Shipments
(
	id SERIAL,
	order_id BIGINT UNSIGNED NOT NULL,
	shipment_date DATE,
	FOREIGN KEY (order_id) REFERENCES Orders(id)
);
INSERT INTO `Shipments` (`id`, `order_id`, `shipment_date`) VALUES ('1', '1', '2023-07-31');
INSERT INTO `Shipments` (`id`, `order_id`, `shipment_date`) VALUES ('2', '2', '2023-07-20');
INSERT INTO `Shipments` (`id`, `order_id`, `shipment_date`) VALUES ('3', '4', '2023-08-24');
INSERT INTO `Shipments` (`id`, `order_id`, `shipment_date`) VALUES ('4', '5', '2023-09-27');
INSERT INTO `Shipments` (`id`, `order_id`, `shipment_date`) VALUES ('5', '6', '2023-01-20');
INSERT INTO `Shipments` (`id`, `order_id`, `shipment_date`) VALUES ('6', '10', '2023-02-19');
INSERT INTO `Shipments` (`id`, `order_id`, `shipment_date`) VALUES ('7', '3', '2023-03-27');
INSERT INTO `Shipments` (`id`, `order_id`, `shipment_date`) VALUES ('8', '7', '2023-04-31');
INSERT INTO `Shipments` (`id`, `order_id`, `shipment_date`) VALUES ('9', '9', '2023-05-16');
INSERT INTO `Shipments` (`id`, `order_id`, `shipment_date`) VALUES ('10', '8', '2023-06-18');


