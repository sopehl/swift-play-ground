
func sayHello(to: String) {
    print ("Hello \(to)")
}

sayHello(to: "Okan")

func sendMessage(msg: String) -> String {
    return "Your message : " + msg
}

print(sendMessage(msg: "Hey, How are you?"))

func add(a: Int, b:Int) -> Int {
    let sum = a + b
    if sum > 50 {
        print("Greater than 50 -> value: \(sum)")
        return sum
    }
    print("Smaller than 50 -> value: \(sum)")
    return sum
}

print(add(a: 26, b: 20))
print(add(a: 26, b: 38))

// Returns multiple value
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [3, 30, 7, -21, 106, 11])
print("min -> \(bounds.min) - max -> \(bounds.max)");

// ------------------------
/*
 func funcName(argumentLabel paramName: type) {
    // your code
 }
 */
func devide(number1: Int, denominator number2: Int) -> Int {
    return number1 / number2
}

var result = devide(number1: 81, denominator: 9)
print("Division result : \(result)")

// Omit paramName by using _
func mod(_ number1: Int, number2: Int) -> Int {
    return number1 % number2
}
var modResult = mod(30, number2: 7)
print("Mod result : \(modResult)")

// Default param
func calculateAge(bornYear: Int, currentYear: Int = 2020) -> Int {
    currentYear-bornYear
}
print("My age : \(calculateAge(bornYear: 1993))")

// Variadic param
func sumAll(_ numbers: Double...) -> Double {
    var sum = 0.0
    for item in numbers {
        sum += item
    }
    return sum
}
print(sumAll(1.1,3.2, -2.9, 3.14))
