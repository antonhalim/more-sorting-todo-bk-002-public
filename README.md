---
tags: logic, cs, monkey patching, todo
languages: ruby
resources: 2
---

# More Sorting

## Overview

In today's todo, you're going to be adding two methods, `#sort_by_length` and `#sort_by_remainder`, to Ruby's Array class.

## Sort by Length

This method should sort an array of strings by their length.

```ruby
hipster_interests = ["mircobrewing", "vinyl", "audio fidelity"]
hipster_interests.sort_by_length
# => [ "vinyl", "mircobrewing", "audio fidelity"]
```

If there are multiple strings of the same length ("kale" and "taco"), it should arrange them alphabetically.

```ruby
hipster_foods = ["kombucha", "kale", "quinoa", "pickles", "taco"]
hipster_foods.sort_by_length
# => [ "kale", "taco", "quinoa", "pickles", "kombucha"]
```

## Sort by Remainder

Take a look at the division below:

```
21 / 7 = 3
```

The number 21 is called the dividend, the number 7 is called the divisor, and the number 3 (the result) is called the quotient.

Sometimes division isn't so pretty:

```
22 / 7 = 3.14285714... (or 3 with 1 remaining)

23 / 7 = 3.28571428... (or 3 with 2 remaining)

27 / 7 = 3.85714285... (or 3 with 6 remaining)

28 / 7 = 4             (or 4 with 0 remaining)
```

The method `#sort_by_remainder` accepts one argument, the divisor (we've been using 7 in these examples). It works on an array of numbers, each of which will be a dividend. It should sort these numbers, or dividents, by the resulting remainders when they are divided by the method's argument.

```
numbers      = [19, 21, 67, 36, 55]
numbers.sort_by_remainder(7)
# => [21, 36, 67, 19, 55]
```

If the computer was asked to "show its work", the print out might look something like this:

```
# 19 / 7 = 2.714.... (or 2 with 5 remaining)
# 21 / 7 = 3         (or 3 with 0 remaining)
# 67 / 7 = 9.571.... (or 9 with 4 remaining)
# 36 / 7 = 5.142.... (or 5 with 1 remaining)
# 55 / 7 = 7.857.... (or 7 with 6 remaining)

# numbers    = [19, 21, 67, 36, 55]
# remainders   [ 5,  0,  4,  1,  6]

# sorted_numbers = [21, 36, 67, 19, 55]
# remainders       [ 0,  1,  4,  5,  6]
```

If there is a tie, for instance, say you had an array of the following variable:

```ruby
numbers = [10, 29, 7, 6, 13, 16, 11]
```

If `#sort_by_remainder` was called on this array with the divisor of 5, you could find all the remainders for each number when it is divided by 5:

```ruby
numbers        = [10, 29, 7, 6, 13, 16, 11]
# remainders   = [ 0,  4, 2, 1,  3,  1,  1]
```

Notice how the numbers 6, 16, and 11 all have a reminder of 1. Therefore, they should be sorted by how big they are (6 then 11 then 16).

```ruby
numbers.sort_by_remainder(5)
# =>         [10, 6, 11, 16, 7, 13, 29]
# remainders [ 0, 1,  1,  1, 2,  3,  4]
```

## Resources

* [Difference between Modulus and Division Operators in Ruby](https://railssavvy.wordpress.com/2013/01/30/difference-between-modulus-and-division-operator-in-ruby/)
* [Ruby's Sort By Method](http://ruby-doc.org/core-2.1.1/Enumerable.html#method-i-sort_by)
