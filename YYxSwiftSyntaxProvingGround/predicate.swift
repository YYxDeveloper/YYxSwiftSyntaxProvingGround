//
//  predicate.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by Young Lu on 2020/7/14.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation


func examplePredicateWithURLDecoder(){
    let cc = "%5E%5Cd%7B5%7D(%5C,%5Cd%7B5%7D)%7B0,%7D$"
            let aa = cc.removingPercentEncoding!
            print(aa)
            
    let ghg = "^\\d{5}(\\,\\d{5}){0,}$"
            let pp = NSPredicate(format: "SELF MATCHES %@" , ghg)
            
            if pp.evaluate(with: "12345,123456") {
                print("ccccc")
            }else{
                print("aaa")
            }
}
