# CodinGame Tips

## Working with Strings


!!! note "Walking through a string"

    ```python
    # Flip binary number
    text = "1010111000"
    newtext = ""
    for s in text:
        if s == "0":
            newtext += "1"
        else:
            newtext += "0"
    print(newtext)
    ```

!!! note "Useful String functions"

    * len()
    * startswith() 
    * endswith()
    
    ```python
    s = "Hello World!"
    print(len(s))
    print(s.startswith("Hel"))
    print(s.endswith("rld!"))
    ```
    
    * isalpha()
    * isnumeric()
    * islower()
    * isupper()
    * lower()
    * upper()

    ```python
    # Flip case of sentence
    text = "This is a Mixed Case Sentence"
    newtext= ""
    for s in text:
        if s.isalpha():
            if s.isupper():
                newtext += s.lower()
            else:
                newtext += s.upper()
        else:
            newtext += s
    print(newtext)
    ```

!!! note "String slices"

    ```python
    # Capitalize the first 2 and final 3 chars and convert the rest of the characters to lowercase
    text = "this IS a SenTenCe that WE wIll use"
    s = text[:2].upper() + text[2:-2].lower() + text[-3:].upper()
    print(s)
    ```

## Debugging 

Print input values withoug interfering with the output with:
```python
i = int(s.input())
print(i, file=sys.stderr)
```

## Optimizing with Python 3

We can build up a string one character at time like this:
```python
text = "this is input"
newtext = ""
for s in text:
    newtext += s.upper()
print(newtext)
```

Or, with Python3, we can pass an *end* argument to print() like this:
```python
text = "this is input"
for s in text:
    print(s.upper(), end="")
```

Another example using the *end* parameter:
```python
text = "this is input"
for s in text:
    print(i)
   
for s in text:
    print(i, end="")
   
```
