
---

# Introduction

**Object-Oriented Programming**, or **OOP**, organizes a program using classes and objects. It helps organize related information, reuse existing code, represent real-world entities and manage larger programs.

---

# Class and Object

## Class

A **class** is a blueprint or template used to create objects. It can contain attributes and methods.

### Syntax

```python
class ClassName:
    # attributes and methods
```

### Empty Class Syntax

```python
class ClassName:
    pass
```

## Object

An **object** is an instance of a class. Different objects created from the same class can store different values.

### Syntax

```python
object_name = ClassName()
```

### Object with Arguments

```python
object_name = ClassName(argument1, argument2)
```

### Accessing an Attribute

```python
object_name.attribute_name
```

### Calling a Method

```python
object_name.method_name()
```

---

# `__init__()` Method

The `__init__()` method is a special method that runs automatically when an object is created. It is commonly called a **constructor** and initializes the object's attributes.

### Syntax

```python
class ClassName:
    def __init__(self, parameter1, parameter2):
        self.attribute1 = parameter1
        self.attribute2 = parameter2
```

### Creating the Object

```python
object_name = ClassName(value1, value2)
```

## Important Points

- `__init__()` runs automatically when an object is created.
- `self` represents the current object.
- Parameters receive values supplied during object creation.
- Attributes store information about the object.

---

# `__str__()` Method

The `__str__()` method returns a readable, user-friendly description of an object. Python uses it with `print()` and `str()`.

### Syntax

```python
class ClassName:
    def __str__(self):
        return "Readable description"
```

### Calling Syntax

```python
print(object_name)
```

```python
str(object_name)
```

The method must return a string.

---

# `__repr__()` Method

The correct spelling is `__repr__()`. It returns a detailed, developer-friendly representation of an object and is useful for debugging and inspecting objects.

### Syntax

```python
class ClassName:
    def __repr__(self):
        return "ClassName(attribute=value)"
```

### Calling Syntax

```python
repr(object_name)
```

## Difference Between `__str__()` and `__repr__()`

| Feature | `__str__()` | `__repr__()` |
|---|---|---|
| Purpose | Readable description | Detailed description |
| Audience | Regular users | Developers |
| Called by | `print()` and `str()` | `repr()` and debugging tools |
| Output style | Simple and friendly | Technical and detailed |

---

# `__dict__` Attribute

`__dict__` stores an object's writable attributes in dictionary form. Attribute names are keys and attribute values are values.

### Object Dictionary Syntax

```python
object_name.__dict__
```

### Accessing a Value

```python
object_name.__dict__["attribute_name"]
```

### Updating a Value

```python
object_name.__dict__["attribute_name"] = new_value
```

### Class Dictionary Syntax

```python
ClassName.__dict__
```

| Dictionary | Contains |
|---|---|
| `object_name.__dict__` | Attributes belonging to a particular object |
| `ClassName.__dict__` | Class attributes, methods and class information |

---

# Abstraction

**Abstraction** means hiding unnecessary internal details and showing only the important features. A user knows what an object does without needing to know every internal step.

## Purpose

- Hides complicated internal processes
- Provides a simple interface
- Reduces unnecessary information
- Makes a class easier to use
- Allows internal changes without affecting outside code

### Syntax

```python
class ClassName:
    def public_method(self):
        self.__internal_method()

    def __internal_method(self):
        # internal instructions
```

The public method is called outside the class:

```python
object_name.public_method()
```

The internal method completes the hidden work:

```python
self.__internal_method()
```

---

# Protecting Abstraction

Protecting abstraction means keeping internal data and methods separate from the public features of a class.

## Public Members

A public member has no leading underscore. It can be accessed inside and outside the class.

### Syntax

```python
self.attribute_name
```

```python
def method_name(self):
    # instructions
```

## Protected Members

A protected member begins with one underscore. It is intended for use inside the class and its child classes.

### Syntax

```python
self._attribute_name
```

```python
def _method_name(self):
    # internal instructions
```

Python still allows outside access. The underscore is a convention indicating that the member is intended for internal use.

## Private-Like Members

A private-like member begins with two underscores.

### Syntax

```python
self.__attribute_name
```

```python
def __method_name(self):
    # internal instructions
```

Python applies **name mangling** and changes the internal name to a form similar to:

```python
_ClassName__attribute_name
```

