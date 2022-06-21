//
//  main.swift
//  01_The_Basic
//
//  Created by Dylan_Yoon on 2022/06/20.
//

import Foundation

//MARK: - 상수와 변수
//MARK: 상변수 선언

let constants = "상수"
var variables = "변수"
var first = 1, second = 2, third = 3 //한번에 선언 가능하다.


//MARK: 상수와 변수의 값 변경
//constants = "상수변경"
//Cannot assign to value: 'constants' is a 'let' constant  상수는 변경할 수 없기 때문에..
variables = "변수변경"


//MARK: 타입 명시
var typeAnnotations: String = "타입 명시" // 콜론(:) 은 "...의 타입은 ...다" 즉 "typeAnnotations의 타입은 String 이다"
var type1, type2, type3: Bool //한번에 명시 가능하다


//MARK: 상수와 변수의 이름
let a = "english"
let ㄱ = "hangle"
let 💪 = "이모티콘"
let 好 = "한자"
//유니코드 문자를 포함하기 때문에 문자를 포함시킬 수 있다.
// ⚠️하지만 숫자를 변수상수 이름 맨앞에 사용할 수 없다⚠️


//MARK: 출력
// print의 기본 구성은 -> print(<#T##items: Any...##Any#>, separator: <#T##String#>, terminator: <#T##String#>)
// separator, terminator 는 각각 [" "]띄어쓰기 와 ["\n"]문단 나누는 default값을 가진다.
print("구","분","하","기", separator: "__", terminator: "::문단 나누기::")
print("붙어서 출력된다!")
//   구__분__하__기::문단 나누기::붙어서 출력된다!










//MARK: - 주석, 세미콜론
// 주석은 두개의 슬래쉬
/*
 /* */를 활용하여 사이의 값으로 주석을 넣어줄 수 있다.
 */

// 세미콜론(;)은 필수조건이 아니다!
print("세미"); print("콜론")
//위 처럼 바로 옆에 붙여쓸 때 사용,,(굳이?)










//MARK: - 정수, 부동 소수점 숫자
/*
 Int32, Int64
 Double 64-bit 부동 소수점 -> 15자리 소수점 정확도
 Float 32-bit 부동 소수점 -> 6자리 소수점 정확도
 */
let underBarInt = 2_0_0_0 // 2000으로 출력된다. 20_00 또한 같다










//MARK: - 타입 세이프티와 타입 유추
var stringType1: String = "String"
var stringType2 = "String" //타입을 추론해준다.
//stringType1 = 1
//위의 경우 String의 값이지만 Int 를 할당했으므로 컴파일러가 오류를 보내준다. [Cannot assign value of type 'Int' to type 'String']










//MARK: - 숫자 리터럴
/*
 0b (2진수 Binary)
 0o (8진수 Octal)
 0x (16진수 hexadecimal)
 */
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation










//MARK: - 숫자 타입 변환

let cannotBeNegative: UInt8 = 1
let maxInt8 = Int8.max
//print(Int8.max + 1)
// 범위를 초과 했으므로 오버플로우 오류 발생
// Arithmetic operation '127 + 1' (on type 'Int8') results in an overflow
print(UInt64(maxInt8) + 1) // 타입 변환으로 오류나지 않는다.
//추후 확장 Extensions 에서 ...










//MARK: - 타입별칭
typealias typeSample = UInt8
var maxUInt = typeSample.max //var maxUInt = UInt8.max 과 같은 표현이다.










//MARK: - Booleans
let boolFalse: Bool = false
let boolTrue = true
// 제어흐름에서 자세히 다룰것이다!
// 특히 if 조건문에서 유용하다!










//MARK: - Tuples

//튜플의 선언
let tuples1: (String, String, Int)
let tuples2 = ("factor1", true)

let (factor1_1, factor1_2) = tuples2 //튜플을 상수 혹은 변수로 구분해 선언 가능하다.
print(factor1_1) // 분해해 접근 할 수 있다.

var (factor2_1, _) = tuples2 // 언더바 이용해 튜플 무시 할 수 있다.
let indextuples = tuples2.0 //인덱스 사용해서 사용 할 수 있다.


