// Swift Cheatsheet by Jan Pęski
// Documentation: https://www.swift.org/

// Variables & Constants
var someVariable = 1                                        // inferred type variable                                             
var explicitTypeVariable: String = "some text"              // explicit type

let someConstant = 3.14                                     // inferred type constant
let typedConstant: Float = 3.14                             // explicit type constant

// Data Types
var isInt: Int = 1
var isFloat: Float = 3.14
var isDouble: Double = 3.1415926
var isString: String = "some text"
var isBool: Bool = true
var isArray: Array = [0, 1, 2, 3]
var isDictionary: [String: String] = ["key": "value", "anotherKey": "another value"]

var optionalVariable: String? = nil                         // initialise variable for later assignment, can hold nil
optionalVariable = "optional text"                          // variable assignment
print(optionalVariable!)                                    // ! unwraps an optional variable

// Logic & Control Flow
"!, &&, ||"                                                 // logical operators
"<, <=, >, >=, =="                                          // comparison operators

1...10                                                      // closed range
1<..10                                                      // half-open range (excl. 1)
1..<10                                                      // half-open range (excl. 10)
1<.<10                                                      // open range (excl. 1 and 10)
...10                                                       // one-sided range (max. 10)

if condition {
    // do X
} else if condition2 {
    // do Y
} else {
    // do Z
}

switch variable {
    case 1:
        // do X
    case 2:
        // do Y
    default:
        // do Z
}

// Loops
for item in 1...10 {
    // do
}

for item in isArray {
    // do
}

while condition {
    // do
    // make sure the condition eventually becomes false
}

// Functions
func someFunction(argument: Int) {
    // do something
    return "result"
}

/* Miscellaneous
Naming convention: camelCase
*/
