## Primitive values

```python
# Numbers
2 + 4
7 * 5
i_val = 8
f_val = 4.3

i_val
i_val + 3
i_val * f_val

# Strings
"Hello " + 'World'

s_val = "dog"
"Watch the " + s_val + " run"

s_val * 10

# Determining type
type(i_val)
type(f_val)
```

## Built-in Functions

```python
abs(-3)
max(1, 2, 3)
min(5, 6, 3, 4, 8)
len('this is a string')

i = 5
"An int value: " + i
"An int value: " + str(i)
```

## Lists

```python
list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
list2 = range(20)
list3 = range(5, 12)
list4 = range(0, 14, 2)
list5 = ["goat", 6, "cow", 4.2]

len(list1)
list1[2]
list1[-2]

list1[5]
list1[5] = 99

list1.append(88)
list1.insert(3, 44)
list1.remove(6)

list1 = list1 * 2
list1 *= 2
```

## Loops

```python
for i in range(10):
    print("The val is " + str(i))
    
for c in "This is a sentence":
    print(c)
```

## Conditionals

```python
for i in range(10):
    if i%2 == 0:
        print(str(i) + " is even")
      
for i in range(10):
    if i%2 == 0:
        print(str(i) + " is even")
    else:
        print(str(i) + " is odd")
```

## Functions

```python
def is_even(val):
    return val%2 == 0
      
def is_odd(val):
    return val%2 != 0
       
for i in range(10):
    if is_even(i):
        print(str(i) + " is even")
    if is_odd(i):
        print(str(i) + " is odd")
```

### Function Exercises: 
* Write `triple_num()` that triples a number.
* Write `greet()` that accepts a name and returns string saying "Hello name".
* Write `my_abs()` that returns the absolute value of a number.
* Write `str_len()` that returns the length of a string.
* Write `max_val()` that returns the maximum value in a list.
* Write `equal_str()` that returns true if two strings are equal, regardless of case.


## Strings

```python
str = "Hello World!"
len(str)
str.index("o")
str.count("l")
str.upper()
str.lower()
str.startswith("Hello")
str.endswith("Hello")

vals = str.split(" ")
len(vals)
vals[1] + " " + vals[0]
 
animal = "mouse"
"Watch the {0} run".format(animal)

str[2:8]
str[2:8:2]
str[::-1]
str[8:2:-1]
str[8:2:-2]
```

## Slices

**Syntax:** `list[start_index : end_index : step]`

```python
list = range(10)

len(list)

list[4]
list[2:7]

list[:5]
list[5:]
list[:]

list[::1]
list[::2]

list[::-1]
list[::-2]

list[-1:-6:-1]
list[-1:-6:-2]
list[3:-3]
list[-3:3:-1]

list[2:5] = [15]

# Sorting Lists
sorted(list)
sorted(list, reverse=True)

# List assignments
a = range(5)
a
b = a
b
a[3] = 99
a
b

b = a[:]
a
b
a[0] = 33
a
b
```


## Tuples

Tuples are very similar to lists, except they are immutable.

```python
tuple1 = (1, 2, 3, 4, 5)
tuple2 = (3.0, "cat")

# This is a no go
tuple1[1] = 4

# Unpacking 
val1, val2 = tuple2
val3, val4, val5 = tuple1[1:4]
```

## Dictionaries

```python
dict = {"a": "moose", "b": 2, "c": "fox"}

dict
dict["c"]
dict["c"] = "rat"
dict["c"]

dict2 = {}
for i in range(0, 10):
    dict["val" + str(i)] = i
dict
```
