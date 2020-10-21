import Foundation

// TASK 01
let a: Double = 3
let b: Double = -14
let c: Double = -5

let d = pow(b, 2) - 4 * a * c

if (d < 0) {
    print("x1 = \(-b / (2 * a))")
} else if (d > 0) {
    print("x1 = \((-b + sqrt(d)) / (2 * a))")
    print("x2 = \((-b - sqrt(d)) / (2 * a))")
} else {
    print("Нет решения")
}

// TASK 02
let catA: Double = 3
let catB: Double = 4

let hip = sqrt(pow(catA, 2) + pow(catB, 2))
print("Гипотенуза: \(hip)")
print("Периметр треугольника: \(catA + catB + hip)")
print("Площадь треугольника: \((catA * catB) / 2)")

// TASK 03
let deposit: Double = 150000
let percent: Double = 12
let termInYears = 5

print("Сумма вклада с процентами \(deposit + (deposit * percent * Double(termInYears)) / 100.0)")
