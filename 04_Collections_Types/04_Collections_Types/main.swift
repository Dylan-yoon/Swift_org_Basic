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
    
    //배열의 접근과 수정 (Accessing and Modifying an Array)
    //메서드 들을 사용해 접근 및 수정 가능하다.
    var methodArrays = [1,2,3,4,6,7,8,9]
    print(methodArrays.isEmpty) //false
    print(methodArrays.count) //10 Int
    
    methodArrays.append(10)  //맨 마지막에 추가
    print(methodArrays)
    
    methodArrays += [11]
    print(methodArrays)
    
    methodArrays.insert(5, at: 4)
    print(methodArrays)
    
    methodArrays.remove(at: 1)
    print(methodArrays)
    
    //CAUTION : 배열의 범위를 넘는 인덱스로 값에 접근 또는 수정을 할 경우 런타임 에러가 발생.
    methodArrays.removeLast()
    print(methodArrays)

    
    //배열은 반복문에 넣어 사용 할 수 있다.
    // (Iterating Over an Array)
    
    for i in methodArrays {
        print(i)
    }
    
    
    //배열을 값 뿐만 아니라 인덱스를 사용하기 위해서 enumerated() 를 사용하면 된다.
    for (index, value) in methodArrays.enumerated() {
        print("Item \(index + 1): \(value)")
    }
    
    for (index, _) in methodArrays.enumerated() {
        print("index: ", index)
    }
    
}
// 실행
// arrays()

//MARK: - 집합(Sets)
// 아이템의 순서가 중요하지 않거나 아이템이 반복되면 안될 때 배열 대신에 집합을 사용

/*
 빈 집합 생성과 초기화 (Creating Initializing an Empty Set)
 
 var set = Set<Type>()
 
 */

func sets() {
    var sets1: Set<String> = ["aaaa","bbbb","cccc"] // [배열 형식을 타입 지정으로 세트로 지정 가능]
    
    for i in sets1 {
        print(i)
    } //Set도 반복문에 사용 가능
}

// 실행
 sets()


// set 오ㅓ

//MARK: - 딕셔너리(Dicitionaries)

func dictionaries() {
    
}







//MARK:
