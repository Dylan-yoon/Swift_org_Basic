//
//  main.swift
//  25_Automatic_Reference_Counting
//
//  Created by Dylan_Yoon on 2022/06/20.
//

class Company {
    var companyName: String
    
    init(companyName: String) {
        self.companyName = companyName
        print("\(companyName) 회사가 만들어졌습니다!")
    }
    
    deinit {
        print("가맹점 없어서 \(companyName)가 망했습니다.")
    }
}

var starbucksCompany: Company?
var starbucksSongdo: Company?
var starbucksIlsan: Company?

starbucksCompany = Company(companyName: "Starbucks Korea")

//송도점과 일산점은 본사를 참조한다.
starbucksSongdo = starbucksCompany
starbucksIlsan = starbucksCompany

print("company is nil")
starbucksCompany = nil

print("all chainShop is nil")
starbucksSongdo = nil
starbucksIlsan = nil
//모든 가맹점이 없어져야 메모리 해제된다!

