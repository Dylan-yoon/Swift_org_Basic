//
//  main.swift
//  05_Control_Flow
//
//  Created by Dylan_Yoon on 2022/06/20.
//

import Foundation

//MARK: -For in 루프
/*
 for index in items {
    반복구문
 }
 
 items에 딕셔너리, 배열 혹은, 1...3 ClosedRange<Int> 범위 연산자. 등등 들어간다.
 
 */

func forIn() {
    for i in 1...3 {
        print("for \(i)")
    }
    
    //딕셔너리 튜플배열 등을 사용할 때
    let tuple = [(1,2,3),(11,22,33),(111,222,333)]
    let dic = ["a": 1, "b": 2, "c": 3]
    
    //튜플을 포함한 배열 사용
    for (a,b,c) in tuple {
        print("\(a), \(b), \(c)")
    }
    
    //딕셔너리를 포함한 배열 사용
    for (a, b) in dic {
        print("\(a), \(b)")
    }
}

//forIn()



//MARK: -While 루프

/*
 while 문
 while (condition) {
    (statements)
 }
 */


/*
 
 Repeat-While
 repeat {
    (statements)
 } while (condition)
 */

func exWhile() {
    var a = 0
    print("while")
    while a < 3 {
        print("a : \(a)")
        a += 1
    }
    
    //repeat while을 사용하면
    a = 0
    print("repeat while")
    repeat {
        print("a : \(a)")
        a += 1
    } while a < 3
    
    //여기까지는 똑같다 하지만
    print("----0----0----0---0---0---0---0----")
    var b = 3
    print("while")
    while b < 3 {
        print("b : \(b)")
        a += 1
    }
    
    //repeat while을 사용하면
    b = 3
    print("repeat while")
    repeat {
        print("a : \(b)")
        b += 1
    } while b < 3
    
    /*
     - while과 repeat-while을 사용 시 유의사항 -
     조건이 바로 일치 되더라도 while 최초 1번을 사용하기 위해서 사용한다.

     위에서 처럼 실행되지 않는다는 (Will never be executed) 경고창이 나타난다
     */
}

//exWhile()

/*
 - 배열과 반복문에서의 주의할점
 배열을 반복문 혹은 인덱스를 사용 할 때
 배열의 범위를 넘어가지 않도록 주의 -> 런타임 오류 발생
 */

//MARK: - 조건 구문(Conditional Statement)

//MARK: IF
/*
 if 조건문 {
 
 } else if 조건문 {
 
 } else if 조건문 {
 
 } else if 조건문 {
 
 } else {
 
 }
 
 조건문이 True 일때 실행된다.
 else if , else는 선택사항이다.
 */

//MARK: Switch
/*
 switch _someValueToConsider_ {
 case value 1 :
    respond to value 1
 case value 2,
      value 3 :
     respond to value 2 or 3
 default:
    otherwise, do something else
 }
 
 default 는 필수
 
 */


//MARK: 명시적 fallthrough(No Implicit Fallthrough)
/*
 다른 언어에서는 case 별로 break를 요구 하는 경우가 많지만 swift 에서는 특정 실행이 완료되기 전에 빠져나와야 할 경우 break를 사용한다.
 
 **특정 switch 케이스에 끝에서 명시적으로 다음 케이스로 떨어뜨리려면 Fallthrough 에서 설명한대로 fallthrough 키워드를 사용한다**
 */


//MARK: Tuples
/*
 switch 구문에 여러 값인 튜플 사용 할 수 있다.
 튜플 내의 하나의 요소 중 모든 값을 사용 할 수 있도록 _(wildCard Pattern)를 사용 할 수 있다.
 
 case (a, b):
    print("")
 caes (_, c):
    print("")
 */

//MARK: Value Bindings (값 바인딩)
/*
 switch 케이스는 일치하는 값 또는 값들을 임시적 상수 또는 변수로 이름을 가질 수 있으며 케이스 바디 안에서 사용할 수 있습니다. 값은 케이스의 바디 내부에서 임시적 상수 또는 변수로 바인드 되기 때문에 이러한 동작을 값 바인딩 (value binding) 이라 한다.
 
 
 case (let x, 0):
     print("on the x-axis with an x value of \(x)")
 이처럼 case 안에서 튜플의 값을 사용하기위해 let x 라는 임시상수를 사용 하여 활용한다.
 */

//또한 케이스는 where을 사용해 추가 조건 사용할 수 있다.
//혼합 케이스 (Compound Cases)



func exSwitch() {
    let temporaryNumber = 10

    switch temporaryNumber {
    case 1...9 :
        print("num is 1...9")
    case 10...11 :
        print("ten")
    default :
        print("default value")
    }
    
    //기본적인 switch 구문
    
    //위에서 기술한 내용들을 적용해보면
    
    let temporaryTuple = ("a", 13)
    
    switch temporaryTuple {
    case (let x, 13) : //임시 상수를 사용해 튜플 값을 받아 올 수 있다. 즉 x를 상수로 사용하지 않으면 _와일드카드와 같다.
        print("\(x) & 13")
    case ("a", _), ("c", _) : //여러가지 케이스를 사용할 수 있다, 혼합케이스
        print("find \"a\"")
    case (let x, 13) where x != "z": //where을 사용해 조건을 추가 할 수 있다.
        print("find \"13\"")
    case let(x, y) : //모든 경우의 수가 사용되기 때문에 default값을 사용 할 필요가 없다.
        print("\(x) & \(y)")
    }

}

exSwitch()


/*
 즉 switch는
 */
