#Data Definition Language 
#purpose - Creating and modify database objects 

Create Database company_db;
Use company_db;
Create Table Customer(
    Customer_id INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NUll,
    Last_Name VARCHAR(50),
    Age INT,
    Email VARCHAR (50),
    Address VARCHAR(200)
    );
    
Alter Table Customer
Add Phone_number VARCHAR(50);

#Data Manipulation Language

Insert into Customer(
First_Name, Last_Name, Age, Email, Address, Phone_number) values
('Sadikshya','Shrestha','29','shrestha@gmail.com','Ohio','9289181918'),
('Ishan','Moitra','37','moitra@yahoo.com','Maryland','2818191910'),
('Salisha','Pradhan','28','salisha@gmail.com','Texas','2718919101'),
('Deepika','KC','30','Deepika@gmail.com','Virgnia','7827382109');

Select * from Customer;

Update Customer
Set Address ='New York'
where Customer_ID=2;

Select * from Customer;

#Data Query Language

SELECT First_name, Email
FROM Customer;

Select * From Customer Where Age >28;

Create Table  Company_db.Order(
Order_id INT Primary Key,
Order_Name VARCHAR(50)

);



