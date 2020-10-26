import Foundation

// TASK 01
func isEven(value: Int) -> Bool {
    return value % 2 == 0
}

print(isEven(value: 2))
print(isEven(value: 0))

// TASK 02
func isDivisibleBy3(value: Int) -> Bool {
    return value % 3 == 0
}

print(isDivisibleBy3(value: 33))
print(isDivisibleBy3(value: 2))

// TASK 03
var array = Array(1...100)
print(array)

// TASK 04
array = array.filter{!isEven(value: $0) && !isDivisibleBy3(value: $0)}
print(array)

// TASK 05
func fibonacci(n: Int) -> [Decimal] {
    var result: [Decimal] = Array()

    for i in 0..<(n) {
        i < 2 ? result.append(Decimal(i)) : i == 2 ? result.append(Decimal(1)) : result.append(result[i - 2] + result[i - 1])
    }
    return result
}

print(fibonacci(n: 100))

// TASK 06
func prime(_ number: Int) -> Bool {
    return (1...number).lazy.filter({number % $0 == 0}).count <= 2
}

var primeArray: [Int] = []
var n = 2
while primeArray.count < 100 {
    if prime(_: n)  {
        primeArray.append(n)
    }
    n += 1
}
print(primeArray)
