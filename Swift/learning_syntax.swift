print("variables")

var myVariable = 42
myVariable = 50
let myConstant = 42
print(myVariable)
print("I have \(myVariable) apples")


print("let statement")
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble = 70
let aConstant = Float(4.0)

print(aConstant)


print("types")
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(widthLabel)


//There’s an even simpler way to include values in strings: Write the value 
//in parentheses, and write a backslash (\) before the parentheses. For example:
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print(appleSummary)
print(fruitSummary)



//Use three double quotation marks (""") for strings that take up multiple lines.
print("quotation uses")

let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
print(quotation)


//Create arrays and dictionaries using brackets ([]), and access their elements
//by writing the index or key in brackets. A comma is allowed after the last element.

var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"   //add new elements to the array

print(shoppingList[1])
print(occupations)


//Arrays automatically grow as you add elements.

shoppingList.append("blue paint")
print(shoppingList)

//To create an empty array or dictionary, use the initializer syntax.

let emptyArray = [String]()
let emptyDictionary = [String: Float]()

//If type information can be inferred, you can write an empty array as [] 
//and an empty dictionary as [:]—for example, when you set a new value 
//for a variable or pass an argument to a function.

shoppingList = []
occupations = [:]
print(shoppingList)
print(occupations)



/*Control Flow
Use if and switch to make conditionals, and use for-in, while, and 
repeat-while to make loops. Parentheses around the condition or loop 
variable are optional. Braces around the body are required.
*/

let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
// Prints "11"


/*
You can use if and let together to work with values that might be 
missing. These values are represented as optionals. An optional 
value either contains a value or contains nil to indicate that a 
value is missing. Write a question mark (?) after the type of a 
value to mark the value as optional.
*/

var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"

var optionalName1: String? = nil
var greeting1 = "Hello!"
if let name1 = optionalName1 {
    greeting1 = "Hello, \(name1)"
    print(greeting1) //prints "false"
}


var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
    print(greeting) //prints "Hello, John Appleseed"
}


//use of else inside "if let..."
var optionalName2: String? = nil
var greeting2 = "Hello!"
if let name2 = optionalName2 {
    greeting2 = "Hello, \(name2)"
    print(greeting2) //prints "false"
} else{
    print("Hi there!")//prints "Hi, there!"
}

/* 
If the optional value is nil, the conditional is false and the code 
in braces is skipped. Otherwise, the optional value is unwrapped and
 assigned to the constant after let, which makes the unwrapped value 
 available inside the block of code.

Another way to handle optional values is to provide a default value 
using the ?? operator. If the optional value is missing, the default 
value is used instead. */
let nickName: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickName ?? fullName)"

/* Switches support any kind of data and a wide variety of comparison 
operations—they aren’t limited to integers and tests for equality. */
import Foundation 
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}



// Prints "Is it a spicy red pepper?"
/* Notice how let can be used in a pattern to assign the value 
that matched the pattern to a constant. */


/* After executing the code inside the switch case that matched, the 
program exits from the switch statement. Execution doesn’t continue 
to the next case, so there is no need to explicitly break out of the 
switch at the end of each case’s code. 

You use for-in to iterate over items in a dictionary by providing a 
pair of names to use for each key-value pair. Dictionaries are an 
unordered collection, so their keys and values are iterated over in 
an arbitrary order.
*/
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25]
]
var largest = 0
var lastLargest = 0
var lastLargestNumberKind = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            lastLargest = largest
            lastLargestNumberKind = kind
            largest = number
        }
    }
}
print(largest)  // Prints "25"
print(lastLargestNumberKind)    //Prints "Square"



/* Use while to repeat a block of code until a condition changes. 
The condition of a loop can be at the end instead, ensuring that
 the loop is run at least once.
 */

 var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
// Prints "128"


//You can keep an index in a loop by using ..< to make a range of indexes.
var total = 0
for i in 0..<4 {
    total += i
}
print(total)
// Prints "6"

/* Use ..< to make a range that omits its upper value, and use ... 
to make a range that includes both values. */




/* Functions and Closures
Use func to declare a function. Call a function by following its 
name with a list of arguments in parentheses. Use -> to separate 
the parameter names and types from the function’s return type. */

print("")
print("Functions and Closures")
print("")

func getLunchSpecial(person: String, todayLunchSpecial: String) -> String {
    return "Hello \(person), today's lunch special is \(todayLunchSpecial)."
}
print(getLunchSpecial(person: "Bob", todayLunchSpecial: "Chicken"))

/* By default, functions use their parameter names as labels for their 
arguments. Write a custom argument label before the parameter name, 
or write _ to use no argument label.
 */

//no argument lable
func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday"))



