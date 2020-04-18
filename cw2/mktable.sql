DROP TABLE order_line;
DROP TABLE cust_order;
DROP TABLE product;
CREATE TABLE  product(
 id VARCHAR(6) PRIMARY KEY,
 description VARCHAR(100),
 price DECIMAL(10,2)
);
INSERT INTO product VALUES ('112233','Laptop Computer,YOGA 910',1300);
INSERT INTO product VALUES ('112234','Laptop Screen Monitor',100 );


CREATE TABLE cust_order(
 id INT PRIMARY KEY,
 status VARCHAR(10)
 );

 INSERT INTO cust_order VALUES (101,'incomplete');--Customer is adding to this
 INSERT INTO cust_order VALUES (102,'waiting');--Has not been assign to worker
 INSERT INTO cust_order VALUES (103,'waiting');--Has not been assign to worker
 INSERT INTO cust_order VALUES (104,'processing');--Is being assembled
 INSERT INTO cust_order VALUES (105,'ready');--ready for collection
 INSERT INTO cust_order VALUES (106,'complete');--been collected by customer

CREATE TABLE order_line(
	cust_order INT,
	product INT,
	qty INT,
	PRIMARY KEY (cust_order,product),
	FOREIGN KEY (cust_order) REFERENCES cust_order(id),
	FOREIGN KEY (product) REFERENCES product(id)
);
INSERT INTO order_line VALUES(105,112233,1);
INSERT INTO order_line VALUES(105,112234,1);