import ballerina/http;

// Base path of this service is `/demo`.
service /demo on new http:Listener(8080) {
    // You can combine the base path and the relative path to get the path of the resource (i.e., `/demo/greeting/hello`).
    resource function get greeting/hello(string name) returns string {
        return "Hello, " + name;
    }
}