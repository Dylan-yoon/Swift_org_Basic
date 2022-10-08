//
//  main.swift
//  12_Subscripts
//
//  Created by Dylan_Yoon on 2022/06/20.
//

print("Subscripts")
print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Subscript Syntax
print("Subscript Syntax")

struct SnytaxOfSubscripts {
    subscript(index: Int) -> Int {
        get {
            return index
        }
    }
}
let syntaxOfSubscripts = SnytaxOfSubscripts()
print(syntaxOfSubscripts[10])



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Subscript Usage
print("Subscript Usage")

var wallet = ["1만원권": 2, "5천원권": 5, "1천원권": 24]
wallet = ["5만원권": 10]
//subscripts 에 할당하여 딕셔너리에 값을 설정 할 수 있음

print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Subscript Options
print("Subscript Options")

// swift.org Example
struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}
//
//var matrix = Matrix(rows: 2, columns: 2)
//
//matrix[0, 1] = 1.5
//matrix[1, 0] = 3.2
//
//let someValue = matrix[2, 2]

//하나의 스트럭트에 여러개의 서브 스크립트

struct Multiply {
    var times: Int = 10
    var multy: Int = 2
    
    subscript(inputTimes: Int) -> Int {
        return times * inputTimes
    }
    
//    Invalid redeclaration of 'subscript(_:)'
//    subscript(inputMulty: Int) -> Int {
//        return multy * inputMulty
//    }
}

var multy = Multiply()


print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Type Subscripts
print("Type Subscripts")


enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}
let mars = Planet[4]
print(mars)
