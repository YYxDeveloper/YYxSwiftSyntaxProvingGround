//
//  ExampleProtocols.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by Young Lu on 2020/5/14.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
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
