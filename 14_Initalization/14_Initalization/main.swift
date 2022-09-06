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
class defualtInit {
    var name = "dylan"
    var age = 21
    var job: String?
}
// 각각의 기본값으로 설정되는 이니셜라이저

print("Memberwise Initializers for Structure Type")
struct structMemberwise {
    var person = true
    var name: String
    var age: Int
    let firstName: String
}
//let someoneMemberwise = structMemberwise(name: <#T##String#>, age: <#T##Int#>, firstName: <#T##String#>)


print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Default Initializers
print("Default Initializers")
//공식문서 예제
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init() {} // 사용하지 않는다면? 기본값으로 초기화 되지 않는다.
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
//let basicRect = Rect()
//let originRect = Rect(origin: <#T##Point#>, size: <#T##Size#>)
//let centerRect = Rect(center: <#T##Point#>, size: <#T##Size#>)
//이렇게 값타입의 struct의 경우 간단하게 initializer Delegation이 적용된다.

struct CoffeeSize {
    enum CupSize {
        case tall, grande, venti
    }
    var size = CupSize.tall
}

struct CoffeeTemperature {
    var temperature = 30
}

struct Coffee {
    var size = CoffeeSize()
    var temperature = CoffeeTemperature()
    
    init() {}
    init(size: CoffeeSize, temperature: CoffeeTemperature) {
        self.size = size
        self.temperature = temperature
    }
    init(size: CoffeeSize, lowTemperature: CoffeeTemperature) {
        let lowTemperatureCoffee = lowTemperature.temperature - 20
        self.init(size: size, temperature: lowTemperature)
        self.init(size: size, temperature: CoffeeTemperature(temperature: lowTemperatureCoffee))
    }
}

let firstinit = Coffee()
let secondinit = Coffee(size: CoffeeSize(size: .grande), temperature: CoffeeTemperature(temperature: 50))
let thirdinit = Coffee(size: CoffeeSize(), lowTemperature: CoffeeTemperature(temperature: 50))
print(thirdinit.temperature)
//예제를 약간 모방해서 만들어봄
// 1. 일반적으로 size, temperature의 각각 타입의 초기값으로 초기화가 진행된다.
// 2. size, temperautre 의 각각 타입 초기화를 시켜준다.
// 3. 2번에서의 온도값에서 20을 차감한 값을 계산하여 초기화한다.


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


