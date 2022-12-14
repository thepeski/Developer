# Python 3 Cheatsheet by Jan Pęski
# Documentation: https://docs.python.org/3/

# Variables & Constants
x = 100                                                     # declaring a variable
some_text = "text"

some_tuple = (1, 2, 3, 4)                                   # declaring a tuple
some_list = [1, 2, 3, 4]                                    # declaring a list
some_dict = {"key": "value", 1: 'other value'}              # declaring a dictionary

PI = 3.1415                                                 # declaring a constant

# Data Types
int                                                         # holds integers
float                                                       # numbers with decimal point
complex                                                     # holds complex numbers
str
bool                                                        # True or False
tuple                                                       # immutable data sequence, 
list                                                        # equivalent to an array [1, 2, 3, 4, 'text']
dict                                                        # equivalent to an object {key: "value"}
None                                                        # Python equivalent for Null

int("10")                                                   # converting data types
int(1.234)
str([1, 2, 3])


# Logic & Control Flow
"not, and, or"                                              # logical operators (in precedence order)
"+=, -+, *=, /=, ++, --"                                    # unary operators
"<, <=, >, >=, ==, !=, is"                                  # comparison operators

if condition:
    # do X
elif condition2:
    # do Y
else:
    # do Z

match variable:                                             # Python's equivalent of a switch statement, requires Python 3.10 or newer
    case "option 1":
        # do something
    case "option 2":
        # do something else
    case _:
        # default action

# Loops
for item in iterable_object:
	# do something

while condition:
	# do something while condition is true
    break

# List Manipulation
list.append()                                               # appends value at the end of a list
list.extend(...values)                                      # append all passed values to the end of a list
list.insert(index, value)                                   # inserts an item at the given position
list.pop()                                                  # removes an item at the given position or from the end if nothing passed
list.remove()                                               # removes the first matching value, ValueError if value not found
list.index()                                                # returns the first index of a given item
list.count()                                                # returns the number of times an item occurs in an array
list.reverse()                                              # reverses items in place
list.sort()                                                 # sorts items in place
list.join("&")                                              # converts list into a string using the separator or a coma if nothing passed
list.clear()                                                # removes all items from a list

some_list[start:end:step]                                   # slicing lists
some_list[1], some_list[0] = some_list[1], some_list[0]     # swapping values

# String Manipulation
x = 1
print(f"the number is {x}")                                 # f-string