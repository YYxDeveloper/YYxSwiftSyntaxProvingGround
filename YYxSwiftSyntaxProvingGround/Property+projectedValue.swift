//
//  Property+projectedValue.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by Young Lu on 2020/5/6.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
@propertyWrapper
struct SmallNumber {
    private var number: Int
    var projectedValue: Bool
    init() {
        self.number = 0
        self.projectedValue = false
    }
    var wrappedValue: Int {
        get { return number }
        set {
            if newValue > 10 {
                number = 10
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }
}
struct SomeStructure {
    @SmallNumber var someNumber: Int
}
func exampleProjectedValue() {
    var someStructure = SomeStructure()

    someStructure.someNumber = 4
    print(someStructure.$someNumber)
    // Prints "false"

    someStructure.someNumber = 55
    print(someStructure.$someNumber)
    // Prints "true"
    
    enum Size {
        case small, large
    }

    struct SizedRectangle {
        @SmallNumber var height: Int
        @SmallNumber var width: Int

        mutating func resize(to size: Size) -> Bool {
            switch size {
            case .small:
                height = 10
                width = 20
            case .large:
                height = 100
                width = 100
            }
            return $height || $width
        }
    }
    var aa = SizedRectangle()
   
    print( aa.resize(to: .small))
    
}
