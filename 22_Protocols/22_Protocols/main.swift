//
//  main.swift
//  22_Protocols
//
//  Created by Dylan_Yoon on 2022/06/20.
//
print("Protocols")

print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Protocol Syntax
print("Protocol Syntax")

//프토로콜 정의
protocol FirstProtocol {
    // definition
}
protocol SecondProtocol {
    // definition
}

// enum 프로토콜 채택
enum EnumProtocol: FirstProtocol {
    // definition
}

// struct 프로토콜 채택
struct SomeStruct: FirstProtocol, SecondProtocol {
    // definition
}

// class 프로토콜 채택
class SuperClass {
    // definition
}
class SubClass: SuperClass, FirstProtocol, SecondProtocol {
    // definition
}

print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Property Requirements
print("Property Requirements")

protocol PropertyProtocol {
    var usingGetSet: Int { get set } //private(set) 설정을 할 수 없음
    var onlyGet: Int { get }
    static var typeProperty: Int { get set }
}

class exClassProtocol: PropertyProtocol {
    var usingGetSet: Int
    private(set) var onlyGet: Int
    static var typeProperty: Int = 10
    
    init(usingGetSet: Int, onlyGet: Int) {
        self.usingGetSet = usingGetSet
        self.onlyGet = onlyGet
    }
}

//let aaa = exClassProtocol(usingGetSet: 10, onlyGet: 10)
//print(aaa.onlyGet)
//aaa.onlyGet = 10



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -
print("")



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -
print("")



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -
print("")



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -
print("")






print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -
print("")

