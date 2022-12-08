CREATE TABLE Product(
  id INT PRIMARY KEY,
  name VARCHAR(30),
  price INT,
  location VARCHAR(30)
);
INSERT INTO Product VALUES(1, 'Aisha', 100, 'Aiginia');
INSERT INTO Product VALUES(2, 'Abhishek', 200, 'Kalpana');
INSERT INTO Product VALUES(3, 'Amlan', 50, 'Old Station');
INSERT INTO Product VALUES(4, 'Sauransu', 300, 'Unit-1');
INSERT INTO Product VALUES(5, 'Anjali', 70, 'ITER');

CREATE TABLE Manufacturer(
  id INT,
  company_name VARCHAR(30),
  product_id VARCHAR(5),
  address VARCHAR(20),
  FOREIGN KEY(id) REFERENCES Product(id)
);
INSERT INTO Manufacturer VALUES(2, 'Virtusa', 'A01', 'Khandagiri');
INSERT INTO Manufacturer VALUES(3, 'Microsoft', 'A02', 'Patia');
INSERT INTO Manufacturer VALUES(3, 'Hexaware', 'A03', 'Udaygiri');
INSERT INTO Manufacturer VALUES(1, 'Informatica', 'A04','Jagmohan Nagar');
INSERT INTO Manufacturer VALUES(4, 'Meta.net', 'A05', 'Bapuji Nagar');


SELECT company_name FROM Product, Manufacturer
WHERE Product.id = Manufacturer.id
AND product_id = 'A02';