/* Use a tuple to make a compound value—for example, to return multiple 
values from a function. The elements of a tuple can be referred to 
either by name or by number. */

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0

    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }

    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
// Prints "120"
print(statistics.2)
// Prints "120"



/* Functions can be nested. Nested functions have access to variables 
that were declared in the outer function. You can use nested functions
 to organize the code in a function that is long or complex.
 */

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())



/* Functions are a first-class type. This means that a function can 
return another function as its value. */

func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))



/* A function can take another function as one of its arguments.*/

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))


/* Functions are actually a special case of closures: blocks of 
code that can be called later. The code in a closure has access
 to things like variables and functions that were available in the
  scope where the closure was created, even if the closure is in a 
  different scope when it is executed—you saw an example of this 
  already with nested functions. You can write a closure without 
  a name by surrounding code with braces ({}). Use in to separate 
  the arguments and return type from the body. */


print(//it's a function below, without print, its function
    numbers.map({ (number: Int) -> Int in
    let result = number
    let mod = result % 2
    if mod == 1{
        return 0
    } else{
        return result
    }
})
)



/* You have several options for writing closures more concisely. 
When a closure’s type is already known, such as the callback for
 a delegate, you can omit the type of its parameters, its return
  type, or both. Single statement closures implicitly return the 
  value of their only statement. */

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)
// Prints "[60, 57, 21, 36]"


/* You can refer to parameters by number instead of by name—this 
approach is especially useful in very short closures. A closure 
passed as the last argument to a function can appear immediately
 after the parentheses. When a closure is the only argument to a 
 function, you can omit the parentheses entirely. */

let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
// Prints "[20, 19, 12, 7]"



/* Objects and Classes
Use class followed by the class’s name to create a class. A property 
declaration in a class is written the same way as a constant or variable
 declaration, except that it is in the context of a class. Likewise, 
 method and function declarations are written the same way. */
print("")
print("")
print("Objects and Classes")
print("")
print("")

 class Shape {
    var numberOfSides = 0
    let shapeName: String = "triangle"
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func getName() -> String{
        return "The shape is \(shapeName)" 
    }
}


/* Create an instance of a class by putting parentheses after the 
class name. Use dot syntax to access the properties and methods 
of the instance. */

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
var shapeName = shape.getName()
print(shapeDescription)
print(shapeName)


/* This version of the Shape class is missing something important: 
an initializer to set up the class when an instance is created.
 Use init to create one. */

class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}



/* Notice how self is used to distinguish the name property from the 
name argument to the initializer. The arguments to the initializer
 are passed like a function call when you create an instance of the
  class. Every property needs a value assigned—either in its declaration
   (as with numberOfSides) or in the initializer (as with name).

Use deinit to create a deinitializer if you need to perform some 
cleanup before the object is deallocated.

Subclasses include their superclass name after their class name, 
separated by a colon. There is no requirement for classes to subclass
 any standard root class, so you can include or omit a superclass as 
 needed.
 */

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "my test square")
print(test.area())

print(test.simpleDescription())
print(test.numberOfSides)

(print(test.name))//class square has a super class that has property name


//make my own class
class Circle: NamedShape {
    var radius: Double

    init(radius: Double, name: String){
        self.radius = radius
        super.init(name: name)
    }

    func area() -> Double {
        return radius * radius
    }
    override func simpleDescription() -> String {
        return "A circle with radius of \(radius)"
    }
}

let testCircle = Circle(radius: 8.8, name: "small Circle")
print(testCircle.area())




/* In addition to simple properties that are stored, properties can
 have a getter and a setter. */

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }

    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }

    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)   //getter
// Prints "9.3"
triangle.perimeter = 9.9    //setter
print(triangle.sideLength)
// Prints "3.3000000000000003"


/* When working with optional values, you can write ? before operations 
like methods, properties, and subscripting. If the value before the ? 
is nil, everything after the ? is ignored and the value of the whole
 expression is nil. Otherwise, the optional value is unwrapped, and 
 everything after the ? acts on the unwrapped value. In both cases, 
 the value of the whole expression is an optional value. */
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength: Double? = optionalSquare?.sideLength //buggy
print(sideLength)



/* Enumerations and Structures
Use enum to create an enumeration. Like classes and all other named 
types, enumerations can have methods associated with them. */
print("")
print("")
print("Enumerations and Structures")
print("")
print("")

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
print(ace.simpleDescription())

let aceRawValue = ace.rawValue
print(aceRawValue)

// Write a function that compares two Rank values by comparing their raw values.


