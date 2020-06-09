//
//  main.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/2/26.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation

//about swift5.1
//exampleUniversalSelf()

//about NumericProtocol
//exampleNumericProtocol()

//example_Reduce_ToNumbersSum()
//example_Flatmap_unwrapOptional()

//exampleTypealias()



//example_Some_returnProtocol()
//exampleOfEnumInit()
//exampleEnumWithAssociatedValuesParameter()

//examplePropertyWrapper()
//exampleProjectedValue()

//exampleOverridProtocolFunction()
//exampleOvrrideClassProperty()
//exampleEnumWithTupe()
//print(SimpleChineseSecretary.digits[0...3])
//let titles = Array(SimpleChineseSecretary.digits[0...1])
//print(titles)
//exampleHowToFindIndexInArray()

//let aa23 = adigittype.allCases[0...3]
//print(aa23[0].rawValue)
//print(aa23)

//print(values)
//for value in adigittype.allCases {
//    print(value.rawValue)
//}
//exampleArrOfArr()
//exampleLazyInit()


func exampleConvertArrayType(){
    enum adigittype:String, CaseIterable{case tenThousands = "万",thousands = "千",hundreds = "百",tens = "十",units = "个"}
    let values: [String] = adigittype.allCases.map { $0.rawValue }
    var stringArray = Array(0...9).map { String($0) }
}
