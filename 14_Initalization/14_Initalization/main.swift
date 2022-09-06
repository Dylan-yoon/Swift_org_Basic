//
//  main.swift
//  14_Initalization
//
//  Created by Dylan_Yoon on 2022/06/20.
//
print("Initialization")

print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Setting Initial Values for Stored Properties
print("Setting Initial Values for Stored Properties")


//초기화
print("Initailzers")
struct MyName {
    var name: String
    init() {
        name = "이니셜"
    }
}

print("Default Property Values")


print("Customizing Initialization")
struct Exchanging {
    var won: Double
    init(USD: Double) {
        self.won = USD * 1.362
    }
    init(EUR: Double) {
        self.won = EUR * 1.361
    }
}

//위에서와 같이 초기화 구문을 두군데로 사용 가능하다.

print("Parameter Names and Argument Labels")
//- argument Label 사용할 수 있다.
//- 이니셜라이저를 위해 콜론앞을 제거하면 오류가난다.

struct Triangle {
    let firstSide: Int
    let secondSide: Int
    let thirdSide: Int
    
    init(firstSide: Int, _ secondSide: Int, thirdSide: Int) {
        self.firstSide = firstSide
        self.secondSide = secondSide
        self.thirdSide = thirdSide
    }
    init(equilateralTriangle: Int) {
        firstSide = equilateralTriangle
        secondSide = equilateralTriangle
        thirdSide = equilateralTriangle
    }
}
//let triangle = Triangle(firstSide: <#T##Int#>, <#T##secondSide: Int##Int#>, thirdSide: <#T##Int#>)
//let equilTriangle = Triangle(equilateralTriangle: <#T##Int#>)

print("Optional Property Types")

class PersonInfo {
    let name: String
    var girlFirend: String?
    init(name: String) {
        self.name = name
    }
    
    func ask() {
        if let girlFirend = girlFirend {
            print("\(name)의 여자친구는 \(girlFirend)입니다.")
        } else {
            print("\(name)은 솔로입니다.")
        }
    }
}
let hamo = PersonInfo(name: "hamo")
let david = PersonInfo(name: "david")
david.girlFirend = "Juliet"
hamo.ask()
david.ask()
print(hamo.girlFirend)


//optional 로 선언이 되면 자동적으로 nil값을 할당해준다.

print("Assigning Constant Properties During Initialization")
//david.name = "dylan"
//초기화 하는동안 프로퍼티 상수는



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Customizing Initalization
print("Customizing Initalization")



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Default Initializers
print("Default Initializers")



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Initializer Delegation for Value Types
print("Initializer Delegation for Value Types")



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Class Inheritance and Initialization
print("Class Inheritance and Initialization")



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Failable Initializers
print("Failable Initializers")



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Required Initializaers
print("Required Initializaers")



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Setting a Default Property Value with Closure or Function
print("Setting a Default Property Value with Closure or Function")


