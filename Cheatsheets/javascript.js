// JavaScript Cheatsheet by Jan Pęski
// Documentation: https://tc39.es/ecma262/

// Variables & Constants
let definedVariable;                                        // declaring a variable, default value undefined
let someVariable = 0;                                       // declaring a variable and assigning a value
let someText = "text";

const PI = 3.1415;                                          // declaring a constant

// Data Types
Number                                                      // positive (1, 2), negative (-1, -2), decimals (3.1415), zero (0)
Boolean                                                     // true / false
String                                                      // text
null                                                        // represents an assignment of no value 
undefined                                                   // represents unassigned value
NaN                                                         // represents a value that is not a legal number
Infinity                                                    // represents infinity (ex. 1 / 0)
Symbol                                                      // often used to generate unique identifiers
BigIng                                                      // numbers larger than the Number type can accomodate
Object                                                      // can contain an object, an array, or a date

// Logic & Control Flow
"!, &&, ||"                                                 // logical operators (in precedence order)
"+=, -+, *=, /=, ++, --"                                    // unary operators
"<, <=, >, >=, ==, !=, ===, !=="                            // comparison operators

if (condition) {
  // do X
} else if (condition2) {
  // do Y
} else {
  // do Z
}

switch (variable) {
  case 0:
    // something happens
    break;
  case 1: 
    // something else happens
    break;
  default:
    // default action happens
}

condition ? doIfTrue : doIfFalse                            // trenary operators
falsyValues = [false, 0, "", undefined, NaN, null];         // evaluate to false, every other value evaluates to true
                                                            
// Loops
for (initialExpression; condition; incrementExpression) {
    // content
}

for (variable of iterable) {
    // statement
    // the iterable stores an individual element
}

for (variable in object) {
    // iterates over keys in an object
}

while (condition) {
    // run this while condition is true
}

// Arrays
let someArray = [1, 2, "text", [3, 4], {key: "value"}];     // declaring an array, stores a reference to the array

Array.push()                                                // adds items to the end of an array
Array.pop()                                                 // removes an item from the end of an array
Array.unshift()                                             // adds items at the beginning of an array
Array.shift()                                               // removes an item from the beginning of an array

Array.concat()                                              // appends passed array to the original array and returns the result
Array.sort()                                                // sorts an array based on UTF-16 codes
Array.reverse()                                             // reverses items order in an array
Array.includes()                                            // looks for the passed item in an array, returns true if item is found and false if not
Array.indexOf()                                             // returns the first found index of a pased item or -1 if nothing is found

Array.join("separator")                                     // returns a string from an array, items separated by the passed item (coma by default)
Array.slice(start, exclEnd)                                 // returns a slice of an array using start and end indices with the end index being excluded
Array.splice(start, deleteCount, insert)                    // removes, replaces, or adds elements to an array

// Objects
let someObject = {                                          // object literal, stores a reference to the object
  firstKey: 0,
  secondKey: "second",
  thirdKey: [1, 2, 3]
};

Object.property                                             // accessing object properties
Object["property"]                                          // alternative way of accessing object properties

/* Miscellaneous
Naming Convention: camelCase
*/
