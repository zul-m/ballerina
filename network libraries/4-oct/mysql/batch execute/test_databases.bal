import ballerina/sql;
import ballerinax/mysql;

// Initializes the database as a prerequisite to the example.
function initialize() returns sql:Error? {
    mysql:Client mysqlClient = check new (user = "root", password = "Test@123");

    // Creates a database.
    _ = check mysqlClient->execute(`CREATE DATABASE CUSTOMER`);

    // Creates a table in the database.
    _ = check mysqlClient->execute(`CREATE TABLE CUSTOMER.Customers
            (customerId INTEGER NOT NULL AUTO_INCREMENT,
            firstName VARCHAR(300), lastName  VARCHAR(300),
            registrationID INTEGER, creditLimit DOUBLE,
            country  VARCHAR(300), PRIMARY KEY (customerId))`);

    check mysqlClient.close();
}