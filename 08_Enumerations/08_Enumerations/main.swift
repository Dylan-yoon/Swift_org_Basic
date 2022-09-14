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



enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, _, let check):
    print("UPC: \(numberSystem), \(manufacturer), \("product"), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}







print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Raw Values
print("Raw Values")


print("------------------------------------------------")
//MARK: Implicitly Assigned Raw Values
print("Implicitly Assigned Raw Values")

print("------------------------------------------------")
//MARK: Initializing from a Raw Value
print("Initializing from a Raw Value")



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Recursive Enumerations)
print("Recursive Enumerations")
