import sys
import json

# Returns a line separator made of dashes.
# Length is adjusted to match the longest line of the def_str, capped at 80.
def get_separator(def_str):
    max_line_len = max(len(l) for l in def_str.split("\n"))
    max_line_len = min(max_line_len, 80) # cap to 80 characters
    return "-" * max_line_len

# <your function(s) here>

def main():
    # <your code here>
    pass

if __name__ == "__main__":
    main()
