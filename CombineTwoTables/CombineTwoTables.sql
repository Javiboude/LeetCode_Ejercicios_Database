CREATE DATABASE CombineTwoTables;
USE CombineTwoTables;

CREATE TABLE Person (
    personId INT PRIMARY KEY,
    lastName VARCHAR(255),
    firstName VARCHAR(255)
);

CREATE TABLE Address (
    addressId INT PRIMARY KEY,
    personId INT,
    city VARCHAR(255),
    state VARCHAR(255),
    FOREIGN KEY (personId) REFERENCES Person(personId)
);

Select * From Person;
Select * From Address;

SELECT p.firstName,p.lastName, a.city, a.state FROM Person p LEFT JOIN Address a ON p.personId = a.personId;