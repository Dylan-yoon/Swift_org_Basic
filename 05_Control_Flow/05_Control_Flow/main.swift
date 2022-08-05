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






//MARK: -



