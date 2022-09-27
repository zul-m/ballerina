import ballerina/io;

// You can have Unicode identifiers.
function พิมพ์ชื่อ(string ชื่อ) {
    // Use \u{H} to specify character using Unicode code point in hex.
   io:println(ชื่\u{E2D});
}

// Prefix non-identifier character with \\.
string first\ name = "Ballerina";

public function main() {
    พิมพ์ชื่อ("ආයුබෝවන්");
}