//
//  main.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/2/26.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation

// MARK: - TEST DATA
struct Person {
    let name: String
    let address: String
    let age: Int
    let income: Double
    let cars: [String]
}

let peopleArray = [ Person(name:"Santosh", address: "Pune, India", age:34, income: 100000.0, cars:["i20","Swift VXI"]),
             Person(name: "John", address:"New York, US", age: 23, income: 150000.0, cars:["Crita", "Swift VXI"]),
             Person(name:"Amit", address:"Nagpure, India", age:17, income: 200000.0, cars:Array())]


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


//let names = peopleArray.map({ $0.name })
//print(names)
//
//let aPersonArray = peopleArray.map { $0.cars }
//print(aPersonArray)




//

//examplePredicateWithURLDecoder()
//exampleFilterStringToArray()
//exampleFilterStringToArray2()
//example_dictionary_compactMapValues()
