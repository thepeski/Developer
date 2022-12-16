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

if let safeOptional = someOptional {                        // optional binding
    // work on safeOptional
} else {
    // someOptional is nil
}

someOptional ?? defaultValue                                // nil coalescing operator
optional?.property                                          // optional chaining, if optional not nil, access property

// Structures
struct SomeStructure {                                      // declaring a structure
    var someStructureProperty = ["key": "value"]
    var property: String

    func someStructureMethod() {
        // do something
    }

    mutating func mutatingMethod() {                        // mutating method
        someStructureProperty["key2"] = "value2"
    }

    init(property: String) {                                // initialiser function
        self.property = property
    }
}
var structureInstance = SomeStructure(property = "!")       // initialising a structure, variable points to the value

structure.property.append(item)                             // adding structure elements

// Classes
class SomeClass {
    var someString: String                                  // requires an init function

    init(someString: String) {
        self.someString = someString
    }
}                                          
var classInstance = SomeClass(someString = "text")          // creating a class instance, variable points to the reference

class ChildClass: ParentClass {                             // interitance
    override func do() {                                    // overriding parent methods
        super.do()                                          // performs original method code
        // do something additional
    }

    var someClassVariable = 0

    func changeVariable() {                                 // does not require mutating keyword
        someClassVariable -= 1
    }
}

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
func someFunction(argument: Int) {                          // function declaration
    // do something
}

func someOtherFunction(argument: Int) -> String {           // function with a return statement
    // do something
    return "result"
}

/* Miscellaneous
Naming convention: camelCase
*/
