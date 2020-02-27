//
//  Generic Instance Method.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/2/27.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
// MARK: - Reduce
func example_Reduce_ToNumbersSum() {
    let numbers = 1...4
    let numberSum = numbers.reduce(0, { x, y in
        x + y
    })
    print(numberSum)
}

// MARK: - Flatmap
func example_Flatmap_unwrapOptional() {
    let possibleNumber: Int? = Int("42")
    let nonOverflowingSquare = possibleNumber.flatMap { x -> Int? in
        //x is unwrap
        let (result, overflowed) = x.multipliedReportingOverflow(by: x)
        return overflowed ? nil : result
    }
    print(nonOverflowingSquare)
//     Prints "Optional(1764)"
}
func example_Flatmap_2ArrayCombine()
{
    let fruits = ["Apple", "Orange", "Puple"]
    let counts = [2, 3, 5]
    let array = counts.flatMap { count in
                            fruits.map ({ fruit in
                                return fruit + " -XXX- \(count)"
            
                                })
    }
    print(array)

}
func exampe_Flatmap_unwrapArray() {
    let corruptDataOfFruits: [String?] = ["Apple", nil, "Banana", nil, "Kiwi", "Watermelon", nil, nil]
    let corrupDataOfDrinks: [String?] = [nil, nil, nil, "Beer", "Milk", "Water", nil]
    let groceryList = [corruptDataOfFruits, corrupDataOfDrinks].flatMap{ $0.compactMap{$0}}
    print(groceryList)
    //["Apple", "Banana", "Kiwi", "Watermelon", "Beer", "Milk", "Water"]

}
