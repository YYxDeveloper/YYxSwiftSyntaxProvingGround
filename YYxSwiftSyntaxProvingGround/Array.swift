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