| Member type | Syntax | Intended use |
|---|---|---|
| Public | `attribute` | Inside and outside the class |
| Protected | `_attribute` | Inside the class and child classes |
| Private-like | `__attribute` | Mainly inside the original class |

---

# Inheritance

**Inheritance** allows one class to receive and reuse attributes and methods from another class. It reduces repeated code.

The original class is called the **parent class**, **base class** or **superclass**.

The receiving class is called the **child class**, **derived class** or **subclass**.

### Syntax

```python
class ParentClass:
    # parent members
```

```python
class ChildClass(ParentClass):
    # child members
```

---

# Types of Inheritance

## 1. Single Inheritance

One child class inherits from one parent class.

```text
Parent → Child
```

### Syntax

```python
class ChildClass(ParentClass):
    # child members
```

## 2. Multiple Inheritance

One child class inherits from two or more parent classes.

```text
ParentOne ──┐
            ├── Child
ParentTwo ──┘
```

### Syntax

```python
class ChildClass(ParentOne, ParentTwo):
    # child members
```

Python uses the **Method Resolution Order**, or **MRO**, to decide which parent method to use when multiple parents contain methods with the same name.

## 3. Multilevel Inheritance

A class inherits from another child class, producing multiple inheritance levels.

```text
Parent → Child → Grandchild
```

### Syntax

```python
class ChildClass(ParentClass):
    # child members

class GrandchildClass(ChildClass):
    # grandchild members
```

## 4. Hierarchical Inheritance

Multiple child classes inherit from the same parent class.

```text
           ┌── ChildOne
Parent ────┤
           └── ChildTwo
```

### Syntax

```python
class ChildOne(ParentClass):
    # child members

class ChildTwo(ParentClass):
    # child members
```

## 5. Hybrid Inheritance

Hybrid inheritance combines two or more inheritance types.

### Syntax

```python
class FirstChild(ParentClass):
    # first child members

class SecondChild(ParentClass):
    # second child members

class FinalChild(FirstChild, SecondChild):
    # final child members
```

---

# Method Overriding

**Method overriding** happens when a child class defines its own version of a method that already exists in the parent class.

### Syntax

```python
class ParentClass:
    def method_name(self):
        # parent instructions

class ChildClass(ParentClass):
    def method_name(self):
        # child instructions
```

## Important Points

- The parent and child methods have the same name.
- The child method replaces the inherited version for child objects.
- The child can provide more specific behavior.
- The parent version can still be called using `super()`.

---

# `super()` Function

The `super()` function allows a child class to access the constructor and methods of its parent class.

## Uses

- Calls a parent constructor
- Calls a parent method
- Extends an overridden method
- Reduces repeated code

## Calling a Parent Constructor

### Syntax

```python
class ChildClass(ParentClass):
    def __init__(self, parameter1, parameter2):
        super().__init__(parameter1)
        self.attribute2 = parameter2
```

The parent constructor call is:

```python
super().__init__(parameter1)
```

## Calling a Parent Method

### Syntax

```python
class ChildClass(ParentClass):
    def method_name(self):
        super().method_name()
        # additional child instructions
```

The parent method call is:

```python
super().method_name()
```

---

# Quick Syntax Reference

| Concept | Syntax |
|---|---|
| Class | `class ClassName:` |
| Object | `object_name = ClassName()` |
| Constructor | `def __init__(self, parameters):` |
| String representation | `def __str__(self):` |
| Developer representation | `def __repr__(self):` |
| Object dictionary | `object_name.__dict__` |
| Protected member | `self._attribute` |
| Private-like member | `self.__attribute` |
| Inheritance | `class ChildClass(ParentClass):` |
| Multiple inheritance | `class ChildClass(ParentOne, ParentTwo):` |
| Parent constructor | `super().__init__(arguments)` |
| Parent method | `super().method_name()` |

---

# Summary

- A class is a blueprint used to create objects.
- An object is an instance of a class.
- `__init__()` initializes an object.
- `__str__()` provides readable information for users.
- `__repr__()` provides detailed information for developers.
- `__dict__` displays writable attributes as a dictionary.
- Abstraction hides unnecessary internal details.
- A single underscore indicates a protected member by convention.
- Double underscores apply name mangling.
- Inheritance allows a child class to reuse a parent class.
- Method overriding gives a child class its own version of a parent method.
- `super()` accesses the parent constructor or methods.
