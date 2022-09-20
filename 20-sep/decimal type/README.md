## Decimal type

The `decimal` type is the third numeric type. It works like `int` and `float` types. It is a separate basic type and belongs to the `anydata` type.

There is no implicit conversions between `decimal` and other numeric types. It can represent `decimal` fractions exactly and it preserves precision. The `decimal` type does not include infinity, NaN, or negative zero. It supports floating-point precision to 34 decimal digits.

### Discussions

Q: What is IEEE 754

A: The **IEEE Standard for Floating-Point Arithmetic (IEEE 754)** is a [technical standard](https://codedocs.org/what-is/technical-standard) for floating-point arithmetic established in 1985 by the Institute of Electrical and Electronics Engineers (IEEE). The standard addressed many problems found in the diverse floating-point implementations that made them difficult to use reliably and [portably](https://codedocs.org/what-is/software-portability). Many hardware floating-point units use the IEEE 754 standard.

The standard defines:

 - *arithmetic formats:* sets of [binary](https://codedocs.org/what-is/binary-code) and [decimal](https://codedocs.org/what-is/decimal) floating-point data, which consist of finite numbers (including signed zeros and subnormal numbers), infinities, and special "not a number" values (NaNs)
 - *interchange formats:* encodings (bit strings) that may be used to exchange floating-point data in an efficient and compact form
 - *rounding rules:* properties to be satisfied when rounding numbers during arithmetic and conversions
 - *operations:* arithmetic and other operations (such as trigonometric functions) on arithmetic formats
 - *exception handling:* indications of exceptional conditions (such as division by zero, overflow, etc.)

An IEEE 754 format is a "set of representations of numerical values and symbols". A format may also include how the set is encoded.

A floating-point format is specified by:

 - a base (also called *radix*) *b*, which is either 2 (binary) or 10 (decimal) in IEEE 754;
 - a precision *p*;
 - an exponent range from *emin* to *emax*, with *emin* = 1 − *emax* for all IEEE 754 formats.

A format comprises:

 - Finite numbers, which can be described by three integers: *s* = a *sign* (zero or one), *c* = a *significand* (or *coefficient*) having no more than *p* digits when written in base *b*, and *q* = an *exponent* such that *emin* ≤ *q* + *p* − 1 ≤ *emax*. Moreover, there are two zero values, called signed zeros: the sign bit specifies whether a zero is +0 (positive zero) or −0 (negative zero).
 - Two infinities: +∞ and −∞.
 - Two kinds of NaN (not-a-number): a quiet NaN (qNaN) and a signaling NaN (sNaN).

More on [CodeDocs](https://codedocs.org/what-is/ieee-754).