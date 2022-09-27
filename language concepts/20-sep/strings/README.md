## Strings

The `string` type represents immutable sequence of zero or more Unicode characters. There is no separate character type: a character is represented by a `string` of length 1.

Two `string` values are `==` if both sequences have the same characters. We can use `<`, `<=`, `>`, and `>=` operators on `string` values and they work by comparing code points. Unpaired surrogates are not allowed.

### Discussions

Search for any Unicode character on [UnicodePlus](https://unicodeplus.com/). The "\u{1F600}" value will return the Unicode character ["😀 (grinning face)"](https://unicodeplus.com/U+1F600).