CREATE DATABASE JOINTEST;

USE JOINTEST;

CREATE TABLE CUSTOMER(
CUSID INT PRIMARY KEY AUTO_INCREMENT,
CUSNAME VARCHAR(30) NOT NULL,
CUSCITY VARCHAR(30) NOT NULL,
CUSSTATUS VARCHAR(10) NOT NULL,
CUSDATEOFBIRTH DATE NOT NULL
);

INSERT INTO CUSTOMER(CUSNAME,CUSCITY,CUSSTATUS,CUSDATEOFBIRTH) VALUES 
("SALMAN","BERLIN","REGULAR","2002-06-15"),
("AKSAY","LONDON","UNREGULAER","2000-01-04"),
("HRITIK","DUBAI","REGULAR","2001-02-23"),
("SHAHRUKH","NEW-JEARSY","REGULAR","2003-01-13"),
("AMIR","CALIFORNIA","UNREGULAR","2001-12-01"),
(13,"SALMAN","BERLIN","REGULAR","2002-06-15"),
(17,"AKSAY","LONDON","UNREGULAER","2000-01-04"),
(16,"HRITIK","DUBAI","REGULAR","2001-02-23"),
(20,"SHAHRUKH","NEW-JEARSY","REGULAR","2003-01-13"),
(21,"AMIR","CALIFORNIA","UNREGULAR","2001-12-01");

CREATE TABLE PAYMENT(
PAYID INT PRIMARY KEY ,
AMOUNT BIGINT NOT NULL,
PAYMENT_MODE VARCHAR(10) NOT NULL,
PAYMENT_DATE DATE NOT NULL
);

INSERT INTO PAYMENT(PAYID,AMOUNT,PAYMENT_MODE,PAYMENT_DATE) VALUES
(1,1000,"ONLINE","2001-02-23"),
(2,1225,"OFLLINE","2001-12-01"),
(3,1354,"ONLINE","2003-01-13"),
(4,635,"ONLINE","2000-01-04"),
(5,5647,"OFFLINE","2002-06-15"),
(12,1000,"ONLINE","2001-02-23"),
(9,1225,"OFLLINE","2001-12-01"),
(8,1354,"ONLINE","2003-01-13"),
(15,635,"ONLINE","2000-01-04"),
(23,5647,"OFFLINE","2002-06-15");

DROP TABLE PAYMENT;

SELECT * FROM CUSTOMER;
SELECT * FROM PAYMENT;


-- INNER JOIN
SELECT CUSTOMER.CUSID,CUSTOMER.CUSNAME,CUSTOMER.CUSSTATUS,PAYMENT.AMOUNT,PAYMENT.PAYMENT_MODE
 FROM CUSTOMER INNER JOIN PAYMENT ON CUSTOMER.CUSID = PAYMENT.PAYID;
 
-- LEFT OUTER  JOIN
SELECT  CUSTOMER.CUSNAME,CUSTOMER.CUSSTATUS,CUSTOMER.CUSCITY,PAYMENT.AMOUNT,PAYMENT.PAYMENT_MODE
FROM CUSTOMER LEFT JOIN PAYMENT ON CUSTOMER.CUSID = PAYMENT.PAYID;

-- RIGHT OUTER JOIN 
SELECT  CUSTOMER.CUSNAME,CUSTOMER.CUSCITY,PAYMENT.AMOUNT,PAYMENT.PAYMENT_MODE
FROM CUSTOMER RIGHT JOIN PAYMENT ON CUSTOMER.CUSID = PAYMENT.PAYID;

-- FULL OUTER JOIN
SELECT * FROM CUSTOMER LEFT JOIN PAYMENT ON CUSTOMER.CUSID = PAYMENT.PAYID
UNION ALL
SELECT * FROM CUSTOMER RIGHT JOIN PAYMENT ON CUSTOMER.CUSID = PAYMENT.PAYID;







