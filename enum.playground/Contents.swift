enum Lang {
    case java
    case php
    case swift
}

var lang = Lang.java
print(lang)

lang = Lang.swift
print(lang)

lang = .php
print(lang)

switch lang {
    case Lang.php:
        print("selected lang is php")
    case Lang.java:
        print("selected lang is java")
    case .swift:
        print("selected lang is swift")
}

enum Cities: CaseIterable {
    case TR, US, KS
}

print("Count of cities \(Cities.allCases.count)")
for item in Cities.allCases {
    print(item)
}

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(sum))
print(evaluate(product))

enum CarBrand: CaseIterable {
    case BMW
    case TOFAS
}

