//
//  main.swift
//  09_Structures_and_Classes
//
//  Created by Dylan_Yoon on 2022/06/20.
//

print("Structures_and_Classes")

print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Comparing Structures and Classes
print("Comparing Structures and Classes")

//선언
struct SomeStructure {}
class SomeClass {}

// 인스턴스화
let someStructure = SomeStructure()
let someClass = SomeClass()

//점 구문 사용
class Class1 {
    var name = "snake"
}
let class1 = Class1()
print(class1.name)

print("------------------------------------------------")
//MARK: -Structures and Enumerations Are Value Types
print("Structures and Enumerations Are Value Types")


struct MyInfo {
    var name = "Dylan"
    var age = 21
    var job = "student"
    let human = true
}

var dylan = MyInfo()

var faker = dylan //-> 값 복사가 이루어진다.
faker.name = "faker"
faker.age = 27

print(dylan.name)
print(dylan.age)

print(faker.name)
print(faker.age)

print("------------------------------------------------")
//MARK: -Classes Are Reference Types
print("Classes Are Reference Types")

class ProductInfo {
    var name = "keyBoard"
    var generateBirth = 2010
    let human = false
}

let keyBoard = ProductInfo()
let mouth = keyBoard //   -> struct 의 경우 값이 복사 되어 새로운 인스턴스가 생성이 되어야 겠지만
// class의 경우 참조 타입이기 때문에, mouth와 keyBoard 모두 keyBoard라는 인스턴스를 참조 하고 있다.

mouth.name = "mouth"
mouth.generateBirth = 2022

print("keyboard : ", keyBoard.name)
print("mouth : ", mouth.name)
print("keyboard : ", keyBoard.generateBirth)
print("mouth : ", mouth.generateBirth)

/*
 keyboard :  mouth
 mouth :  mouth
 keyboard :  2022
 mouth :  2022
 */

