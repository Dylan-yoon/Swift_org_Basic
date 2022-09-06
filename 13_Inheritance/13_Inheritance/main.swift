//
//  main.swift
//  13_Inheritance
//
//  Created by Dylan_Yoon on 2022/06/20.
//

print("Inheritance")

print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Defining a Base Class
print("Defining a Base Class")


class SuperKAKAO {
    var company = "KAKAO"
    var president = "김범수"
    var stock = 70000
    var infoStock: String {
        return "stock info is \(stock)👍🏻"
    }
    
    func what() {}
}


print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -SubClassing
print("SubClassing")

class SubKAKAOGames: SuperKAKAO {
    func aa() {
        print(super.stock)
    }
}
class SubSubKAKAOVEX: SubKAKAOGames {}

class SubKAKAOMobility: SuperKAKAO {
    
}

let aaaa = SubKAKAOGames()
aaaa.aa()


print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Overriding
print("Overriding")



print("------------------------------------------------")
print("------------------------------------------------")
//MARK: -Preventing Overrides
print("Preventing Overrides")





