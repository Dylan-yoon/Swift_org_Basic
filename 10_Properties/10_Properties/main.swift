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


//MARK: -



//MARK: -




//MARK: -


//MARK: -

//MARK: -




