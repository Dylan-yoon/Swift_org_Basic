//
//  main.swift
//  08_Enumerations
//
//  Created by Dylan_Yoon on 2022/06/20.
//
print("Enumeration")

print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Enumeration Syntax
print("Enumeration Syntax")

enum SomeEnumeration {
    //definition
}

enum PracticeExample1 {
    case mac
    case iPhone
    case macbook
    case appleWatch
}

enum PracticeExample2 {
    case mac, iPhone, macbook, appleWatch
}


print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Matching Enumeration Values with Switch Statement
print("Matching Enumeration Values with Switch Statement")

enum SwitchWithEnum {
    case stop
    case start
    case pause
}

var stateButton = SwitchWithEnum.stop

switch stateButton {
case .stop:
    print("정지버튼입니다.")
case .start:
    print("시작버튼입니다.")
case .pause:
    print("정지버튼입니다.")
}


print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Iterating over Enumeration Cases
print("Iterating over Enumeration Cases")

enum IteratingEnumeration: CaseIterable {
    case red
    case yellow
    case green
    case blue
    case black
    
}
let whatIsType = IteratingEnumeration.allCases // [IteratingEnumeration]
for color in IteratingEnumeration.allCases {
    print("이번 케이스는 -", color, "-색 입니다.")
}



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Associated Values
print("Associated Values")


//swift.org Code

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Raw Values
print("Raw Values")

typealias RawValues = Int
//define
enum DefineRawValues: RawValues {
    case one
    case two = 3
}

print("------------------------------------------------")
//MARK: Implicitly Assigned Raw Values
print("Implicitly Assigned Raw Values")


enum CalendarMonth1: String {
    case january, february, march, april, may, june, july, august, september, october, november, december
}
print(CalendarMonth1.february.rawValue)
print(CalendarMonth1.december.rawValue)

enum CalendarMonth2: Float { //Int, Double 도 지정하지 않아도 rawValue가 생긴다.
    case january, february, march, april, may, june, july, august, september, october, november, december
}
print(CalendarMonth2.february.rawValue)
print(CalendarMonth2.december.rawValue)

//enum CalendarMonth3: Character {
//    case january = "J", february, march, april, may, june, july, august, september, october, november, december
//}
//print(CalendarMonth3.february.rawValue)
// 오류
print("CalendarMonth4")
enum CalendarMonth4: Int {
    case january, february, march = 55, april, may, june, july, august, september, october, november, december
}
print(CalendarMonth4.february.rawValue) // 1, caes march => 55
print(CalendarMonth4.december.rawValue) // 64


print("------------------------------------------------")
//MARK: Initializing from a Raw Value
print("Initializing from a Raw Value")

//위의 CalendarMonth4 를 참조
if let rawValue1 = CalendarMonth4(rawValue: 55) { print(rawValue1) } //march
if let rawValue2 = CalendarMonth4(rawValue: 5) {print(rawValue2)} //통과하지 못한다.
//print(CalendarMonth4(rawValue: 5)) // nil

print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Recursive Enumerations
print("Recursive Enumerations")


//공식문서 code

import Foundation

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

//print(evaluate(product)) // Prints "18"
