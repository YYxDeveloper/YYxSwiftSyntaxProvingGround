//
//  Property.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by Young Lu on 2020/5/6.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
@propertyWrapper
   struct SmallNumber {
       private var maximum: Int
       private var number: Int
        //wrappedValue 是propertyWrapper 內建參數出入口
       var wrappedValue: Int {
           get {
            print("get::\(number)")

            return number
            
        }
           set {
            print("set::\(newValue)")
            number = min(newValue, maximum) }
       }

       init() {
           maximum = 12
           number = 0
       }
       init(wrappedValue: Int) {
           maximum = 12
           number = min(wrappedValue, maximum)
       }
       init(wrappedValue: Int, maximum: Int) {
           self.maximum = maximum
           number = min(wrappedValue, maximum)
       }
   }
struct NarrowRectangle {
    @SmallNumber(wrappedValue: 2, maximum: 5) var height: Int
    @SmallNumber(wrappedValue: 3, maximum: 4) var width: Int
    
    
}
struct MixedRectangle {
    @SmallNumber var height: Int = 1
    @SmallNumber(maximum: 9) var width: Int = 2
}
func examplePropertyWrapper()  {
//   var narrowRectangle = NarrowRectangle()
//   print(narrowRectangle.height, narrowRectangle.width)
//   // Prints "2 3"
//
//   narrowRectangle.height = 10
//   narrowRectangle.width = 10
//   print(narrowRectangle.height, narrowRectangle.width)
   // Prints "5 4"
    
    var mixedRectangle = MixedRectangle()
//    print(mixedRectangle.height)
    // Prints "1"

    mixedRectangle.height = 20
    print(mixedRectangle.height)
    // Prints "12"
}
