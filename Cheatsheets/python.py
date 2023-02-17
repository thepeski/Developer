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

if True:                                                    # if statement
    # do X
    print(0)
elif True:                                                  # elif
    # do Y
    print(0)
else:                                                       # else
    # do Z
    print(0)

match x:                                                    # Python's equivalent of a switch statement, requires Python 3.10 or newer
    case "option 1":
        # do something
        print(0)
    case "option 2":
        # do something else
        print(0)
    case _:
        # default action
        print(0)

# Loops
for item in [1, 2, 3]:                                      # for loop
	# do something
    print(0)

while True:                                                 # while loop
	# do something while condition is true
    break

# String Manipulation
str.lower()                                                 # converts string to lowercase
str.upper()                                                 # converts string to uppercase

some_text[0:9:1]                                            # slicing strings [start:end:step]

# List Manipulation
list.append()                                               # appends value at the end of a list
list.extend(...[1, 2, 3])                                   # append all passed values to the end of a list
list.insert(0, 1)                                           # inserts an item at the given position (index, value)
list.pop()                                                  # removes an item at the given position or from the end if nothing passed
list.remove()                                               # removes the first matching value, ValueError if value not found
list.index()                                                # returns the first index of a given item
list.count()                                                # returns the number of times an item occurs in an array
list.reverse()                                              # reverses items in place
list.sort()                                                 # sorts items in place
list.join("&")                                              # converts list into a string using the separator or a coma if nothing passed
list.clear()                                                # removes all items from a list

some_list[0:9:1]                                            # slicing lists [stat:end:step]
some_list[1], some_list[0] = some_list[1], some_list[0]     # swapping values

[x * 2 for x in some_list if x >= 2]                        # list comprehension [modify each element x for x in some_list] 

# String Manipulation
x = 1
print(f"the number is {x}")                                 # f-string