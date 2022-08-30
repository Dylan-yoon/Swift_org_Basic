//
//  main.swift
//  11_Methods
//
//  Created by Dylan_Yoon on 2022/06/20.
//

print("Methods")
//MARK: - Methods
/*
 method? 메서드는 특정 타입과 연관된 함수
 Class, Enum, Struct 각각의 동작을 수행하기위해
 혹은 캡슐화 하는 인스턴스 메서드를 정의 할 수 있음
 
 ***타입 메서드는 Objective-C에서 클래스 메서드와 유사합니다.***
 
 옵젝씨는 클래스 메서드만 정의 가능했음
 */



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Instance Methods
print("Instance Methods")

class ClassInstance {
    var x = 0, y = 0
    
    func 앞으로() {
        y += 1
        print("x: \(x), y: \(y)")
    }
    
    func 왼쪽으로() {
        x -= 1
        print("x: \(x), y: \(y)")
    }
    
    func 오른쪽으로() {
        x += 1
        print("x: \(x), y: \(y)")
    }
    
    func 뒤로() {
        y -= 1
        print("x: \(x), y: \(y)")
    }
    
    func 위치리셋() {
        x = 0
        y = 0
    }
    
}

let classInstance = ClassInstance()
classInstance.뒤로()
classInstance.앞으로()
classInstance.왼쪽으로()
classInstance.오른쪽으로()
classInstance.위치리셋()


print("------------------------------------------------")
//MARK: The self Property (self 프로퍼티)
print("The self Property")
// self 프로퍼티의 경우 필수적으로 작성할 필요가 없다.
// 보통 파라미터와, 인스턴스 프로퍼티가 같을 때 인스턴스 프로퍼티에 정확하게 명시하기 위해 self.인스턴스프로퍼티 를 사용한다

class SubClassInstance: ClassInstance {
    func 위치조정(x: Int, y: Int) {
//        x = x
//        y = y
//        이렇게 작성한다면 오류가난다
//        인스턴스프로퍼티x의 값과 파라미터 x의 값이 같은 이름이기 때문에 Swift에서는 x는 메서드 파라미터를 참고한다
        self.x = x
        self.y = y
        print("x: \(x), y: \(y)")
    }
}

let subClassInstance = SubClassInstance()
subClassInstance.오른쪽으로()
subClassInstance.위치조정(x: 3, y: 10)


print("------------------------------------------------")
//MARK: -Modifying Value Types from Within Instance Method (인스턴스 메서드 내에서 값 타입 수정), mutating
print("Modifying Value Types from Within Instance Method")
// 값 타입의 프로퍼티는 인스턴스 메서드 내에서 수정될 수 없다. Struct, Enum

//mutating

//하지만 mutating 키워드를 사용해서 프로퍼티의 수정이 가능하다
// Left side of mutating operator isn't mutable: 'self' is immutable
// mutating 사용하지 않는다면 위와 같은 오류가 난다.

struct UsingMutating {
    var name = "struct"
    
    mutating func changeName() {
        name += "mutating" // <- name 암시적 self 프로퍼티에 새로운 인스턴스를 할당.
        print("print name : ", name)
    }
}

var usingMutating = UsingMutating()
usingMutating.changeName()


print("------------------------------------------------")
//MARK: -변경 메서드 내에서 self 할당 (Assigning to self Within a Mutating Method)
print("Assigning to self Within a Mutating Method")


struct UsingMutatingAndAssigningSelf {
    var name = "struct"
    
    mutating func changeName() {
        name = "ssssssssssssssssss"
        self = UsingMutatingAndAssigningSelf(name: "string")
        print("print name : ", name)
    }
}
var usingMutatingAndAssigningSelf = UsingMutatingAndAssigningSelf()
usingMutatingAndAssigningSelf.changeName()


enum switchStatus {
    case pause
    case start
    case stop
    
    mutating func changeStatus() {
        switch self { // -> self는 swiftchStatus 의미
        case .pause:
            self = .start
            print("start로 변경")
        case .start:
            self = .pause
            print("pause로 변경")
        case .stop:
            self = .start
            print("start로 변경")
        }
    }
}
//열거형의 변경 메서드는 동일한 열거형에서 다른 케이스로 암시적으로 self 파라미터를 설정할 수 있다.

var nowStatus = switchStatus.stop
nowStatus.changeStatus()
nowStatus.changeStatus()
nowStatus.changeStatus()

 