let tuple3 = (factor3_1: 300, factor3_2: "string") //튜플요소에 이름 저장 가능
print(tuple3.factor3_1)

// 튜플은 반환값이 여러개일 때 활용 한다










//MARK: - Optionals

let nonOptional = "123"
let convertInt = Int(nonOptional)
// 타입을 확인해보면 타입 변환시 converInt로 초기화 할 때 옵셔널을 받아온다. int로변환이 안된다면 nil을 반환할것이다.


//MARK: nil
// nil은 optional의 특수한값. 즉 값이 없는 상태
// 옵셔널이 아니라면 nil 을 사용할 수 없다.
var optionalInt: Int? = 100
optionalInt = nil //옵셔널이기 때문에 nil 할당 가능하다!


//MARK: if 구문과 강제로 풀기
//nil은 비교 수행을 할 수 있다. (==), (!=)
//if 구문으로 옵셔널에 값이 있는지 없는지 확인 할 수 있다.

if convertInt != nil {
    print(convertInt)
} // Optional(123)
if convertInt != nil {
    print(convertInt!)
} // Optional(123)

// ! (exclamation point) 를 사용해서 강제로 옵셔널 값을 추출해 낼 수 있다.
// ! 를 사용하여 값이 없는 옵셔널에 사용하면 런타임 에러가 발생한다. 항상 ! 를 사용하여 값을 강제로 풀기 전에 옵셔널에 nil 이 아닌 값이 있다는 것을 확실시 해야 한다.


//MARK: Optional Binding
// 옵셔널 바인딩은 옵셔널 값이 포함됐는지 확인하고 해당값을 임시 상수 또는 변수로 사용하게 해준다.
if let convert = convertInt {
    print(convert) //바인딩
}
//print(convert) //if let 밖에서는 사용 할 수가 없다!

// if let 으로 바인딩한 옵셔널 값은 구문 안에서만 사용 가능하고, 밖에서도 사용하기위해 guard let else 문을 사용한다.


//MARK: 암시적으로 언래핑된 옵셔널 (!)
//간단하게 말해서 옵셔널은 안전성을 위한 타입의 한 종류다. 어떤 타입 string, int, ...등등안에 감싸진 optional(string)

let someOptional: String? = "optional"
let someforced: String = someOptional!

let forcedOptional: String! = "Forced Optional" //"Forced Optional" 이 아닌 nil 이라면 런타임 오류가 발생한다.
let errorOptional: String = forcedOptional
print(errorOptional)










//MARK: - Error Handling
// 프로그램 실행 동안 에러가 발생할 때 처리하기위해 에러처리한다.

func throwsError() throws -> String {
    return "Error"
}
// 에러를 던지기 위해서는 throws 라는 키워드를 함수의 [이름] 과 [변환타입] 사이에 입력해준다.

do {
    try throwsError()
    //func()  마치 guard문처럼 사용한다 생각해보자,.
    // nonError
} catch {
    // if Error
} catch {
    // 에러의 타입에 따라 여러개가 올 수 있다.
}

//추후 에러처리에서 자세히 알아보도록 한다!










//MARK: - Assertions and Preconditions 주장과 전제조건
//주장과 전제조건은 런타임시 발생하는 조건이다. (ex 옵셔널 nil을 강제 언래핑 했을 때)
//MARK: 주장을 통한 디버깅 _ Debugging With Assertions (assert, assertionFailure)

//assert(false, "assertion is not")

//1_The_Basic/main.swift:234: Assertion failed: string is not
//2022-06-22 03:16:42.392213+0900 01_The_Basic[32865:1758100] _1_The_Basic/main.swift:234: Assertion failed: string is not
//(lldb)
//오류가난다.

//MARK: 강제 전제조건 Enforcing Preconditions (precondition, preconditionFailure)



// 주장을 통한 디버깅과 강제 전제조건 큰 차이라고 말한다면,
//assertionFailure는 if 의 else 에서 사용된다면
//preconditionFailure는 switch의 default 케이스가 아닌 다른 케이스에서 처리되어야 한다.
