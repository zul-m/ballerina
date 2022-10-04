import ballerina/io;
import ballerinax/java.jdbc;

// Defines a record to load the query result.
type Customer record {|
    int customerId;
    string lastName;
    string firstName;
    int registrationId;
    float creditLimit;
    string country;
|};

public function main() returns error? {

    // Runs the prerequisite setup for the example.
    check initialize();

    // Initializes the JDBC client. The `jdbcClient` can be reused to access the database throughout the application execution.
    jdbc:Client jdbcClient = check new ("jdbc:h2:file:./target/bbes/java_jdbc", "rootUser", "rootPass");

    float creditLimit = 5000;

    // Query table with a condition.
    stream<Customer, error?> resultStream =
            jdbcClient->query(`SELECT * FROM Customers WHERE creditLimit > ${creditLimit};`);

    // Iterates the result stream.
    check from Customer customer in resultStream
        do {
            io:println(`Customer details: ${customer}`);
        };

    // Closes the stream to release the resources.
    check resultStream.close();

    // Closes the JDBC client.
    check jdbcClient.close();

    // Performs the cleanup after the example.
    check cleanup();
}