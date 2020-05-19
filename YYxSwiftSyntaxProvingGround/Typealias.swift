//
//  Typealias.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/2/27.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
// MARK: - Typealias
func exampleTypealias() {
    typealias success = (_ data: String) -> Void
    typealias fail = (_ error: String) -> Void

    func fetchData(_ url: String, success: success, fail: fail) {
    }
    func aa(_ aa:String){
        
    }
    fetchData("aaaaa", success: aa, fail: aa)
    print("zzzz")
}
