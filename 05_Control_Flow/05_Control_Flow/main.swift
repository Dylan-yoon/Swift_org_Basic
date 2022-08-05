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

//MARK: - If



/*
 - 배열과 반복문에서의 주의할점
 배열을 반복문 혹은 인덱스를 사용 할 때
 배열의 범위를 넘어가지 않도록 주의 -> 런타임 오류 발생
 */

