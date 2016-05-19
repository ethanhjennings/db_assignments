# Warmup: JSON - Project description
For this project you'll be creating a program that allows users to lookup the definition of words taken from a real dictionary. Once it's working, you'll be able to run it with the included JSON file `websters_dict.json` which has all the definitions from the [1996 Webster's Dictionary](http://www.gutenberg.org/ebooks/673).

## Dictionary structure
The JSON for the dictionaries are structed very simply, with words as property names and definitions as values. This is all that's in `simple_dict.json` for example:

```json
{
    "dog": "A four legged mammal.",
    "cat": "A four legged mammal.\nNot to be confused with \"dog\".",
    "lizard": "A four legged scalled reptile."
}
```

Don't worry about newlines and quotes within the definition string, the json module will automatically escape these for you. `\n` will become a real newline and `\"` will become double quotes.

## Requirements
* Take the name of a JSON file as an argument using `sys.argv`
* Read data from this file using `json.load`
* print `Loading '<dictionary file>.json'...`
* print `Loaded <word count> words.`
* Print the word's definition surrounded by with fancy separators using the provided `get_separator` function.
* Print `'word' is not in this dictionary!` if the word can't be found.
* Exit the program if the user enters `.quit`
* Make sure test.sh passes

## Example output

```
$ python3 warmup.py websters_dict.json
Loading 'websters_dict.json'...
Loaded 102413 words.
Enter a word to lookup:
> Python
----------------------------------------------------------------------
PYTHON:
Py"thon, n. Etym: [NL., fr. L. Python the serpent slain near Delphi
by Apollo, Gr.

1. (Zoöl.)

Defn: Any species of very large snakes of the genus Python, and
allied genera, of the family Pythonidæ. They are nearly allied to the
boas. Called also rock snake.

Note: The pythons have small pelvic bones, or anal spurs, two rows of
subcaudal scales, and pitted labials. They are found in Africa, Asia,
and the East Indies.

2. A diviner by spirits. "[Manasses] observed omens, and appointed
pythons." 4 Kings xxi. 6 (Douay version).
----------------------------------------------------------------------
Enter a word to lookup:
> json
'json' is not in this dictionary!
Enter a word to lookup:
.quit
```

## Testing
You can always test the code by hand, but to make sure it's "done", there is `test.sh`. Run it like this:

```
$ bash test.sh
```

If it passes both tests then you get a pretend 100.

`test.sh` is a bash script, which means it has a list of console commands that could be run manually individually but are being run together like a program. It runs your program with simulated user input, logs the output, and compares it to the expected output at the end.

`test.sh` is very picky, and wants every single character to match. If the tests fail you can look for the problem in the files in the `tests` directory:

* `test_x.in` - Only the simulated user input, lines that `input()` will use
* `test_x.out` - Only the output, lines printed out
* `test_x.expected` - The expected output, created from my secret solution program

`test_simple.in`, `test_simple.out`, and `test_simple.expected` belong to the first test which uses `simple_dict.json`. The second test uses `websters_dict.json` and the rest of the test files. 
