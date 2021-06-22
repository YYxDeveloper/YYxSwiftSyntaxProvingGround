//
//  Array.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by Young Lu on 2020/5/20.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
func  exampleArrayCreateNewArray() {
    var test = [1, 2, 3]
    var n = 2
    var test2 = test[0..<n]
    
}
func exampleHowToFindIndexInArray(){
    let arr = ["a","b","c","a"]
    
    let indexOfA = arr.firstIndex(of: "a") // 0
    let indexOfB = arr.lastIndex(of: "a") // 3
    print(indexOfA)
    print(indexOfB)
    
}

func exampleArrOfArr(){
    let array = Array<Bool>(repeating: false, count: 10)
    let arr2 =  Array<[Bool]>(repeating: array, count: 5)
    
    print(arr2)
}
func exampleConvertArrayTypeWithNum(){
    enum adigittype:String, CaseIterable{case tenThousands = "万",thousands = "千",hundreds = "百",tens = "十",units = "个"}
    let values: [String] = adigittype.allCases.map { $0.rawValue }
    //#2
    var stringArray = Array(0...9).map { String($0) }
}
//[[false,true,true,false,false],[true,true,true,false,false],[false,true,true,false,false]] to ["12", "012", "12"]
func exampleCompactMapNestBoolsToStrings()
{
    let cc = [[false,true,true,false,false],[true,true,true,false,false],[false,true,true,false,false]]

    var arr233 = [String]()

    for each in cc {
        
        let ss = each.enumerated().map({ (index,item) in
            return item == true ? String(index) : nil
        })
        let tt = ss.compactMap({$0}).joined()
        
    //    print(tt)
        arr233.append(tt)
    }
    
    let result = arr233.joined(separator: ",")
    
    print(result)

}
