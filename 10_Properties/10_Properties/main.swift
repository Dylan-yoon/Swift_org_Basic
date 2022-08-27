//
//  main.swift
//  10_Properties
//
//  Created by Dylan_Yoon on 2022/06/20.
//

//MARK: - Stored Properties
// 1. variable stored properties (keyWord 'var')
// 2. constat stored properties (keyWord 'let')


//MARK: Stored Properties of Constant Structure Instances
// * 구조체의 인스턴스를 생성하고 상수로 할당하면 프로퍼티 변수로 선언되어 있어도 인스턴스의 프로퍼틸르 수정 할 수 없다.

//MARK: Lazy Stored Properties
// KEY WORD : 불필요한 초기화

// 처음 사용될 때까지 초기값은 계산되지 않는 프로퍼티.
// 인스턴스 초기화가 완료된 후에도 초기값이 없을 수 있으므로 지연 프로퍼티는 var 키워드를 사용하여 변수로 선언해야 한다.
// 프로퍼티 상수는 초기화가 완료되기 전에 항상 값을 가지고 있어야 하므로 lazy로 선언할 수 없다.

// 선언
/*lazy*/ var lazyStoredProperty = 1 //'lazy' cannot be used on an already-lazy global

struct LazyStored {
//    상수로는 lazy 선언 불가 => 
//    lazy let constantLazyStoredProperty = 1
    
    lazy var lazyStoredProperty = 1
}

class DataImporter {
    var filename = "data.txt"
}
class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("some Data")

//MARK: - Computed Properties
// 저장된 프로퍼티, 클래스, 구조체, 열거형은 값을 실질적으로 저장하지 않는 계산된 프로퍼티를 정의할 수 있다.
// getter, optional<Setter>을 제공
// var name: type {}
/*
 var name: type {
    get {return}
    set {}
 }
 */

// 먼저 getter setter을 사용 하기 위해서, 연산 프로퍼티는 자신을 지지고 볶는것이아닌 행해질 저장프로퍼티가 무조건 필요함
// 1. get 만사용
// 2. get set 사용
// set만 사용 할 수 없다.
// set의 newValue는 get의 리턴값이다
// get 만 사용한다면 get 생략해 줄 수 있다.




// 공식문서 코드
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            print("ggggg")
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            print("settttttttting")
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

////풀어서 해바바
//var square = Rect(
//    origin: Point(x: 0.0, y: 0.0),
//    size: Size(width: 10.0, height: 10.0)
//)
//print("center : ", square.center)
//let initialSquareCenter = square.center // getting
//// initialSquareCenter is at (5.0, 5.0)
//
//square.center = Point(x: 15.0, y: 15.0) //setting
//print("square.origin is now at (\(square.origin.x), \(square.origin.y))")

struct computedProperties {
    var total = 0
    var cost = 4500
    var callCount = 0
    
    var wallet: Int {
        get {
            print("get : ", total, cost)
            return total * cost
        }
        set {
            callCount += 1
            print("call setter : ", newValue)
        }
    }
}

var exComputed = computedProperties()

exComputed.total = 1
exComputed.total = 2
print(exComputed.wallet) //get 실행된다. -> get :  2 4500; 9000

let dragonMoney = exComputed.wallet + 50000 //get :  2 4500
print(dragonMoney)
//print(exComputed.wallet) // get :  2 4500; 9000

//그렇다면 setter 는 언제 사용되는데?...?
print("callCount : "
      , exComputed.callCount)
exComputed.wallet = 100000 // wallet을 직접적으로 수정 했을 때 setter 호출
print("callCount : ", exComputed.callCount)

//MARK: Shorthand Setter Declaration
struct ShorthandGetter {
    var storedNumber = 10

    var shorthand: Int {
        get {
            let getInt = storedNumber + 100
            return getInt
        }
    }
}

//var exGetter = ShorthandGetter()
//exGetter.storedNumber = 100
//print("exGetter.storedNumber : ",exGetter.shorthand)
//exGetter.storedNumber = 200
//print("exGetter.storedNumber : ",exGetter.shorthand)


//MARK: Shorthand Getter Declaration
//MARK: Read-Only Computed Properties
//위에서 간단 정리



//MARK: -

//MARK: -

//MARK: -

//MARK: -
