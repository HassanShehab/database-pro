CREATE DATABASE Shop;
CREATE TABLE Customer(
    id int AUTO_INCREMENT,
    fullname varchar(25),
    address varchar(25),
    phone varchar(15),
    age int ,
    password int ,
    PRIMARY KEY (id)
);
CREATE TABLE Products(
    id int AUTO_INCREMENT,
    name varchar(25),
    category varchar(12),
    price varchar(15),
    PRIMARY KEY (id)
);
CREATE TABLE Orders(
    id int AUTO_INCREMENT,
    customerID int ,
    FOREIGN KEY (customerID) REFERENCES Customer(id),
    productID int ,
    FOREIGN KEY (productID) REFERENCES Products(id),
    data varchar(25),
    amount varchar(12),
    PRIMARY KEY (id)
);
CREATE TABLE Department(
    id int AUTO_INCREMENT,
    name varchar(25),
    PRIMARY KEY (id)
);
CREATE TABLE Employees(
    id int AUTO_INCREMENT,
    name varchar(25),
    salary int ,
    departmentID int ,
    FOREIGN KEY (departmentID) REFERENCES Department(id),
    PRIMARY KEY (id)
);
CREATE TABLE Admins(
    id int AUTO_INCREMENT,
    email varchar(25),
    password int ,
    employeeID int ,
    FOREIGN KEY (employeeID) REFERENCES Employees(id),
    PRIMARY KEY (id)
);