func compareRank(rank1: Rank, rank2: Rank) -> String{
    if rank1.rawValue == rank2.rawValue{
        return "\(rank1.simpleDescription()) equal \(rank2.simpleDescription())"
    } else if rank1.rawValue > rank2.rawValue{
        return "\(rank1.simpleDescription()) is bigger than \(rank2.simpleDescription())"
    } else{
        return "\(rank1.simpleDescription()) is smaller than \(rank2.simpleDescription())"
    }
}

let two = Rank.two
print(compareRank(rank1: ace, rank2: two))



/* By default, Swift assigns the raw values starting at zero and 
incrementing by one each time, but you can change this behavior by 
explicitly specifying values. In the example above, Ace is explicitly 
given a raw value of 1, and the rest of the raw values are assigned in 
order. You can also use strings or floating-point numbers as the raw
type of an enumeration. Use the rawValue property to access the raw
value of an enumeration case. 
  
Use the init?(rawValue:) initializer to make an instance of an 
enumeration from a raw value. It returns either the enumeration case 
matching the raw value or nil if there is no matching Rank.

*/

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
    print(threeDescription) //if it exists, print the description of the rank
    print(convertedRank.simpleDescription()) //if it exists, print the description of the rank
}



/* The case values of an enumeration are actual values, not just another 
way of writing their raw values. In fact, in cases where there isn’t a
meaningful raw value, you don’t have to provide one. */

enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }

    func color()-> String {
        switch self{
            case .spades:
                return "black"
            case .clubs:
                return "black"
            case .diamonds:
                return "red"
            case .hearts:
                return "red"
        }

    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
let heartsColor = hearts.color()
print(heartsColor)


/* Notice the two ways that the hearts case of the enumeration is referred 
to above: When assigning a value to the hearts constant, the enumeration
case Suit.hearts is referred to by its full name because the constant 
doesn’t have an explicit type specified. Inside the switch, the 
enumeration case is referred to by the abbreviated form .hearts because 
the value of self is already known to be a suit. You can use the 
abbreviated form anytime the value’s type is already known.

If an enumeration has raw values, those values are determined as 
part of the declaration, which means every instance of a particular 
enumeration case always has the same raw value. Another choice for 
enumeration cases is to have values associated with the case—these 
values are determined when you make the instance, and they can be 
different for each instance of an enumeration case. You can think of 
the associated values as behaving like stored properties of the 
enumeration case instance. For example, consider the case of requesting
the sunrise and sunset times from a server. The server either responds 
with the requested information, or it responds with a description of 
what went wrong.
 */

 enum ServerResponse {
    case result(String, String)
    case failure(String)
    case loading()
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let loading = ServerResponse.loading()

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
case let .loading():
    print("Loading...")
}
// Prints "Sunrise is at 6:00 am and sunset is at 8:09 pm."

/* Notice how the sunrise and sunset times are extracted from the 
ServerResponse value as part of matching the value against the switch 
cases. */


/* Use struct to create a structure. Structures support many of the same 
behaviors as classes, including methods and initializers. One of the 
most important differences between structures and classes is that 
structures are always copied when they are passed around in your code, 
but classes are passed by reference.
 */
print("")
print("")
print("making a deck of card with classes")
print("")
print("")

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

print(threeOfSpades)
print(threeOfSpadesDescription)


//function returns a new deck
func createDeck() -> [Card]{
    var deck = [Card]()
    let suits = [Suit.spades, Suit.hearts, Suit.diamonds, Suit.clubs]
    let ranks = [Rank.ace, Rank.two, Rank.three, Rank.four, Rank.five, Rank.six,
    Rank.seven, Rank.eight, Rank.nine, Rank.ten, Rank.jack, Rank.queen, Rank.king]
    for suit in suits{
        for rank in ranks{
            deck.append(Card(rank: rank, suit: suit))
        }
    }
    return deck
}

let newDeck = createDeck()

//function that prints a deck
func printDeck(deck: [Card]){
    for card in deck{
        print(card.simpleDescription())
    }
} 

printDeck(deck: newDeck)

//passing an array of card as parameter
//https://www.tutorialspoint.com/swift/swift_arrays.htm 
//https://gist.github.com/rainypixels/ae8c3b0021acc7673416


/* Protocols and Extensions
Use protocol to declare a protocol. */
print("")
print("")
print("Protocals and Extensions")
print("")
print("")

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
    mutating func resetDescription()
}


//Classes, enumerations, and structs can all adopt protocols.

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
    func resetDescription() {
        simpleDescription = "A simple class"
    }
}
var a = SimpleClass()
a.adjust()
a.resetDescription()
let aDescription = a.simpleDescription
print(aDescription)


struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
    mutating func resetDescription() {
        simpleDescription = "A simple structure"
    }
}
var b = SimpleStructure()
b.adjust()
b.resetDescription()
let bDescription = b.simpleDescription

