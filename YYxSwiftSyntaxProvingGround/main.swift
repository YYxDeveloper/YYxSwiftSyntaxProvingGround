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

//https://www.appcoda.com.tw/swift-protocol/
protocol Sound {
    func makeSound()
}

extension Sound {
    func makeSound() {
        print("Wow")
    }
}

protocol Flyable {
    func fly()
}

extension Flyable {
    func fly() {
        print("✈️")
    }
}

class Airplane: Flyable { }
class Pigeon: Sound, Flyable { }
class Penguin: Sound { }

let pigeon = Pigeon()
      pigeon.fly()  // prints ✈️
      pigeon.makeSound() // prints Wow
