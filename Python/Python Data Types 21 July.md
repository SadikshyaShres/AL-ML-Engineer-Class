# Python Data Types: String, List, Tuple, and Dictionary

## 1. String

A **string** is a sequence of characters used to store text. It can contain letters, numbers, spaces, and symbols.

Strings are written inside:

- Single quotation marks: `' '`
- Double quotation marks: `" "`
- Triple quotation marks: `''' '''` or `""" """`

## Properties of Strings

- **Ordered:** Every character has a fixed position.
- **Indexed:** Indexing starts from `0`.
- **Immutable:** Characters cannot be changed after creating the string.
- **Case-sensitive:** Uppercase and lowercase letters are different.
- **Duplicates allowed:** The same character can appear multiple times.
- **Iterable:** A string can be processed one character at a time.

## String Concatenation

**Concatenation** means joining two or more strings.

The `+` operator is used for string concatenation.

A number must be converted into a string before it can be directly joined with another string.

## String Indexing

**Indexing** means accessing one character using its position.

- Positive indexing starts from `0`.
- Negative indexing starts from `-1`.
- Positive indexing moves from left to right.
- Negative indexing moves from right to left.

## String Slicing

**Slicing** means extracting a section of a string.

### Syntax

`string[start:stop:step]`

- `start`: Position where slicing begins.
- `stop`: Position where slicing ends. It is not included.
- `step`: Number of positions to move at a time.
- A negative step can reverse a string.

## Print Formatting

Print formatting combines text and values in a readable form.

### `.format()` Method

The `.format()` method inserts values into curly-brace placeholders.

### Syntax

`"Text {}".format(value)`

It supports:

- Positional placeholders
- Named placeholders
- Decimal formatting
- Percentage formatting
- Thousands separators
- Text alignment

### F-String

An f-string places variables directly inside curly braces.

### Syntax

`f"Text {variable}"`

F-strings are generally shorter and easier to read.

## Locating and Counting Text

### `find()`

- Finds the first occurrence of a value.
- Returns its index.
- Returns `-1` if the value is not found.

### `index()`

- Finds the first occurrence of a value.
- Returns its index.
- Produces an error if the value is not found.

### `rfind()`

- Finds the last occurrence of a value.
- Returns its index.
- Returns `-1` if the value is not found.

### `count()`

Returns the number of times a character or word appears.

## String-Checking Methods

These methods return either `True` or `False`.

| Method | Purpose |
|---|---|
| `isalnum()` | Checks for only letters and numbers |
| `isalpha()` | Checks for only letters |
| `isdigit()` | Checks for only digits |
| `istitle()` | Checks whether each word begins with a capital letter |
| `islower()` | Checks whether all letters are lowercase |
| `isupper()` | Checks whether all letters are uppercase |
| `isspace()` | Checks whether the string contains only whitespace |
| `startswith()` | Checks the beginning of a string |
| `endswith()` | Checks the ending of a string |

## Important String Methods

| Method | Purpose |
|---|---|
| `upper()` | Converts letters to uppercase |
| `lower()` | Converts letters to lowercase |
| `title()` | Converts text into title case |
| `capitalize()` | Capitalizes the first character |
| `strip()` | Removes whitespace from both ends |
| `lstrip()` | Removes whitespace from the left |
| `rstrip()` | Removes whitespace from the right |
| `replace()` | Replaces selected text |
| `find()` | Finds the first position of a value |
| `count()` | Counts occurrences |
| `split()` | Divides a string into a list |
| `partition()` | Divides a string into a three-item tuple |
| `expandtabs()` | Replaces tab characters with spaces |

## `.split()` Method

The `.split()` method divides a string into separate parts.

### Properties

- Returns a list.
- Removes the separator.
- Can divide at every occurrence.
- Can return multiple parts.

## `.partition()` Method

The `.partition()` method divides a string into exactly three parts:

1. Text before the separator
2. The separator
3. Text after the separator

### Properties

- Returns a tuple.
- Keeps the separator.
- Divides at the first occurrence.
- Always returns three items.
- It is a string method, not a regular expression.

## Difference Between `.split()` and `.partition()`

| `.split()` | `.partition()` |
|---|---|
| Returns a list | Returns a tuple |
| Removes the separator | Keeps the separator |
| Can split at every occurrence | Splits at the first occurrence |
| Can return many parts | Always returns three parts |

## `.expandtabs()` Method

The `.expandtabs()` method replaces tab characters with spaces.

### Syntax

`string.expandtabs(tabsize)`

The default tab size is `8`.