print(bDescription)


/* Add another requirement to ExampleProtocol. What changes do you need 
to make to SimpleClass and SimpleStructure so that they still conform 
to the protocol? */


/* Notice the use of the mutating keyword in the declaration of 
SimpleStructure to mark a method that modifies the structure. 
The declaration of SimpleClass doesn’t need any of its methods 
marked as mutating because methods on a class can always modify 
the class.

Use extension to add functionality to an existing type, such as new 
methods and computed properties. You can use an extension to add 
protocol conformance to a type that is declared elsewhere, or even 
to a type that you imported from a library or framework. */

print("")
print("")
print("Extensions")
print("")
print("")

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
    mutating func resetDescription() {
        self = 0
    } //you need this function so that this extention conform this protocal
}
print(7.simpleDescription)
// Prints "The number 7"

print("")
print("Write an extension for the Double type that adds an absoluteValue property.")

extension Double: ExampleProtocol {
    var simpleDescription: String {
        return "Absolute value of \(self) is \(abs(self))" //return absolute value
    }
    func adjust() {

    }
    func resetDescription() {
    }
    //add a new function sayHello to Double type data using extension
    func sayHello() -> String {
        return "Hello!"
    }
}

print((-25.6).simpleDescription)



/* You can use a protocol name just like any other named type—for example, 
to create a collection of objects that have different types but that all 
conform to a single protocol. When you work with values whose type is a 
protocol type, methods outside the protocol definition are not available. */

let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
// Prints "A very simple class.  Now 100% adjusted."

//print(protocolValue.anotherProperty)  // Uncomment to see the error
// Prints error: value of type 'ExampleProtocol' has no member 'anotherProperty'


/* Even though the variable protocolValue has a runtime type of 
SimpleClass, the compiler treats it as the given type of 
ExampleProtocol. This means that you can’t accidentally access 
methods or properties that the class implements in addition to 
its protocol conformance. */


print("")
print("")
print("Error Handling")
print("")
print("")

/* You represent errors using any type that adopts the Error protocol.
 */

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}


/* Use throw to throw an error and throws to mark a function that can throw an error. 
If you throw an error in a function, the function returns immediately and the code
that called the function handles the error. */

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner"{
        throw PrinterError.noToner
    } else if printerName == "On Fire" {
        throw PrinterError.onFire
    } else if printerName == "Out Of Paper" {
        throw PrinterError.outOfPaper
    }
    return "Job sent"
}


/* There are several ways to handle errors. One way is to use do-catch. 
Inside the do block, you mark code that can throw an error by writing 
try in front of it. Inside the catch block, the error is automatically 
given the name error unless you give it a different name. */

do {
    let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch {
    print(error)
}



/* You can provide multiple catch blocks that handle specific errors. 
You write a pattern after catch just as you do after case in a switch. */

do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

//prints "job sent"


/* EXPERIMENT

Add code to throw an error inside the do block. What kind of error do 
you need to throw so that the error is handled by the first catch block? 
What about the second and third blocks? */

do {
    let printerResponse = try send(job: 1440, toPrinter: "On Fire")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}



/* Another way to handle errors is to use try? to convert the result to 
an optional. If the function throws an error, the specific error is 
discarded and the result is nil. Otherwise, the result is an optional 
containing the value that the function returned. */

let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }

    let result = fridgeContent.contains(food)
    return result
}

fridgeContains("banana")
print(fridgeIsOpen)




print("")
print("")
print("Generics")
print("")
print("")

/* Write a name inside angle brackets to make a generic function or type.
 */

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0 ..< numberOfTimes { //the space after 0 is important
        result.append(item)
    }
    return result
}

makeArray(repeating: "knock", numberOfTimes: 4)


/* 
You can make generic forms of functions and methods, as well as 
classes, enumerations, and structures. */

//reimplement the Swift standard library's optional type
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}


var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)
print(possibleInteger)


/* Use where right before the body to specify a list of requirements—for 
example, to require the type to implement a protocol, to require two 
types to be the same, or to require a class to have a particular 
superclass. */



/* 
Modify the anyCommonElements(_:_:) function to make a function that 
returns an array of the elements that any two sequences have in common. */


func anyCommonElements<T: Sequence, U: Sequence> (_ lhs: T, _ rhs: U) -> [T.Element]
    where T.Element: Equatable, T.Element == U.Element
{
    var result: [T.Element] = []
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                result.append(lhsItem)
            }
        }
    }
    return result
}

print(anyCommonElements([1,2,3], [3]))


//how to pass the type [t.element] down
//https://stackoverflow.com/questions/24027271/use-a-function-to-find-common-elements-in-two-sequences-in-swift