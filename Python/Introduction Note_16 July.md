# Python Fundamentals

## What is Python?

Python is a **high-level, interpreted, general-purpose programming language**. It is easy to read, write, and understand, making it one of the most popular programming languages.

### Features

* High-level language
* Interpreted language
* General-purpose language
* Easy to learn and use
* Open source
* Platform independent
* Supports Object-Oriented, Procedural, and Functional Programming
* Large collection of libraries and frameworks

---

# Why Do We Use Python?

Python is used for:

* Data Analysis
* Data Science
* Artificial Intelligence (AI)
* Machine Learning (ML)
* Web Development
* Automation
* Desktop Applications
* Game Development
* API Development
* Scientific Computing

---

# Interpreted Language

## Definition

Python is an **interpreted language**, meaning it executes code **line by line** instead of compiling the entire program before execution.

### Advantages

* Easier to debug
* Faster testing
* No compilation required

---

# Python Framework

## Definition

A **Python framework** provides a ready-made structure for building applications. It includes tools, reusable code, and best practices that make development faster and more organized.

### Common Frameworks

| Framework | Used For                                  |
| --------- | ----------------------------------------- |
| Django    | Large web applications                    |
| Flask     | Small web applications and REST APIs      |
| FastAPI   | High-performance APIs and AI applications |
| Pyramid   | Enterprise web applications               |
| Tornado   | Real-time applications                    |
| Bottle    | Small projects and learning               |
| Dash      | Interactive dashboards                    |
| Streamlit | Data science and machine learning apps    |

---

# Python Libraries

## Definition

A **Python library** is a collection of pre-written functions, classes, and modules used to perform specific tasks.

### Common Libraries

| Library       | Used For                        |
| ------------- | ------------------------------- |
| NumPy         | Numerical computing and arrays  |
| Pandas        | Data cleaning and data analysis |
| Matplotlib    | Charts and graphs               |
| Seaborn       | Statistical visualization       |
| Plotly        | Interactive dashboards          |
| Scikit-learn  | Machine learning                |
| TensorFlow    | Deep learning and AI            |
| PyTorch       | Deep learning                   |
| OpenCV        | Image and video processing      |
| Requests      | Working with APIs               |
| BeautifulSoup | Web scraping                    |
| Selenium      | Browser automation              |
| SciPy         | Scientific computing            |

---

# Framework vs Library

| Framework                            | Library                   |
| ------------------------------------ | ------------------------- |
| Provides the application's structure | Performs specific tasks   |
| Controls application flow            | Called when needed        |
| Used to build complete applications  | Used to add functionality |

---

# Database Connectivity

## Definition

Python can connect to databases such as MySQL, PostgreSQL, Oracle, and SQL Server to perform database operations.

### Purpose

* Read data
* Insert data
* Update data
* Delete data
* Automate database tasks

---

# Procedural Programming

## Definition

Procedural programming organizes code into functions or procedures that execute step by step.

### Benefits

* Easy to understand
* Reusable functions
* Organized code

---

# Variables

## Definition

A **variable** is a named memory location used to store data.

### Example

```python
name = "John"
age = 25
salary = 50000.50
```

---

# Variable Naming Rules

* Must begin with a letter or underscore (_)
* Cannot begin with a number
* Cannot contain spaces
* Cannot start with special characters
* Cannot use Python keywords (`if`, `for`, `class`, etc.)
* Variable names are case-sensitive

---

# Data Types

## Integer (int)

Stores whole numbers.

```python
age = 25
```

---

## Float (float)

Stores decimal numbers.

```python
salary = 45000.75
```

---

## String (str)

Stores text enclosed in quotes.

```python
name = "Python"
```

---

## Boolean (bool)

Stores either `True` or `False`.

```python
is_student = True
```

---

## Complex (complex)

Stores complex numbers.

```python
number = 3 + 4j
```

---

# Dynamic Typing

## Definition

Python automatically determines the data type of a variable. You do not need to declare it.

```python
x = 10
x = "Python"
```

---

# Strong Typing

## Definition

Python does not automatically combine incompatible data types. Explicit type conversion is required.

```python
age = 25
text = "10"

# print(age + text)   # Error
print(age + int(text))
```

---

# Type Casting

## Definition

Type casting converts one data type into another.

### Implicit Type Casting

Python converts compatible data types automatically.

### Explicit Type Casting

The programmer converts the data type manually.

### Common Functions

```python
int()
float()
str()
bool()
```

---

# Operators

## Arithmetic Operators

Used for mathematical calculations.

| Operator | Description    |
| -------- | -------------- |
| +        | Addition       |
| -        | Subtraction    |
| *        | Multiplication |
| /        | Division       |
| //       | Floor Division |
| %        | Modulus        |
| **       | Exponent       |

---

## Comparison Operators

Compare two values and return `True` or `False`.

| Operator | Description              |
| -------- | ------------------------ |
| ==       | Equal to                 |
| !=       | Not Equal to             |
| >        | Greater than             |
| <        | Less than                |
| >=       | Greater than or Equal to |
| <=       | Less than or Equal to    |

---

## Logical Operators

Used to combine multiple conditions.

| Operator | Description                                    |
| -------- | ---------------------------------------------- |
| and      | Returns True if both conditions are True       |
| or       | Returns True if at least one condition is True |
| not      | Reverses the Boolean result                    |

---

## Assignment Operators

Assign or update values.

| Operator | Description             |
| -------- | ----------------------- |
| =        | Assignment              |
| +=       | Add and assign          |
| -=       | Subtract and assign     |
| *=       | Multiply and assign     |
| /=       | Divide and assign       |
| %=       | Modulus and assign      |
| //=      | Floor divide and assign |
| **=      | Exponent and assign     |

---

# Difference Between = and ==

## =

Assignment operator used to assign a value to a variable.

```python
age = 25
```

## ==

Comparison operator used to compare two values.

```python
age == 25
```

Returns either `True` or `False`.

---

# Input Function

## Definition

The `input()` function accepts input from the user during program execution.

```python
name = input("Enter your name: ")
```

---

# print() Function

## Definition

The `print()` function displays output on the screen.

```python
print("Hello World")
```

---

# type() Function

## Definition

Returns the data type of a variable or value.

```python
print(type(10))
print(type("Python"))
```

---

# Boolean

## Definition

A Boolean data type stores only two values:

* True
* False

Boolean values are commonly used in conditions and decision-making.

---

# Branching (Decision Making)

## Definition

Branching allows a program to execute different blocks of code depending on whether a condition is true or false.

### Types

* if
* if-else
* if-elif-else

---

# Summary

* Python is a high-level, interpreted programming language.
* Variables store data in memory.
* Python supports multiple data types.
* Type casting converts one data type to another.
* Operators perform calculations, comparisons, assignments, and logical operations.
* Frameworks provide the structure for building applications.
* Libraries provide reusable functions for specific tasks.
* `input()` accepts user input.
* `print()` displays output.
* `type()` returns a variable's data type.
* Branching (`if`, `elif`, `else`) helps make decisions in programs.
