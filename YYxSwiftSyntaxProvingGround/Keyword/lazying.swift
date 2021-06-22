//
//  lazying.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by Young Lu on 2020/5/27.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
class lazyTestClass {
    lazy var num = 1
    init() {
       print(num)
    }
}
func exampleLazyInit() {
    //只要第一次呼叫都會初始化
    let aa = lazyTestClass()
    print(aa.num)
//    print(self.aa)
}
