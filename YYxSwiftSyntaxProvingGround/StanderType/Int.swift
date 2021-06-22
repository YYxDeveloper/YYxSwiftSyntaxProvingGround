//
//  Int.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by Young Lu on 2020/6/9.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
//無條件進位
func exampleCeil() {
    let aa = Int(ceil(7/2))

    print(aa)
}
func exmapleDecimal(){
    let realBonus: Double = 0.0832999999999999999
    let scale = 4
    var value1 = Decimal(0.0832999999999999999)
    var value2 = Decimal(0.0832199999999999999)
    var roundedValue1 = Decimal()
    var roundedValue2 = Decimal()
    NSDecimalRound(&roundedValue1, &value1, scale, NSDecimalNumber.RoundingMode.plain)
    NSDecimalRound(&roundedValue2, &value2, scale, NSDecimalNumber.RoundingMode.plain)
    print(roundedValue1) // returns 0.0833
    print(roundedValue2) // returns 0.0832
}
