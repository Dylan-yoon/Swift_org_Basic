//
//  main.swift
//  06_Functions
//
//  Created by Dylan_Yoon on 2022/06/20.
//

import Foundation

//특정 작업을 수행하는 코드 모음

//MARK: -Defining and Calling Functions (함수 정의와 호출)

/*
        ---선언방법---
 func 함수이름(argument parameter: Type) -> 반환타입 {
    코드블럭
    return 반환값
 }
 
        ---호출방법---
 함수이름()
 리턴값이 있다면
 var(let) name = 함수이름()
 으로 바로 할당 가능하다!
 
 */



//MARK: -

/*
 함수는 여러가지의 경우의 수가 있다

 ----가장 기본적인 함수는----
 func funcName() {
  실행구문
 }
 ----내 나름 꽉꽉 채워보면----
 
 func funcName(argu1 para1: String, argu2 para2: Int) -> (String, Double) {
    실행구문
    return ("", 00.00)
 }
 ----               -----
 
 살을 붙여보자
 func funcName(1️⃣) 2️⃣ {
  실행구문
  3️⃣
 }
 */



/*
 1️⃣ 에서 함수에 대해 입력 값을 넣어줄 수 있다.
 기본적인 형식으로는
 (argument parameter: Type)
 으로 이루어지는데
 
 (argument parameter: Type, argument parameter: Type)
 이렇게 여러개가 들어 갈 수 있다.
 
 argument : 함수에 입력 받아 오기 위해
 parameter : 함수 내에서 사용 할 이름
 Type : 파라미터에 대한 타입
 
 💡***TIP***💡
1. Swift API Guide 를 참고하면 좋다!,
*/
func firstFunc(argument parameter: String) {
    print(parameter, "good")
}

//firstFunc(argument: "practice")

/*
 2️⃣ 는 반환 타입
 함수를 실행 하고 나
 
  PS) 만약 Error 타입을 던지기 위해 throws
 
 func errorFunc() throws -> String {
     return "string"
 }

 💡***TIP***💡
 1. 반환타입 [ Void == "()" ] 같은 표현이다 Void 는 빈 튜플을 의미한다.
 2. 에러 타입읠 던지기 위해 throws 는 함수이름 뒤, -> 반환타입 앞에 사용한다!
 3. 암시적으로 함수의 실행 구문이 1줄이면 retrun을 생략 할 수 있다.
 
*/
func arguTest1(argu name: String) {}
func arguTest2(_ name: String) {} //와일드 카드 식별자를 사용하면 아래의 함수 호출에서 argument 가 공란이 된다.
func arguTest3(name: String) {}

//arguTest1(argu: <#T##String#>)
//arguTest2(<#T##name: String##String#>)
//arguTest3(name: <#T##String#>)


// 1️⃣1️⃣1️⃣1️⃣1️⃣1️⃣1️⃣1️⃣
//가변 파라미터를 사용 할 수 있다. 뒤에 기간 문자(...) 추가하면 된다!
func variadicParameter(_ initInt: Int, _ number: Int.../*, _ a: Int... -> 가변 파라미터는 맨 마지막에 1개만 선언 가능*/) -> Int {
    var sum = initInt
    
    for num in number {
        sum += num
    }
    return sum
}
//let variadic = variadicParameter(10, 1,2,3,4,5)
//print(variadic)


/*
                    In-Out Parameters
 함수의 파라미터는 상수, 파라미터 값을 변경하면 컴파일 에러가 발생하기 때문에, 변경하고 수정하기 위해 In-Out 파라미터를 사용한다.
 */
func inoutPara(_ inouts: inout String) {
    print(inouts)
    inouts = "inout으로 변경!"
    print(inouts)
}
//⚠️ inoutPara(&"inout으로 변경 가능하다!") 오류 발생, 변상수로 만들어 사용
var inoutPara = "inout으로 변경 가능하다!"
inoutPara(&inoutPara)
//호출 할 때 & 를 사용해 변경가능함을 알린다.


// 반환 타입으로 함수 타입 - Function Types as Return Types
 
func exReturnFunc1(_ addnum: Int) -> Int {
    addnum + 50
}
func exReturnFunc2(_ addnum: Int) -> Int {
    addnum + 5000
}

func exReturnedFunc(istrue: Bool) -> (Int) -> Int {
    istrue ? exReturnFunc1(_:) : exReturnFunc2(_:)
}

/*
 func exReturnedFunc(istrue: Bool) -> (Int) -> Int {
 여기서 (istrue: Bool) -> (Int) -> Int 의 의미는
 exReturnedFunc 이라는 함수는
 Bool 값을 받아와서
 (Int) -> Int 라는 함수를 반환한다는 것
 */

var currentCount = 500
let printReturn = exReturnedFunc(istrue: currentCount > 100)
print(printReturn) //printReturn 은 exReturnedFunc의 return값인 함수를 반환하기 때문에 출력시 Function으로 나온다.
currentCount = printReturn(currentCount)
print(currentCount)

/*
 중첩함수 - Nested Function
 함수안의 함수
 즉 전역 함수 안에서 함수를 정의 할 수 있음.
 
 */

