# Warmup: JSON - Lesson

JSON is perhaps the most ubiqituous human-readable data format used to transfer information between servers today, but it's also often used to store data. It's much less powerfull than an actual database, but it's lightweight, flexible, and easy for humans to read directly as text. Sometimes, people even store snippits of JSON **inside** of a database.

### JSON format
JSON consists of **objects** which have **properties** and a **value** for each property. Values can be strings, numbers, booleans etc. The basic format of an object is curly brackets surrounding all of it's properties. Here is an example "book" object:

```json
{
    "name": "Hamlet",
    "author": "William Shakespeare",
    "publish_year": 1603,
    "is_play": true
}
```

Notice that property names are surrounded by quotes, separated from their values with a colons, and separted from each other with commas. 

You can also use arrays of things (which use square brackets) and sub-objects as values, allowing you to create more structured and heirarchical data. For example, this object describes an entire (underfunded) library:

```json
{
    "books": [
        {
            "name": "Hamlet",
            "author": "William Shakespeare",
            "publish_year": 1603,
            "is_play": true
        },
        {
            "name": "1984",
            "author": "George Orwell",
            "publish_year": 1949,
            "is_play": false
        }
    ],
    "address": "1234 Fake Street",
    "head_librarian": "Miss Ing Page"
}
```

### Loading JSON into Python
You may have noticed that JSON objects structure information similarly to Python dictionaries. Properties are analagous to keys and values are analgaous to... you guessed it... values! So, the designers of the built-in json Python module decided to just directly translate objects to dictionaries, and arrays to Python arrays, nesting sub-dictionaries and arrays as needed.

You can load a single JSON object stored in a file (here called `book.json`) like this:

```python
import json

# load data
with open('book.json', 'r') as f:
    book = json.load(f)

# access data
print(book['name'])
print(book['author'])
```

*Note: The `with` block is the safest way to open a file. It will automatically close `f` after it exits the `with` block or if any error occurs.*

You can also use the function `json.loads` to parse json directly from a string instead of a file. You won't need that for this project but it could be used to parse json from a database.

## Other things you need to know

### Getting program arguments

Instead of prompting the user for initial information inside the program, console programs often allow users to pass in inital parameters as **arguments** for convenience.  For example, running a simple greeting Python program in the console might look like this:

```shell
$ python3 greeter.py Jane
Hello, Jane!
$ python3 greeter.py Doe
Hello, Doe!
```

Python programs can access arguments passed to it with `sys.argv` from the built-in `sys` module. `sys.argv` is just an array of arguments split by spaces. Except, the element at index 0 is always the name of the .py file itself.

Here's the source code for `greeter.py`:

```python
import sys

name = sys.argv[1]
print("Hello, " + name + "!")
```

Because the `python` command passes along any and all arguments after the .py file to the program, there is a lot of flexibility in their format and how they're used. The built-in [argparse](https://docs.python.org/3/library/argparse.html) module can make complex arguments easier to parse, but you only need `sys.argv` for this project.

### Exiting program

`sys.exit()` is an easy way to exit a program instantly but safely. It'll also automatically close files that you've opened with a `with` block. Here's an example that quits an infinite loop when the user types "`.quit`":

```python
import sys

while True:
    user_input = input()
    if user_input == ".quit":
        sys.exit()
```

### File structure

This will be the basic file structure for these projects: 

```python
# <your imports>

# <your functions/classes>

def main():
    # <your code>
    
if __name__ == "__main__":
    main()
```

The last two lines look wierd, but all they do is check if the function is being run from the console, and runs `main()` only if it's true. This isn't necessary at all for this project, but I'm just including it because it's very common and you'll see it alot.

It's used because it gives more control to other programs that want to re-use part or all of this file.

```python
# import without running main(), just want to use this one fancy function
import my_module
my_module.something_fancy() # yay, fancy :-)

# import AND run main()
import my_module
my_module.main()
my_module.something_fancy() # just as fabulous
```
