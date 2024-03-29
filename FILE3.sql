CREATE DATABASE BURGERKING;

USE BURGERKING;

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
("HRITIK","DUBAI","REGULAR","2001-02-28"),
("SHAHRUKH","NEW-JEARSY","REGULAR","2003-01-13"),
("AMIR","CALIFORNIA","UNREGULAR","2001-12-01");

CREATE TABLE CUS_ORDER(
ORDERID INT PRIMARY KEY AUTO_INCREMENT,
ORDER_ITEM VARCHAR(20) NOT NULL,
CUSTOMER_ID INT ,
FOREIGN KEY(CUSTOMER_ID) REFERENCES  CUSTOMER(CUSID)
);

INSERT INTO CUS_ORDER(ORDER_ITEM,CUSTOMER_ID) VALUES ("MEXICAN BURGER",1),
("AMERICAN BURGER",2),("ITALIAN BURGER",3),("MAC MAHARAJA",3);

CREATE TABLE BACKUPTABLE(
ORDERID INT ,
ORDER_ITEM VARCHAR(20) ,
CUSTOMER_ID INT 
);

-- CREATE TRIGGER FOR DELETE DATA BACKUP

CREATE TRIGGER T1
AFTER DELETE ON CUS_ORDER
FOR EACH ROW 
INSERT INTO BACKUPTABLE VALUES(OLD.ORDERID,OLD.ORDER_ITEM,OLD.CUSTOMER_ID);

-- CREATE TRIGGER FOR INSERT  DATA BACKUP

CREATE TRIGGER T2
AFTER INSERT ON CUS_ORDER
FOR EACH ROW 
INSERT INTO BACKUPTABLE VALUES(NEW.ORDERID,NEW.ORDER_ITEM,NEW.CUSTOMER_ID);



DELETE  FROM CUS_ORDER WHERE ORDERID = 4;

SELECT * FROM CUS_ORDER;
SELECT * FROM BACKUPTABLE;

INSERT INTO CUS_ORDER(ORDER_ITEM,CUSTOMER_ID) VALUES ("MEXICAN PIZZA",3);




