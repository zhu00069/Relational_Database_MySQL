-- Shopping_Cart_DDL.sql
-- script to create shopping cart table
-- CST 8277
-- Year: 2019
-- Last Modified: 2019-04-06
-- Author: Bo Zhu(040684747), Yali Fu(040875010)

DROP TABLE IF EXISTS Audit;
DROP TABLE IF EXISTS OrderedProduct;
DROP TABLE IF EXISTS CustomerOrder;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS PlatformUserRole;
DROP TABLE IF EXISTS PlatformRole;
DROP TABLE IF EXISTS PlatformUser;


CREATE TABLE PlatformUser (
userID INT NOT NULL AUTO_INCREMENT,
userName VARCHAR( 20 ) NOT NULL,
pwHash VARCHAR( 20 ) NOT NULL,
CONSTRAINT PK_User PRIMARY KEY( userID )
);

CREATE TABLE PlatformRole (
roleID INT NOT NULL AUTO_INCREMENT,
roleName VARCHAR( 20 ) NOT NULL,
CONSTRAINT PK_Role PRIMARY KEY( roleID )
);

CREATE TABLE PlatformUserRole (
userID INT NOT NULL,
roleID INT NOT NULL,
CONSTRAINT FK_User FOREIGN KEY( userID ) REFERENCES PlatformUser( userID ),
CONSTRAINT FK_Role FOREIGN KEY( roleID ) REFERENCES PlatformRole( roleID )
);

CREATE TABLE Customer (
customerID INT NOT NULL AUTO_INCREMENT,
userID INT NOT NULL,
customerName VARCHAR( 30 ) NOT NULL,
email VARCHAR( 30 ) NOT NULL,
phone VARCHAR( 20 ) NOT NULL,
address VARCHAR( 80 ) NOT NULL,
CONSTRAINT PK_Customer PRIMARY KEY( customerID ),
CONSTRAINT FK_Customer_User FOREIGN KEY( userID ) REFERENCES PlatformUser( userID )
);

CREATE TABLE Category (
categoryID INT NOT NULL AUTO_INCREMENT,
categoryName VARCHAR( 20 ) NOT NULL,
CONSTRAINT PK_Category PRIMARY KEY( categoryID )
);

CREATE TABLE Product (
productID INT NOT NULL AUTO_INCREMENT,
productName VARCHAR(30) NOT NULL,
categoryID INT NOT NULL,
Price DOUBLE(6,2),
CONSTRAINT PK_Product PRIMARY KEY( productID),
CONSTRAINT FK_Category FOREIGN KEY ( categoryID ) REFERENCES Category( categoryID )
);

CREATE TABLE CustomerOrder (
customerOrderID INT NOT NULL AUTO_INCREMENT,
amount DOUBLE(6,2),
customerID INT NOT NULL,
CONSTRAINT PK_Customer_Order PRIMARY KEY ( customerOrderID ),
CONSTRAINT FK_Customer FOREIGN KEY ( customerID ) REFERENCES Customer( customerID )
);

CREATE TABLE OrderedProduct (
customerOrderID INT NOT NULL,
productID INT NOT NULL,
quantity INT NOT NULL,
CONSTRAINT FK_Customer_Order FOREIGN KEY ( customerOrderID ) REFERENCES CustomerOrder( customerOrderID ),
CONSTRAINT FK_Product FOREIGN KEY ( productID ) REFERENCES Product( productID )
);

CREATE TABLE Audit (
createDate DATE NOT NULL,
updateDate DATE NOT NULL
);