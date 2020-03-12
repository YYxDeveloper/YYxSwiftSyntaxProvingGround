//
//  Combine.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/3/12.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
/**
 
 「@Published - 這個屬性是跟著 ObservableObject 一起的。一個屬性前面加上 @Publisher 後，這表示此發布者在值做了變動時應該通知所有訂閱者。」

 摘錄自: Simon Ng. 「精通 SwiftUI」。 Apple Books.
 
 
 
 */
class MyFoo {
    @Published var bar: String
    init(bar: String) {
        self.bar = bar
    }
}
let foo = MyFoo(bar: "bar")
let barSink = foo.$bar
    .sink() {
        print("bar value: \($0)")
}
let aa = MyFoo(bar: "cccc")
