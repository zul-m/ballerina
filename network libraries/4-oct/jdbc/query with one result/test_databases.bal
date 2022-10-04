import ballerina/sql;
import ballerinax/java.jdbc;

// Initializes the database as a prerequisite to the example.
function initialize() returns sql:Error? {
    jdbc:Client jdbcClient = check new ("jdbc:h2:file:./target/bbes/java_jdbc", "rootUser", "rootPass");

    // Creates a table in the database.
    _ = check jdbcClient->execute(`CREATE TABLE Customers
            (customerId INTEGER NOT NULL AUTO_INCREMENT, firstName VARCHAR(300), lastName  VARCHAR(300),
            registrationID INTEGER, creditLimit DOUBLE, country  VARCHAR(300), PRIMARY KEY (customerId))`);

    // Adds the records to the newly-created table.
    _ = check jdbcClient->execute(`INSERT INTO Customers
            (firstName, lastName, registrationID,creditLimit,country) VALUES
            ('Peter','Stuart', 1, 5000.75, 'USA')`);
    _ = check jdbcClient->execute(`INSERT INTO Customers
            (firstName, lastName, registrationID,creditLimit,country) VALUES
            ('Dan', 'Brown', 2, 10000, 'UK')`);

    check jdbcClient.close();
}