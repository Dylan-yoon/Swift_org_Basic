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

/*
 
 
 
 3️⃣
 
 
 
 
 
 */

