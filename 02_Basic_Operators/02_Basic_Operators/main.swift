//
//  main.swift
//  02_Basic_Operators
//
//  Created by Dylan_Yoon on 2022/06/20.
//

import Foundation

//MARK: 기본 연산자 (Basic Operators)

//MARK: -대입 연산자 (Assignment Operator)
/*
 - 단항 연산자(Unary) : -a
 - 이항 연산자(Binary) : a + b
 - 삼항 연산자(Ternary) : a ? b : c
 */



//MARK: - 산술 연산자 (Arithmetic Operators)
// + , - , * , /
// Swift에서 산술 연산자는 오버플로우 되는 것을 허용하지 않음. //추후 고급 연산자에서 다룰예정.



//MARK: - 나머지 연산자 %(Remainder Operator)
//나머지 연산자는 (a % b) a/b 의 나머지 값
print(5 % 3) // 2.
print(123 % 9) // 6

// 음수 또한 적용 된다.
print(-14 % 3) // -2



//MARK: - 비교 연산자 (Comparison Operators)
/*
  ***           비교 연산자는 Bool type           ***
 - 같음 (a == b)
 - 다름 (a != b)
 - 보다 큼 (a > b)
 - 보다 작음 (a < b)
 - 보다 크거나 같음 (a >= b)
 - 보다 작거나 같음 (a <= b)
 
 ***            튜플에서의 비교            ***
 if 조건문에서
 (3, "ab") (3, "bc") 비교해보면
 */
if (3, "ab") > (3, "bc") {
    print("front")
} else {
    print("back")
}
//튜플의 0번 인덱스부터 차례로 비교한다.
// *****  주의사항  ****** : Swift 표준 라이브러리는 7개 미만의 요소를 가지고 있는 튜플에 대해 튜플 비교 연산자를 제공합니다. 7개 이상의 요소의 튜플을 비교하려면 비교 연산자를 직접 구현해야 합니다.



//MARK: -삼항 조건 연산자 (Ternary Conditional Operator)
// question ? answer1 : answer2
// question 이 참이면 = answer1 , 거짓이라면 = answer2 을 반환
/*
 삼항 조건 연산자는 아래 코드의 줄임 표현이다.
if question {
    answer1
} else {
    answer2
}
*/

print(true ? 10 : 20) // 10
print(false ? 10 : 20) // 20


//MARK: - Nil-결합 연산자 (Nil-Coalescing Operator)
 // (a ?? b) 은 a != nil ? a! : b 를 짧게 표현한 것
// a 는 항상 옵셔털 타입이다 (반환값이 Nil 이라는 것에서 충분히 유추 가능하다.)

let nonoptionalA = "A"
var optionalB: String? = "B"
print(optionalB)
var optionalC: String?

var unwrapping1 = optionalB ?? nonoptionalA
print(unwrapping1)

var unwrapping2 = optionalC ?? nonoptionalA
print(unwrapping2)

//옵셔널을 언랩핑 할 수 있다.

optionalC = "wrapping"
var wrapping1 = optionalC ?? nonoptionalA
print(wrapping1)



//MARK: - 범위 연산자(Range Operators)
for index in 1...3 {
    print(index)
}
var ranges: ClosedRange<Int> = 1...3
//ClosedRange<Int> 라는 타입을 가진다.
for i in 1..<3 {
    print(i , "half")
}
// 단-방향 범위(One-Sided Ranges) ...n , n...
// 배열에서 유용하게 사용된다.



//MARK: -논리적 NOT 연산자(Logical NOT Operator)
/*
 논리적 NOT( !a)
 논리적 AND(a && b)
 논리적 OR (a || b)
 */
