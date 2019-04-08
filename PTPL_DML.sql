-- PTPL_DML.sql
-- script to populate Lending Database
-- CST 8334
-- Year: 2019
-- Last Modified: 2019-02-09
-- Aunthor: Bo Zhu
-- Modify:Yali Fu


INSERT INTO Credential_T (credentialID, credentialName) VALUES ('C00001', 'Borrower');
INSERT INTO Credential_T (credentialID, credentialName) VALUES ('C00002', 'Lender');
INSERT INTO Credential_T (credentialID, credentialName) VALUES ('C00003', 'Administrator');
INSERT INTO Credential_T (credentialID, credentialName) VALUES ('C00004', 'Moderator');

INSERT INTO Operation_T (operationID, amount, amountRepaid, dueDate, duePenalty, interest, createDate) VALUES ('000001', 100000.00, 10000.00, to_date('25/03/2019','DD/MM/YYYY'), 5000.00, 10.00, to_date('21/01/2019','DD/MM/YYYY'));
INSERT INTO Operation_T (operationID, amount, amountRepaid, dueDate, duePenalty, interest, createDate) VALUES ('000002', 1500000.00, 20000.00, to_date('20/03/2019','DD/MM/YYYY'), 8000.00, 20.00, to_date('21/01/2019','DD/MM/YYYY'));

INSERT INTO User_T (userID, credentialID, userName, password, firstName, lastName, DOB, email, phone, creditScore, createDate) VALUES ('U00001', '', 'stanley00069', '1234abc', 'Stanley', 'Smith', to_date('21/04/1980','DD/MM/YYYY'),'stanley001@gmail.com', '613747999', '', to_date('01/12/2018','DD/MM/YYYY'));
INSERT INTO User_T (userID, credentialID, userName, password, firstName, lastName, DOB, email, phone, creditScore, createDate) VALUES ('U00002', '', 'an000022', '1234abc', 'Joanna', 'Lee',to_date('21/01/1976','DD/MM/YYYY'), 'joanna@hotmail.com', '6135566785', '', to_date('02/11/2018','DD/MM/YYYY'));
INSERT INTO User_T (userID, credentialID, userName, password, firstName, lastName, DOB, email, phone, creditScore, createDate) VALUES ('U00003', '', 'xixi0927', '1234abc', 'Bob', 'Hill',to_date('14/11/1990','DD/MM/YYYY'), 'bob9090@gmail.com', '6137332293', '', to_date('03/10/2018','DD/MM/YYYY'));
INSERT INTO User_T (userID, credentialID, userName, password, firstName, lastName, DOB, email, phone, creditScore, createDate) VALUES ('U00004', '', 'yang67890', '1234abc', 'Ashley' , 'Foster', to_date('16/12/1989','DD/MM/YYYY'),'ashley@gmail.com', '6132237788', '', to_date('04/09/2018','DD/MM/YYYY'));
INSERT INTO User_T (userID, credentialID, userName, password, firstName, lastName, DOB, email, phone, creditScore, createDate) VALUES ('U00005', '', 'frank0009', '1234abc', 'Ruby', 'Kitchener', to_date('21/03/1979','DD/MM/YYYY'),'ruby@gmial.com', '6132218989', '', to_date('05/10/2018','DD/MM/YYYY'));
INSERT INTO User_T (userID, credentialID, userName, password, firstName, lastName, DOB, email, phone, creditScore, createDate) VALUES ('U00006', '', 'zhu00069', '1234abc', 'Mia', 'Clark', to_date('27/05/1980','DD/MM/YYYY'),'mia', 'mia001@gmail.com', '', to_date('06/12/2018','DD/MM/YYYY'));
INSERT INTO User_T (userID, credentialID, userName, password, firstName, lastName, DOB, email, phone, creditScore, createDate) VALUES ('U00007', '', 'elena123', '1234abc', 'Elena' , 'Yang', to_date('21/10/1969','DD/MM/YYYY'),'elena999@gmail.com', '6132237788', '', to_date('07/12/2018','DD/MM/YYYY'));
INSERT INTO User_T (userID, credentialID, userName, password, firstName, lastName, DOB, email, phone, creditScore, createDate) VALUES ('U00008', '', 'bob1009', '1234abc', 'Esther', 'Kit', to_date('22/01/1991','DD/MM/YYYY'),'bob622@gmial.com', '6132208981', '', to_date('08/11/2018','DD/MM/YYYY'));
INSERT INTO User_T (userID, credentialID, userName, password, firstName, lastName, DOB, email, phone, creditScore, createDate) VALUES ('U00009', '', 'qqxx1234', '1234abc', 'Mary', 'Lee', to_date('19/03/1983','DD/MM/YYYY'), 'mary999@gmail.com', '6139997878', '', to_date('09/11/2018','DD/MM/YYYY'));

INSERT INTO Opportunity_T (opportunityID, borrowerID, lenderID, operationID, oppoTitle, oppoDescription, status, fundAmount, expectedFundDate, createDate) VALUES ('OP000A', 'U00001', 'U00006', '000001', 'Financial Dilemma at BBT', 'If approved, the merger of BBT and SunTrust would create the sixth-biggest bank in the U.S., large enough to compete against the country’s largest lenders.', 'CLOSE', 500000.00, to_date('12/01/2018','DD/MM/YYYY'), to_date('12/01/2019','DD/MM/YYYY'));
INSERT INTO Opportunity_T (opportunityID, borrowerID, lenderID, operationID, oppoTitle, oppoDescription, status, fundAmount, expectedFundDate, createDate) VALUES ('OP000B', 'U00002', 'U00007', '000002', 'Germany Restricts Facebook’s Data Gathering', 'The competition authority said the company could no longer combine data from different sources without explicit permission from users.', 'CLOSE', 1500000.00, to_date('01/01/2019','DD/MM/YYYY'), to_date('12/01/2019','DD/MM/YYYY'));
INSERT INTO Opportunity_T (opportunityID, borrowerID, lenderID, operationID, oppoTitle, oppoDescription, status, fundAmount, expectedFundDate, createDate) VALUES ('OP000C', 'U00003', '', '', 'Brexit stalemate scars prosperity, says Bank of England', 'According to the Bank of England latest assessment, the uncertainty of the last few months has left the UK in the weakest growth environment since the crisis - and those scars will linger.', 'OPEN', 500000.00, to_date('12/01/2019','DD/MM/YYYY'), to_date('12/01/2019','DD/MM/YYYY'));
INSERT INTO Opportunity_T (opportunityID, borrowerID, lenderID, operationID, oppoTitle, oppoDescription, status, fundAmount, expectedFundDate, createDate) VALUES ('OP000D', 'U00004', '', '', 'OPP Title4', 'OPP Description4', 'OPEN', 1500000.00, to_date('05/01/2019','DD/MM/YYYY'), to_date('12/01/2019','DD/MM/YYYY'));
INSERT INTO Opportunity_T (opportunityID, borrowerID, lenderID, operationID, oppoTitle, oppoDescription, status, fundAmount, expectedFundDate, createDate) VALUES ('OP000E', 'U00005', '', '', 'OPP Title5', 'OPP Description5', 'OPEN', 2000000.00, to_date('25/11/2019','DD/MM/YYYY'), to_date('12/01/2019','DD/MM/YYYY'));
INSERT INTO Opportunity_T (opportunityID, borrowerID, lenderID, operationID, oppoTitle, oppoDescription, status, fundAmount, expectedFundDate, createDate) VALUES ('OP000F', 'U00006', '', '', 'OPP Title6', 'OPP Description6', 'PROCESSING', 1800000.00, to_date('22/10/2019','DD/MM/YYYY'), to_date('12/01/2019','DD/MM/YYYY'));

INSERT INTO Transaction_T (transactionID, userID, opportunityID, amount, tran_type, transactionDate, createDate) VALUES ('T00001', 'U00001', 'OP000A', 10000.00, 'PAYEE', to_date('01/01/2019','DD/MM/YYYY'), to_date('12/01/2018','DD/MM/YYYY'));
INSERT INTO Transaction_T (transactionID, userID, opportunityID, amount, tran_type, transactionDate, createDate) VALUES ('T00002', 'U00002', 'OP000B', 20000.00, 'PAYER', to_date('01/01/2019','DD/MM/YYYY'), to_date('12/01/2018','DD/MM/YYYY'));


INSERT INTO Insurance_T (insuranceNo, opportunityID, insuranceCompany, insuranceAmount, effectiveDate) VALUES ('I00001', 'OP000A', 'Insurance Company1', 10000.00, to_date('10/02/2019','DD/MM/YYYY')); 
INSERT INTO Insurance_T (insuranceNo, opportunityID, insuranceCompany, insuranceAmount, effectiveDate) VALUES ('I00002', 'OP000B', 'Insurance Company2', 12000.00, to_date('01/02/2019','DD/MM/YYYY'));




