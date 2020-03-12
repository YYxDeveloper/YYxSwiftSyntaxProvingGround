//
//  switch.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/3/12.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
///https://stackoverflow.com/questions/31656642/lesser-than-or-greater-than-in-swift-switch-statement
func switch_filter_ByWhere(){
//    var someVar = 3
    var someVarAA:Int?
    someVarAA = 3
    guard let someVar = someVarAA else {
        return
    }
    switch someVar {
    case let x where x < 0:
        print("x is \(x)")
    case let x where x == 0:
        print("x is \(x)")
    case let x where x > 0:
        print("x is \(x)")
    default:
        print("this is impossible")
    }
    //This can be simplified a bit:

    switch someVar {
    case _ where someVar < 0:
        print("someVar is \(someVar)")
    case 0:
        print("someVar is 0")
    case _ where someVar > 0:
        print("someVar is \(someVar)")
    default:
        print("this is impossible")
    }

}
func switch_filter_numberRange(){
    var someVarAA:Int?
    someVarAA = 3
    guard let someVar = someVarAA else {
        return
    }
    switch someVar {
    case Int.min..<0:
        print("someVar is \(someVar)")
    case 0:
        print("someVar is 0")
    default:
        print("someVar is \(someVar)")
    }
}
