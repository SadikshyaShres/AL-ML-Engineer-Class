# Python Functions, Iterators, Generators, and Functional Tools

This note explains Python functions, iterators, generators, lambda functions, `map()`, `filter()`, and `reduce()` with simple examples.

---

## 1. Functions in Python

A **function** is a reusable block of code that performs a specific task.

### Why do we use functions?

Functions help us:

- Avoid repeating code
- Organize a program
- Make code easier to understand
- Reuse a result
- Find and correct errors easily

---

## 2. The `def` Statement

The keyword `def` means **define**. It tells Python that we are creating a function.

### Syntax

```python
def function_name():
    # Function code
```

### Example

```python
def greet():
    print("Hello")

greet()
```

### Output

```text
Hello
```

### Explanation

- `def` defines the function.
- `greet` is the function name.
- `()` can contain parameters.
- `:` begins the function body.
- The indented code belongs to the function.
- `greet()` calls and runs the function.

Defining a function does not run it. A function runs only when it is called.

---

## 3. Parameters and Arguments

A **parameter** is a variable written in a function definition.

An **argument** is the actual value passed when calling the function.

```python
def greet(name):
    print("Hello", name)

greet("Sadikshya")
```

In this example:

- `name` is a parameter.
- `"Sadikshya"` is an argument.

---

## 4. Using `print()`

The `print()` function displays a value on the screen.

```python
def function_with_print():
    print("Hello")

function_with_print()
```

### Output

```text
Hello
```

`print()` displays a readable version of a value, but it does not change the original data type.

```python
age = 25

print(age)
print(type(age))
```

### Output

```text
25
<class 'int'>
```

The variable `age` is still an integer.

### Limitation of `print()`

A function that only prints a value does not return that value for later use.

```python
def add_numbers(a, b):
    print(a + b)

result = add_numbers(5, 3)

print(result)
```

### Output

```text
8
None
```

The function displays `8`, but `result` contains `None` because the function does not return a value.

---

## 5. Using `return`

The `return` statement sends a value back to where the function was called.

The returned value can be stored and reused.

```python
def add_numbers(a, b):
    return a + b

result = add_numbers(5, 3)

print(result)
print(result * 2)
```

### Output

```text
8
16
```

---

## 6. Difference Between `print()` and `return`

| `print()` | `return` |
|---|---|
| Displays a value | Sends a value back |
| Mainly used to show output | Allows the result to be reused |
| Does not return the displayed value | Returns a specific value |
| Does not normally end the function | Normally ends the function |

### Example

```python
def using_print():
    print(10)

def using_return():
    return 10

value1 = using_print()
value2 = using_return()

print("Value from print:", value1)
print("Value from return:", value2)
```

### Output

```text
10
Value from print: None
Value from return: 10
```

---

## 7. Prime Number Function

A **prime number** is a number greater than `1` that can only be divided evenly by `1` and itself.

Examples:

```text
2, 3, 5, 7, 11, 13
```

The number `1` is not a prime number.

```python
def is_prime(number):
    if number <= 1:
        return False

    for divisor in range(2, number):
        if number % divisor == 0:
            return False

    return True
```

### Using the function

```python
number = 7

if is_prime(number):
    print(number, "is a prime number")
else:
    print(number, "is not a prime number")
```

### Output

```text
7 is a prime number
```

The function returns `False` if it finds a number that divides evenly. If it does not find a divisor, it returns `True`.

---

# Iterators

## 8. What Is an Iterable?

An **iterable** is an object whose items can be processed one at a time.

Examples of iterables include:

- Strings
- Lists
- Tuples
- Sets
- Dictionaries
- Ranges

```python
fruits = ["apple", "banana", "mango"]

for fruit in fruits:
    print(fruit)
```

---

## 9. What Is an Iterator?

An **iterator** is an object that returns items from an iterable one at a time.

Python provides two important built-in functions:

- `iter()` creates an iterator.
- `next()` returns the next item.

### Example

```python
numbers = [10, 20, 30]

number_iterator = iter(numbers)

print(next(number_iterator))
print(next(number_iterator))
print(next(number_iterator))
```

### Output

```text
10
20
30
```

Calling `next()` again causes a `StopIteration` error because there are no more items.

---

## 10. Iterator Over a String

A string is iterable because its characters can be processed one at a time.

```python
word = "Python"

word_iterator = iter(word)

print(next(word_iterator))
print(next(word_iterator))
print(next(word_iterator))
```

### Output

```text
P
y
t
```

Each time `next()` is called, Python returns the next character.

---

## 11. Why Are Iterators Used?

Iterators are useful because they:

- Process items one at a time
- Avoid manual indexing
- Can save memory
- Work well with large collections
- Are automatically used by `for` loops

```python
colors = ["red", "green", "blue"]

for color in colors:
    print(color)
```

A `for` loop uses iterator operations automatically in the background.

---

# Generators

## 12. What Is a Generator?

A **generator** is a special type of iterator.

It is written like a normal function, but it uses the `yield` keyword to produce values one at a time.

```python
def generate_numbers():
    yield 1
    yield 2
    yield 3
```

Calling the function creates a generator object:

```python
numbers = generate_numbers()

print(next(numbers))
print(next(numbers))
print(next(numbers))
```

### Output

```text
1
2
3
```

---

## 13. Why Are Generators Used?

Generators:

- Produce values one at a time
- Create values only when needed
- Save memory
- Remember where execution stopped
- Work well with large datasets
- Can represent long sequences

