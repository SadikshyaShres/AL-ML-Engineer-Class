# Python Data Types and Loops

# Python Data Types

A **data type** defines the type of value stored in a variable. Different data types are used to store different kinds of information.

Python has five commonly used collection data types:

- String (`str`)
- List (`list`)
- Tuple (`tuple`)
- Set (`set`)
- Dictionary (`dict`)

---

# 1. String (`str`)

## Definition
A **string** is a sequence of characters enclosed in single (`' '`) or double (`" "`) quotes.

## Features
- Ordered
- Immutable (cannot be changed)
- Allows duplicate characters
- Supports indexing and slicing

## Syntax

```python
variable_name = "value"
```

## Common Methods

- `upper()`
- `lower()`
- `replace()`
- `strip()`
- `split()`
- `find()`
- `count()`

---

# 2. List (`list`)

## Definition
A **list** is an ordered collection used to store multiple values in a single variable.

## Features
- Ordered
- Mutable (can be modified)
- Allows duplicate values
- Can store different data types

## Syntax

```python
variable_name = [value1, value2, value3]
```

## Common Methods

- `append()`
- `insert()`
- `remove()`
- `pop()`
- `sort()`
- `reverse()`
- `clear()`

---

# 3. Tuple (`tuple`)

## Definition
A **tuple** is an ordered collection of items that cannot be modified after creation.

## Features
- Ordered
- Immutable
- Allows duplicate values

## Syntax

```python
variable_name = (value1, value2, value3)
```

---

# 4. Set (`set`)

## Definition
A **set** is an unordered collection that stores only unique values.

## Features
- Unordered
- Mutable
- Does not allow duplicate values

## Syntax

```python
variable_name = {value1, value2, value3}
```

## Common Methods

- `add()`
- `remove()`
- `discard()`
- `clear()`

---

# 5. Dictionary (`dict`)

## Definition
A **dictionary** stores data in **key-value pairs**.

## Features
- Ordered (Python 3.7+)
- Mutable
- Keys must be unique

## Syntax

```python
variable_name = {
    key1: value1,
    key2: value2
}
```

## Common Methods

- `keys()`
- `values()`
- `items()`
- `update()`
- `pop()`
- `get()`

---

# Difference Between Data Types

| Data Type | Ordered | Mutable | Duplicates |
|-----------|----------|----------|------------|
| String | Yes | No | Yes |
| List | Yes | Yes | Yes |
| Tuple | Yes | No | Yes |
| Set | No | Yes | No |
| Dictionary | Yes | Yes | Keys: No |

---

# Loops in Python

## What is a Loop?

A **loop** is a control structure that repeatedly executes a block of code until a condition becomes false or all elements in a sequence have been processed.

## Types of Loops

- `for` loop
- `while` loop

---

# For Loop

## Definition

A **for loop** is used when the number of iterations is known or when iterating through a sequence such as a list, tuple, string, dictionary, or range.

## Syntax

```python
for variable in sequence:
    statement(s)
```

## Common Uses

- Traversing a list
- Reading characters of a string
- Iterating over a tuple
- Iterating over a dictionary
- Using `range()`
- Repeating a task a fixed number of times

---

# While Loop

## Definition

A **while loop** repeatedly executes a block of code as long as a specified condition is `True`.

## Syntax

```python
while condition:
    statement(s)
```

## Common Uses

- Waiting for user input
- Menu-driven programs
- Login systems
- Repeating until a condition changes
- Unknown number of iterations

---

# Difference Between `for` Loop and `while` Loop

| For Loop | While Loop |
|----------|------------|
| Used when the number of iterations is known | Used when the number of iterations is unknown |
| Iterates through a sequence | Runs until a condition becomes false |
| Suitable for fixed repetitions | Suitable for condition-based repetitions |
| Less likely to create an infinite loop | Can create an infinite loop if the condition never changes |

---

# range()

## Definition

The `range()` function generates a sequence of numbers and is commonly used with a `for` loop.

## Syntax

```python
range(stop)

range(start, stop)

range(start, stop, step)
```

## Parameters

- **start** – Starting value (default is `0`)
- **stop** – Ending value (not included)
- **step** – Increment or decrement value (default is `1`)

---

# Reversing a String

## Method 1: Using Slicing

### Syntax

```python
string_name[::-1]
```

## Method 2: Using a Loop

### Syntax

```python
for variable in string:
    statement(s)
```

---

# Count Variable

## Definition

A **count variable** is used to keep track of the number of iterations or occurrences during program execution.

## Syntax

```python
count = initial_value
```

---

# break Statement

## Definition

The `break` statement immediately terminates the current loop and transfers control to the next statement after the loop.

## Syntax

```python
break
```

## Use of `break`

- Stop a loop early
- Exit when a condition is met
- Prevent unnecessary iterations

---

# Quick Summary

| Concept | Purpose |
|----------|---------|
| String | Stores text |
| List | Stores ordered and changeable data |
| Tuple | Stores ordered and fixed data |
| Set | Stores unique values |
| Dictionary | Stores key-value pairs |
| For Loop | Used for fixed iterations or sequences |
| While Loop | Used for condition-based repetition |
| `range()` | Generates a sequence of numbers |
| Count Variable | Tracks repetitions or occurrences |
| `break` | Exits a loop immediately |
| String Reversal | Reverses a string using slicing or iteration |