## Regular Expressions

A **regular expression**, also called **Regex**, is a pattern used to search, validate, extract, split, or replace text.

Python provides regular-expression features through the `re` module.

### Common Regex Operations

- Search for text
- Check the beginning of text
- Validate a complete string
- Find all matches
- Replace matching text
- Split text using a pattern

### Common Regex Symbols

| Symbol | Meaning |
|---|---|
| `\d` | A digit |
| `\D` | A character that is not a digit |
| `\w` | A letter, number, or underscore |
| `\W` | A special character |
| `\s` | A whitespace character |
| `\S` | A non-whitespace character |
| `.` | Any single character |
| `+` | One or more occurrences |
| `*` | Zero or more occurrences |
| `?` | Zero or one occurrence |
| `^` | Beginning of a string |
| `$` | End of a string |
| `[A-Z]` | An uppercase letter |
| `[a-z]` | A lowercase letter |
| `[0-9]` | A digit |
| `{n}` | Exactly `n` occurrences |

---

# 2. List

A **list** is an ordered collection used to store multiple items in one variable.

Lists are written using square brackets `[]`.

## Properties of Lists

- **Ordered:** Items retain their positions.
- **Indexed:** Indexing begins at `0`.
- **Mutable:** Items can be changed after creation.
- **Duplicates allowed:** The same item can appear multiple times.
- **Mixed data types allowed:** A list can contain different types of data.
- **Dynamic:** Items can be added or removed.

## List Indexing

Indexing accesses one item using its position.

- Positive indexing begins at `0`.
- Negative indexing begins at `-1`.

## List Slicing

Slicing extracts a section of a list and returns a new list.

### Syntax

`list[start:stop:step]`

- The start position is included.
- The stop position is not included.
- A negative step can reverse the list.

## List Mutability

Lists are **mutable**. This means list items can be changed after creating the list.

Items can be:

- Added
- Removed
- Replaced
- Reordered

## Important List Methods

| Method | Purpose |
|---|---|
| `append()` | Adds one item at the end |
| `extend()` | Adds multiple individual items |
| `insert()` | Adds an item at a specified index |
| `pop()` | Removes and returns an item |
| `remove()` | Removes the first matching value |
| `reverse()` | Reverses the original list |
| `sort()` | Sorts the original list |
| `count()` | Counts occurrences of a value |
| `index()` | Returns the first index of a value |
| `clear()` | Removes all items |
| `copy()` | Creates a shallow copy |

## Difference Between `append()` and `extend()`

| `append()` | `extend()` |
|---|---|
| Adds one item | Adds multiple items |
| Adds the complete argument as one item | Adds each item separately |
| The list grows by one position | The list may grow by many positions |

## Difference Between `remove()` and `pop()`

| `remove()` | `pop()` |
|---|---|
| Removes an item by value | Removes an item by index |
| Removes the first matching value | Removes the last item if no index is provided |
| Does not return the removed value | Returns the removed value |

## Nested List

A **nested list** is a list that contains another list.

Nested lists are useful for:

- Tables
- Matrices
- Student records
- Product information
- Grouped data

Multiple indexes are used to access an item inside an inner list.

## List Comprehension

**List comprehension** is a short way to create a new list from another collection.

### Basic Syntax

`[expression for item in collection]`

### Conditional Syntax

`[expression for item in collection if condition]`

List comprehension can be used to:

- Transform values
- Filter values
- Perform calculations
- Create a new list

---

# 3. Tuple

A **tuple** is an ordered collection used to store multiple values.

Tuples are usually written using parentheses `()`.

The comma is what technically creates a tuple.

## Properties of Tuples

- **Ordered:** Items retain their positions.
- **Indexed:** Indexing begins at `0`.
- **Immutable:** Items cannot be changed directly.
- **Duplicates allowed:** The same value can appear multiple times.
- **Mixed data types allowed:** A tuple can contain different data types.

## One-Item Tuple

A one-item tuple must include a comma after its item.

Without the comma, Python does not treat the value as a tuple.

## Tuple Indexing

Tuple indexing works like string and list indexing.

- Positive indexing begins at `0`.
- Negative indexing begins at `-1`.

## Tuple Slicing

Slicing extracts part of a tuple and returns a new tuple.

### Syntax

`tuple[start:stop:step]`

Slicing does not change the original tuple.

## Tuple Immutability

Tuples are immutable. Their items cannot be directly changed, added, or removed.

Tuples do not support modification methods such as:

- `append()`
- `extend()`
- `remove()`
- `pop()`

## Tuple Methods

