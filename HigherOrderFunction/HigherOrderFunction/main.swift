//
//  main.swift
//  HigherOrderFunction
//
//  Created by Dylan_Y on 2022/09/28.
//

//map
struct ExampleMap {
    
    let transedMapDictionary: [String: Int] = ["one": 10, "two": 19, "three": 32, "four": 40, "five": 35]
    let transedMapTuple: Set<Int> = [10, 19, 32, 40, 35]
    
    //@inlinable public func map<T>(_ transform: (Element) throws -> T) rethrows -> [T]
    func mapArray() {
        let transedMapArray: [Int] = [10, 19, 32, 40, 35]
        let transedMapArrayString: [String] = ["10", "19", "32", "40", "35"]
        let transedMapArrayAny: [Any] = [10, "32", 313.1, (10, "132")]
        
        print("기본!")
        let new = transedMapArray.map ({ (element: Int) -> Int in
            return element * 10
        })
        print(new)
        
        print("문자열로도 가능하다.! -> string 명시를 해주어야하는데 왜 해주어야할까?")
        let newstring = transedMapArrayString.map { (element: String) -> String in
            if element == "32" {
                return "999999"
            }
            return element
        }
        print(newstring)
        
        print("다른 타입으로 변경도 가능")
        let intToString = transedMapArray.map({ (number: Int) -> String in
            return "\(number)"
        })
        
        print(intToString)
        
        print("closure 축약1")
        let short1 = transedMapArray.map { element -> Int in
            return element * 10
        }
        print(short1)
        
        print("closure 축약2")
        let short2 = transedMapArray.map { element in
            element * 10
        }
        print(short2)
        
        print("closure 축약3")
        let short3 = transedMapArray.map { $0 * 10 }
        print(short3)
        
        print("Any 타입")
        let anytype = transedMapArrayAny.map { element -> Any in
            if element is Int {
                return 10000
            }
            
            return element
        }
        print(anytype)
    }
}

var a = ExampleMap()
a.mapArray()

struct ExampleCompactMap {
    func aa() {
        let transedMapArray: [Int] = [10, 19, 32, 40, 35]
        
        let a = transedMapArray.flatMap(<#T##transform: (Int) throws -> Sequence##(Int) throws -> Sequence#>)
        
        print(a)
    }
}
