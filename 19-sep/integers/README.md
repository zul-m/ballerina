## Integers

The `int` type is 64-bit signed integers (same as `long` in Java) and supports the usual arithmetic operators: `+ - / %`. The operator precedence is same as C. Integer overflow is a runtime error in Ballerina.

### Discussions

Q: What is `0xFFFF`?
A: The hexadecimal notation `0xFFFF` makes it clear that all bits in the number are `1`. The `65535` is the same number, but the binary representation isn't as obvious. It's only a count number. So this way of writing numbers has different semantics. Each hexadecimal digit stands for four bits, and an `F` means four 1-bits. Therefore `0xFFFF` is `0b1111111111111111` in binary. Hexadecimal notation is used when the programmer wants to make it clear that the binary representation is of importance, maybe more important than the precise numerical value. Find the discussion [here](https://stackoverflow.com/questions/13137151/why-use-0xffff-over-65535).