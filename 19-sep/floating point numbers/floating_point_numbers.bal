import ballerina/io;

public function main() {
    float x = 1.0;

    int n = 5;

    // Numeric literals can use `f` or `F` suffix for them to interpreted as `float` values.
    // (Similarly, the `d` or `D` suffix cab be used for `decimal`).
    var f = 12345f;
    io:println(f is float);

    // No implicit conversions between integers and floating point values are allowed.
    // You can use `<T>` for explicit conversions.
    float y = x + <float>n;

    io:println(y);
}