| Method | Purpose |
|---|---|
| `count()` | Counts how many times a value appears |
| `index()` | Returns the first position of a value |

## Tuple Packing

**Tuple packing** means combining multiple values into one tuple.

## Tuple Unpacking

**Tuple unpacking** means assigning tuple values to separate variables.

The number of variables normally needs to match the number of tuple items.

## Nested Tuple

A **nested tuple** is a tuple containing another tuple.

Multiple indexes are used to access an item inside the inner tuple.

## When to Use a Tuple

Tuples are useful for information that should remain fixed, such as:

- Coordinates
- Months
- Days of the week
- Fixed settings
- Constant records

---

# 4. Dictionary

A **dictionary** stores information in **key-value pairs**.

Dictionaries are written using curly brackets `{}`.

Each key identifies its associated value.

## Properties of Dictionaries

- **Ordered:** Modern Python dictionaries retain insertion order.
- **Mutable:** Information can be added, changed, or removed.
- **Key-based:** Values are accessed using keys.
- **Unique keys:** A key cannot appear more than once.
- **Duplicate values allowed:** Different keys can have the same value.
- **Mixed data types allowed:** Values can contain different data types.

## Dictionary Keys and Values

A dictionary has two main parts:

- **Key:** A label used to identify information.
- **Value:** The information associated with the key.

Keys must be immutable and unique.

Common dictionary key types include:

- Strings
- Integers
- Floats
- Suitable tuples

Lists and dictionaries cannot normally be dictionary keys because they are mutable.

## Accessing Dictionary Values

Dictionary values are accessed through keys rather than numerical indexes.

### Square-Bracket Access

- Retrieves the value associated with a key.
- Produces an error if the key is missing.

### `get()`

- Safely retrieves a value.
- Returns `None` if the key is missing.
- Can return a selected default value.

## Adding and Changing Information

- Assigning a value to a new key adds a new key-value pair.
- Assigning a value to an existing key updates its value.

## Important Dictionary Methods

| Method | Purpose |
|---|---|
| `get()` | Safely retrieves a value |
| `keys()` | Returns all keys |
| `values()` | Returns all values |
| `items()` | Returns all key-value pairs |
| `update()` | Adds or changes key-value pairs |
| `pop()` | Removes a specified key |
| `popitem()` | Removes the last inserted pair |
| `clear()` | Removes all pairs |
| `copy()` | Creates a shallow copy |
| `setdefault()` | Returns or creates a key with a default value |
| `fromkeys()` | Creates a dictionary using a collection of keys |

## Checking Dictionary Membership

The `in` and `not in` operators check dictionary keys by default.

To check values, membership must be checked in the dictionary’s values collection.

## Nested Dictionary

A **nested dictionary** is a dictionary that contains another dictionary.

Nested dictionaries are useful for storing:

- Student records
- Employee records
- Customer information
- Product information
- Department details

## List of Dictionaries

A **list of dictionaries** stores multiple structured records.

Each dictionary represents one record, while the list stores the complete collection.

## Dictionary Comprehension

Dictionary comprehension is a short way to create a dictionary from another collection.

### Basic Syntax

`{key_expression: value_expression for item in collection}`

---


#Shallow copy and deep copy 

- Shallow Copy :A shallow copy creates a new outer object, but the nested objects are still shared with the original.
- Deep Copy : A deep copy creates a completely independent copy, including all nested objects.

# Difference Between String, List, Tuple, and Dictionary

| Feature | String | List | Tuple | Dictionary |
|---|---|---|---|---|
| Purpose | Stores text | Stores multiple items | Stores fixed items | Stores key-value pairs |
| Written using | Quotation marks | Square brackets `[]` | Parentheses `()` | Curly brackets `{}` |
| Ordered | Yes | Yes | Yes | Yes |
| Mutable | No | Yes | No | Yes |
| Accessed using | Character index | Item index | Item index | Key |
| Negative indexing | Yes | Yes | Yes | No |
| Slicing | Yes | Yes | Yes | No direct slicing |
| Duplicates | Yes | Yes | Yes | Keys: No; values: Yes |
| Mixed data types | No, it stores characters | Yes | Yes | Yes |
| Can grow or shrink | No | Yes | No | Yes |
| Best used for | Text | Changeable collections | Fixed collections | Labeled information |

## Simple Way to Remember

- **String:** Text made of characters.
- **List:** An ordered collection that can be changed.
- **Tuple:** An ordered collection that cannot be changed directly.
- **Dictionary:** A changeable collection of key-value pairs.
