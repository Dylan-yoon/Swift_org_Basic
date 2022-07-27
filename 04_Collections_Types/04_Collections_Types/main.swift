//
//  main.swift
//  04_Collections_Types
//
//  Created by Dylan_Yoon on 2022/06/20.
//

import Foundation

//MARK: - 배열(Arrays)

//MARK:
/*
 선언
 Array<Element>
 [element]
 */
func arrays() {
    //빈 배열 생성
    let creatingArray1: Array<Int>
    let creatingArray2: [Int] = []
    let creatingArray3 = [Int]()
    
    //Array repeating,count를 이용한 기본값 배열 생성
    //Array(reepeating: 어떤값을?, count: 몇개?)
    let creatingArray4 = Array(repeating: 0.0, count: 10)
    print(creatingArray4)
    //[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
    
    //2차원 배열을 생성해 줄 수 있다.
    let creatingArray5 = Array(repeating: ["2차원", "배열", "생성"], count: 10)
    print(creatingArray5)
    
}

arrays()








//MARK: - 집합(Sets)

func sets() {
    
}






//MARK: - 딕셔너리(Dicitionaries)

func dictionaries() {
    
}







//MARK:
