# Python File Handling, Modules, Libraries, Errors, and Databases

## Table of Contents

- [Python File Extension](#python-file-extension)
- [File Handling](#file-handling)
- [Working with Excel Files](#working-with-excel-files)
- [Modules, Packages, and Libraries](#modules-packages-and-libraries)
- [Built-in Modules](#built-in-modules)
- [Errors and Exception Handling](#errors-and-exception-handling)
- [SQLite Database](#sqlite-database)
- [MySQL Database](#mysql-database)
- [Summary](#summary)

---

# Python File Extension

## Definition

A Python file is a text file containing Python code. Python files normally use the `.py` extension.

## What It Does

The `.py` extension tells the computer that the file contains a Python program.

## Examples

```text
main.py
calculator.py
file_operations.py
database_connection.py
```

Run a Python file from the terminal:

```bash
python main.py
```

---

# File Handling

## Definition

File handling is the process of creating, reading, writing, updating, and closing files using Python.

## What It Does

File handling allows a Python program to:

- Store information permanently
- Read previously stored information
- Update file content
- Add new information
- Process text files

---

## open() Function

### Definition

The `open()` function opens a file and returns a file object.

### What It Does

It connects the Python program to a file so the program can read or modify it.

### Syntax

```python
open("filename", "mode")
```

### Example

```python
file = open("students.txt", "r")
```

---

## File Modes

| Mode | Definition | What It Does |
|---|---|---|
| `r` | Read mode | Reads an existing file |
| `w` | Write mode | Writes content and replaces old content |
| `a` | Append mode | Adds content to the end |
| `r+` | Read and write mode | Reads and writes an existing file |
| `w+` | Write and read mode | Replaces content and allows reading |
| `a+` | Append and read mode | Adds content and allows reading |

---

## with open()

### Definition

`with open()` is the recommended way to open a file in Python.

### What It Does

It automatically closes the file after the file operation is completed.

```python
with open("students.txt", "r") as file:
    content = file.read()
    print(content)
```

---

## write() Method

### Definition

The `write()` method writes a string into a file.

### What It Does

It saves the provided text in the opened file.

```python
with open("students.txt", "w") as file:
    file.write("Sadikshya\n")
    file.write("Amar\n")
    file.write("Richa\n")
```

The `\n` character moves the next text to a new line.

> Write mode replaces the old content when the file already exists.

---

## writelines() Method

### Definition

The `writelines()` method writes multiple strings from a list into a file.

### What It Does

It writes several values without using `write()` for every value.

```python
students = [
    "Sadikshya\n",
    "Amar\n",
    "Richa\n"
]

with open("students.txt", "w") as file:
    file.writelines(students)
```

`writelines()` does not automatically add new lines. Add `\n` when needed.

---

## read() Method

### Definition

The `read()` method reads content from a file.

### What It Does

It returns the file content as a string.

```python
with open("students.txt", "r") as file:
    content = file.read()

print(content)
```

---

## Reading the First 10 Characters

Pass the number `10` to the `read()` method.

```python
with open("students.txt", "r") as file:
    first_ten = file.read(10)

print(first_ten)
```

`read(10)` reads only the first 10 characters.

---

## readline() Method

### Definition

The `readline()` method reads one line from a file.

### What It Does

It returns the next available line every time it is called.

```python
with open("students.txt", "r") as file:
    first_line = file.readline()
    second_line = file.readline()

print(first_line)
print(second_line)
```

---

## Reading Line by Line

### Definition

Reading line by line means processing each line separately.

### What It Does

It is useful for processing large files without loading the entire file into memory.

```python
with open("students.txt", "r") as file:
    for line in file:
        print(line.strip())
```

The `strip()` method removes spaces and newline characters from the beginning and end.

---

## readlines() Method

### Definition

The `readlines()` method reads all the lines in a file.

### What It Does

It returns the lines as a list.

```python
with open("students.txt", "r") as file:
    students = file.readlines()

print(students)
```

Possible output:

```python
["Sadikshya\n", "Amar\n", "Richa\n"]
```

Remove the newline characters:

```python
with open("students.txt", "r") as file:
    students = [line.strip() for line in file]

print(students)
```

Output:

```python
["Sadikshya", "Amar", "Richa"]
```

---

## Append Mode

### Definition

Append mode uses `"a"` to add new content to an existing file.

### What It Does

It adds information at the end without deleting the old content.

```python
with open("students.txt", "a") as file:
    file.write("John\n")
```

If the file does not exist, Python creates it.

---

## r+ Mode

### Definition

The `"r+"` mode opens an existing file for reading and writing.

### What It Does

It allows the program to read the file and modify its content.

```python
with open("students.txt", "r+") as file:
    content = file.read()
    print(content)

    file.write("\nNew student")
```

The file must already exist.

---

## seek() Method

### Definition

The `seek()` method changes the current position of the file cursor.

### What It Does

It allows Python to move to a particular position in the file.

```python
with open("students.txt", "r+") as file:
    old_content = file.read()

    file.seek(0)
    file.write("Student List\n" + old_content)
```

`seek(0)` moves the cursor to the beginning.

---

## close() Method

### Definition

The `close()` method closes an opened file.

### What It Does

It releases the computer resources used by the file.

```python
file = open("students.txt", "r")
content = file.read()
file.close()
```

When using `with open()`, Python closes the file automatically.

---

# Working with Excel Files

## Definition

Working with Excel files means reading, analyzing, modifying, and saving spreadsheet data using Python.

Python commonly uses the Pandas library for Excel operations.

---

## Pandas

### Definition

Pandas is a Python library used for data analysis and data manipulation.

### What It Does

Pandas can:

- Read Excel and CSV files
- Clean data
- Filter rows
- Select columns
- Find missing values
- Perform calculations
- Save processed data

### Installation

```bash
pip install pandas openpyxl
```

### Import

```python
import pandas as pd
```

---

## DataFrame

### Definition

A DataFrame is a two-dimensional Pandas data structure containing rows and columns.

### What It Does

It stores structured data like an Excel spreadsheet or SQL table.

```python
import pandas as pd

student_data = {
    "Name": ["Sadikshya", "Amar", "Richa"],
    "Age": [25, 28, 24],
    "Score": [90, 85, 88]
}

df = pd.DataFrame(student_data)

print(df)
```

---

## read_excel()

### Definition

`read_excel()` is a Pandas function used to read an Excel file.

### What It Does

It imports the Excel data into a DataFrame.

```python
import pandas as pd

df = pd.read_excel("students.xlsx")

print(df)
```

---

## head()

### Definition

The `head()` method displays the first rows of a DataFrame.

### What It Does

It helps us quickly inspect the beginning of a dataset.

```python
print(df.head())
```

By default, it displays the first five rows.

```python
print(df.head(10))
```

This displays the first 10 rows.

---

## tail()

### Definition

The `tail()` method displays the last rows of a DataFrame.

### What It Does

It helps us inspect the end of a dataset.

```python
print(df.tail())
```

---

## info()

### Definition

The `info()` method displays a summary of a DataFrame.

### What It Does

It shows:

- Column names
- Number of rows
- Data types
- Missing values
- Memory usage

```python
df.info()
```

---

## Selecting Columns

Select one column:

```python
print(df["Name"])
```

Select multiple columns:

```python
selected_data = df[["Name", "Score"]]

print(selected_data)
```

---

## Filtering Data

Select students whose scores are 85 or higher:

```python
high_scores = df[df["Score"] >= 85]

print(high_scores)
```

---

## Adding a Column

```python
df["Passed"] = df["Score"] >= 60

print(df)
```

The new column contains `True` or `False`.

---

## to_excel()

### Definition

`to_excel()` is a Pandas method used to save a DataFrame as an Excel file.

### What It Does

It exports the DataFrame into an `.xlsx` file.

```python
df.to_excel("student_results.xlsx", index=False)
```

`index=False` prevents Pandas from adding the DataFrame index as an extra column.

---

# Modules, Packages, and Libraries

## Module

### Definition

A module is a single Python `.py` file containing reusable code.

### What It Does

A module helps organize code and allows it to be used in another Python file.

Create `calculator.py`:

```python
def add(number1, number2):
    return number1 + number2
```

Use it in another file:

```python
import calculator

result = calculator.add(10, 5)

print(result)
```

---

## Package

### Definition

A package is a folder containing multiple related Python modules.

### What It Does

It organizes related modules into one folder.

```text
shopping/
    __init__.py
    products.py
    customers.py
    payments.py
```

Here:

- `shopping` is a package.
- `products.py` is a module.
- `customers.py` is a module.
- `payments.py` is a module.

---

## Library

### Definition

A library is a collection of modules and packages that provides reusable code.

### What It Does

A library helps programmers complete tasks without creating everything from the beginning.

| Library | What It Does |
|---|---|
| Pandas | Data analysis |
| NumPy | Numerical calculations |
| Matplotlib | Data visualization |
| Scikit-learn | Machine learning |
| Requests | API communication |

---

## Module vs Package vs Library

| Term | Definition | Purpose |
|---|---|---|
| Module | One Python file | Stores reusable code |
| Package | Folder containing modules | Organizes related modules |
| Library | Collection of modules and packages | Provides reusable tools |

---

# Built-in Modules

## import Statement

### Definition

The `import` statement loads a module or library into a Python program.

### What It Does

It allows us to use code from another module.

```python
import math
```

Import one function:

```python
from math import sqrt
```

Import using an alias:

```python
import pandas as pd
```

---

## Math Module

### Definition

The `math` module contains mathematical functions.

### What It Does

It performs calculations such as square roots, powers, and rounding.

```python
import math

print(math.sqrt(25))
print(math.ceil(4.2))
print(math.floor(4.8))
print(math.pi)
```

| Function | What It Does |
|---|---|
| `math.sqrt()` | Calculates a square root |
| `math.ceil()` | Rounds a number up |
| `math.floor()` | Rounds a number down |
| `math.pow()` | Calculates a power |
| `math.pi` | Returns the value of pi |

---

## Random Module

### Definition

The `random` module generates random values.

### What It Does

It can generate numbers, select random items, and shuffle lists.

```python
import random

number = random.randint(1, 10)

print(number)
```

Select a random item:

```python
colors = ["red", "blue", "green"]

selected_color = random.choice(colors)

print(selected_color)
```

Shuffle a list:

```python
numbers = [1, 2, 3, 4, 5]

random.shuffle(numbers)

print(numbers)
```

---

## Datetime Module

### Definition

The `datetime` module works with dates and times.

### What It Does

It can get, format, and calculate dates and times.

```python
from datetime import datetime

current_time = datetime.now()

print(current_time)
print(current_time.year)
print(current_time.month)
print(current_time.day)
```

Format a date:

```python
formatted_date = current_time.strftime("%m/%d/%Y")

print(formatted_date)
```

---

## OS Module

### Definition

The `os` module allows Python to interact with the operating system.

### What It Does

It can:

- Display the current folder
- List files and folders
- Check whether a file exists
- Create or manage folders

```python
import os

print(os.getcwd())
print(os.listdir())
print(os.path.exists("students.txt"))
```

---

## Sys Module

### Definition

The `sys` module provides information about the Python interpreter and system.

### What It Does

It can:

- Display the Python version
- Identify the operating system
- Read command-line arguments
- Stop a program

```python
import sys

print(sys.version)
print(sys.platform)
```

---

# Errors and Exception Handling

## Error

### Definition

An error is a problem that prevents Python from executing a program correctly.

### Common Errors

| Error | Definition |
|---|---|
| `SyntaxError` | The Python code structure is incorrect |
| `NameError` | A variable does not exist |
| `TypeError` | An incorrect data type is used |
| `ValueError` | A value is invalid |
| `ZeroDivisionError` | A number is divided by zero |
| `FileNotFoundError` | A requested file does not exist |
| `IndexError` | A list position does not exist |
| `KeyError` | A dictionary key does not exist |

---

## Exception Handling

### Definition

Exception handling is the process of managing errors without stopping the entire program.

### What It Does

It allows the program to display a useful message or perform another action when an error occurs.

---

## try

### Definition

The `try` block contains code that may produce an error.

### What It Does

Python attempts to execute the code inside the block.

```python
try:
    number = int(input("Enter a number: "))
```

---

## except

### Definition

The `except` block handles an error from the `try` block.

### What It Does

It runs when the specified error occurs.

```python
try:
    number = int(input("Enter a number: "))

except ValueError:
    print("Please enter a valid number.")
```

---

## else

### Definition

The `else` block runs when no error occurs.

### What It Does

It contains code that should execute when the `try` block is successful.

```python
try:
    number = int(input("Enter a number: "))

except ValueError:
    print("Invalid number")

else:
    print("You entered:", number)
```

---

## finally

### Definition

The `finally` block always runs, whether an error occurs or not.

### What It Does

It is commonly used to close files and database connections.

```python
try:
    number = int(input("Enter a number: "))
    result = 100 / number
    print("Result:", result)

except ValueError:
    print("Please enter a valid number.")

except ZeroDivisionError:
    print("You cannot divide by zero.")

finally:
    print("Program completed.")
```

---

# SQLite Database

## Database Connectivity

### Definition

Database connectivity is the process of connecting a Python program to a database.

### What It Does

It allows Python to:

- Create databases
- Create tables
- Insert data
- Read data
- Update data
- Delete data

These operations are known as CRUD.

| Operation | Meaning |
|---|---|
| Create | Add new data |
| Read | Retrieve existing data |
| Update | Modify existing data |
| Delete | Remove data |

---

## SQLite

### Definition

SQLite is a lightweight database included with Python.

### What It Does

It stores an entire database in one file. It is useful for learning and small applications.

```python
import sqlite3
```

---

## Creating an SQLite Database

```python
import sqlite3

connection = sqlite3.connect("school.db")

print("Database created successfully")

connection.close()
```

If `school.db` does not exist, Python creates it.

---

## Creating a Table

```python
import sqlite3

connection = sqlite3.connect("school.db")
cursor = connection.cursor()

cursor.execute("""
    CREATE TABLE IF NOT EXISTS students (
        student_id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        score INTEGER
    )
""")

connection.commit()
connection.close()

print("Table created successfully")
```

---

## Inserting Data

```python
import sqlite3

connection = sqlite3.connect("school.db")
cursor = connection.cursor()

cursor.execute(
    "INSERT INTO students (name, score) VALUES (?, ?)",
    ("Sadikshya", 90)
)

connection.commit()
connection.close()

print("Student inserted successfully")
```

SQLite uses `?` as a placeholder.

---

## Reading Data

```python
import sqlite3

connection = sqlite3.connect("school.db")
cursor = connection.cursor()

cursor.execute("SELECT * FROM students")

students = cursor.fetchall()

for student in students:
    print(student)

connection.close()
```

---

## Updating Data

```python
import sqlite3

connection = sqlite3.connect("school.db")
cursor = connection.cursor()

cursor.execute(
    "UPDATE students SET score = ? WHERE name = ?",
    (95, "Sadikshya")
)

connection.commit()
connection.close()
```

---

## Deleting Data

```python
import sqlite3

connection = sqlite3.connect("school.db")
cursor = connection.cursor()

cursor.execute(
    "DELETE FROM students WHERE name = ?",
    ("Sadikshya",)
)

connection.commit()
connection.close()
```

The comma in `("Sadikshya",)` creates a one-item tuple.

---

## Important SQLite Methods

| Method | Definition and Purpose |
|---|---|
| `connect()` | Connects Python to a database |
| `cursor()` | Creates an object for executing SQL |
| `execute()` | Executes an SQL command |
| `fetchone()` | Returns one database record |
| `fetchall()` | Returns all database records |
| `commit()` | Saves database changes |
| `close()` | Closes the connection |

---

# MySQL Database

## MySQL Connector

### Definition

`mysql.connector` is a Python package that connects Python programs to MySQL.

### What It Does

It allows Python to send SQL commands and receive data from MySQL.

### Installation

```bash
pip install mysql-connector-python
```

### Import

```python
import mysql.connector
```

---

## Connecting to MySQL

```python
import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password"
)

print("Connected to MySQL")

connection.close()
```

---

## Creating a MySQL Database

```python
import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password"
)

cursor = connection.cursor()

cursor.execute("CREATE DATABASE IF NOT EXISTS school")

print("Database created successfully")

cursor.close()
connection.close()
```

---

## Connecting to a Specific Database

```python
import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="school"
)

print("Connected to the school database")

connection.close()
```

---

## Creating a MySQL Table

```python
import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="school"
)

cursor = connection.cursor()

cursor.execute("""
    CREATE TABLE IF NOT EXISTS students (
        student_id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(100) NOT NULL,
        score INT
    )
""")

connection.commit()
cursor.close()
connection.close()
```

---

## Inserting Data into MySQL

```python
import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="school"
)

cursor = connection.cursor()

sql = "INSERT INTO students (name, score) VALUES (%s, %s)"
values = ("Sadikshya", 90)

cursor.execute(sql, values)
connection.commit()

print(cursor.rowcount, "record inserted")

cursor.close()
connection.close()
```

MySQL Connector uses `%s` as a placeholder.

---

## Reading Data from MySQL

```python
cursor.execute("SELECT * FROM students")

students = cursor.fetchall()

for student in students:
    print(student)
```

---

## SQLite vs MySQL

| Feature | SQLite | MySQL |
|---|---|---|
| Definition | File-based database | Server-based database |
| Installation | Included with Python | Installed separately |
| Server required | No | Yes |
| Python module | `sqlite3` | `mysql.connector` |
| Placeholder | `?` | `%s` |
| Best for | Practice and small projects | Larger applications |

---

# Summary

- Python files use the `.py` extension.
- File handling allows Python to read and modify files.
- `open()` opens a file.
- `with open()` automatically closes a file.
- `read()` reads the file content.
- `readline()` reads one line.
- `readlines()` returns all lines as a list.
- `write()` writes a string to a file.
- `writelines()` writes multiple strings.
- `seek()` moves the file cursor.
- Pandas is used for data analysis.
- A DataFrame stores data in rows and columns.
- A module is one Python file.
- A package contains multiple modules.
- A library contains reusable modules and packages.
- `try`, `except`, `else`, and `finally` manage errors.
- SQLite is a lightweight file-based database.
- MySQL is a server-based database.
- `execute()` runs SQL commands.
- `fetchone()` retrieves one record.
- `fetchall()` retrieves all records.
- `commit()` saves database changes.
- `close()` releases file and database resources.
- Real database passwords should never be uploaded to GitHub.