---

## 14. Why Use `yield` Instead of `return`?

`return` ends the function and sends a value back.

`yield` pauses the function, sends a value, and remembers the function's current state. The function can resume later from the same position.

| `return` | `yield` |
|---|---|
| Ends the function | Pauses the function |
| Usually sends one final value | Can produce multiple values |
| Does not resume afterward | Resumes where it paused |
| Used in regular functions | Used in generator functions |

### Example using `return`

```python
def regular_function():
    return 10
    return 20

print(regular_function())
```

### Output

```text
10
```

The second `return` does not run because the first `return` ends the function.

### Example using `yield`

```python
def generator_function():
    yield 10
    yield 20

values = generator_function()

print(next(values))
print(next(values))
```

### Output

```text
10
20
```

---

## 15. Generator for Cubes

The cube of a number is calculated using `number ** 3`.

```python
def generate_cubes(n):
    for number in range(n):
        yield number ** 3

for cube in generate_cubes(5):
    print(cube)
```

### Output

```text
0
1
8
27
64
```

> Use `** 3` to calculate a cube, not `+ 3`.

---

## 16. Fibonacci Sequence Generator

In the Fibonacci sequence, each number is the sum of the previous two numbers.

```text
0, 1, 1, 2, 3, 5, 8, 13
```

The following generator produces the first `n` Fibonacci numbers:

```python
def generate_fibonacci(n):
    first = 0
    second = 1

    for count in range(n):
        yield first
        first, second = second, first + second
```

### Using the generator

```python
for number in generate_fibonacci(7):
    print(number)
```

### Output

```text
0
1
1
2
3
5
8
```

---

## 17. Generators and Iterators Together

A generator is automatically an iterator. Therefore, we can use `next()` directly with a generator object.

```python
def count_up_to(limit):
    number = 1

    while number <= limit:
        yield number
        number += 1

counter = count_up_to(3)

print(next(counter))
print(next(counter))
print(next(counter))
```

### Output

```text
1
2
3
```

---

# Lambda, Map, Filter, and Reduce

## 18. Lambda Functions

A **lambda function** is a small anonymous function written in one line.

A lambda function:

- Can accept one or more arguments
- Contains only one expression
- Automatically returns the result
- Is useful for short operations

### Syntax

```python
lambda arguments: expression
```

### Regular function

```python
def square(number):
    return number ** 2
```

### Lambda version

```python
square = lambda number: number ** 2

print(square(5))
```

### Output

```text
25
```

Lambda functions are commonly used with `map()`, `filter()`, and `reduce()`.

---

## 19. The `map()` Function

The `map()` function applies a function to every item in an iterable.

It requires:

1. A function
2. An iterable

### Syntax

```python
map(function, iterable)
```

### Example

```python
numbers = [1, 2, 3, 4]

squares = map(
    lambda number: number ** 2,
    numbers
)

print(list(squares))
```

### Output

```text
[1, 4, 9, 16]
```

`map()` returns an iterator, so `list()` is used to display all the results.

---

## 20. The `filter()` Function

The `filter()` function selects items that meet a condition.

- If the function returns `True`, the item is included.
- If the function returns `False`, the item is excluded.

### Syntax

```python
filter(function, iterable)
```

### Example

```python
numbers = [1, 2, 3, 4, 5, 6]

even_numbers = filter(
    lambda number: number % 2 == 0,
    numbers
)

print(list(even_numbers))
```

### Output

```text
[2, 4, 6]
```

---

## 21. The `reduce()` Function

The `reduce()` function combines all the items in an iterable and produces one final result.

It must be imported from the `functools` module.

```python
from functools import reduce
```

### Syntax

```python
reduce(function, iterable)
```

### Example

```python
from functools import reduce

numbers = [1, 2, 3, 4]

total = reduce(
    lambda first, second: first + second,
    numbers
)

print(total)
```

### Output

```text
10
```

The calculation happens like this:

```text
1 + 2 = 3
3 + 3 = 6
6 + 4 = 10
```

---

## 22. Difference Between `map()`, `filter()`, and `reduce()`

| Function | Purpose | Result |
|---|---|---|
| `map()` | Changes every item | Multiple transformed items |
| `filter()` | Selects items that meet a condition | Multiple selected items |
| `reduce()` | Combines all items | One final value |

### Combined example

```python
from functools import reduce

numbers = [1, 2, 3, 4, 5]

squares = map(
    lambda number: number ** 2,
    numbers
)

even_numbers = filter(
    lambda number: number % 2 == 0,
    numbers
)

total = reduce(
    lambda first, second: first + second,
    numbers
)

print(list(squares))
print(list(even_numbers))
print(total)
```

### Output

```text
[1, 4, 9, 16, 25]
[2, 4]
15
```

---

# Quick Summary

| Term | Meaning |
|---|---|
| Function | A reusable block of code |
| `def` | Defines a function |
| Parameter | A variable in a function definition |
| Argument | A value passed to a function |
| `print()` | Displays a value |
| `return` | Sends a reusable value back |
| Iterable | An object whose items can be processed |
| Iterator | Returns items one at a time |
| `iter()` | Creates an iterator |
| `next()` | Gets the next iterator item |
| Generator | A special iterator created like a function |
| `yield` | Produces a value and pauses the function |
| Lambda | A short anonymous function |
| `map()` | Changes every item |
| `filter()` | Selects items based on a condition |
| `reduce()` | Combines items into one result |
