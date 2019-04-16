
-- PTPL_DDL.sql
-- script to create Lending Database,Create table
-- CST 8334
-- Year: 2019
-- Last Modified: 2019-02-09
-- Author:Bo Zhu
-- Modify:Yali Fu


DROP TABLE Insurance_T;
DROP TABLE Transaction_T;
DROP TABLE Opportunity_T;
DROP TABLE User_T;
DROP TABLE Operation_T;
DROP TABLE Credential_T;


CREATE TABLE Credential_T (
credentialID CHAR( 6 ),
credentialName VARCHAR( 20 ),                                      
CONSTRAINT PK_Credential PRIMARY KEY( credentialID )
);


CREATE TABLE Operation_T (
operationID CHAR( 6 ),                
amount DECIMAL( 9, 2 ) NOT NULL,
amountRepaid DECIMAL( 9, 2 ) NOT NULL,
dueDate DATE NOT NULL,
duePenalty DECIMAL( 9, 2 ) NOT NULL,
interest DECIMAL( 4, 2 ) NOT NULL, 
createDate DATE NOT NULL,
CONSTRAINT PK_Operation PRIMARY KEY( operationID )
);


CREATE TABLE User_T (
userID CHAR( 6 ),
credentialID CHAR( 6 ) NULL,           
userName VARCHAR( 30 ) NOT NULL,
password VARCHAR( 20 ) NOT NULL,
firstName VARCHAR( 20 ) NOT NULL,
lastName VARCHAR( 20 ) NOT NULL,
DOB DATE NOT NULL,
email VARCHAR( 30 ) NOT NULL,
phone VARCHAR( 20 ) NOT NULL, 
creditScore CHAR( 20 ) NULL,  
createDate DATE NOT NULL,
CONSTRAINT PK_User PRIMARY KEY( userID ), 
CONSTRAINT FK_credentialID FOREIGN KEY( credentialID ) REFERENCES Credential_T( credentialID )
);

CREATE TABLE Opportunity_T (
opportunityID CHAR(6),
borrowerID CHAR(6) NOT NULL,
lenderID CHAR(6) NULL,
operationID CHAR( 6 ) NULL,            
oppoTitle VARCHAR(100) NOT NULL,
oppoDescription VARCHAR( 255 ) NOT NULL,
status VARCHAR ( 20 ) NOT NULL,
fundAmount DECIMAL( 9, 2 ) NOT NULL,
expectedFundDate DATE,
createDate DATE NOT NULL,
CONSTRAINT PK_Opportunity PRIMARY KEY( opportunityID ),
CONSTRAINT FK1_borrowerID FOREIGN KEY( borrowerID ) REFERENCES User_T( userID ),
CONSTRAINT FK2_lenderID FOREIGN KEY( lenderID  ) REFERENCES User_T( userID ),
CONSTRAINT FK3_operationID FOREIGN KEY( operationID  ) REFERENCES Operation_T( operationID )
);

CREATE TABLE Transaction_T (
transactionID CHAR( 20 ),
userID CHAR( 6 ) NOT NULL,
opportunityID CHAR(6) NOT NULL,
amount DECIMAL( 9, 2 ) NOT NULL,
tran_type CHAR( 5 ) NOT NULL,
transactionDate DATE NOT NULL,
createDate DATE NOT NULL,
CONSTRAINT PK_Transaction PRIMARY KEY( transactionID ),
CONSTRAINT FK1_userID FOREIGN KEY( userID ) REFERENCES User_T( userID ),
CONSTRAINT FK2_opportunityID FOREIGN KEY( opportunityID  ) REFERENCES Opportunity_T( opportunityID )
);

CREATE TABLE Insurance_T (
insuranceNo CHAR( 6 ),
opportunityID CHAR( 6 ) NOT NULL,
insuranceCompany VARCHAR( 30 ) NOT NULL,
insuranceAmount DECIMAL( 9,2 ) NOT NULL,
effectiveDate DATE NOT NULL,
CONSTRAINT PK_Insurance PRIMARY KEY( insuranceNo ),
CONSTRAINT FK_opportunityID FOREIGN KEY( opportunityID ) REFERENCES Opportunity_T( opportunityID )
);






