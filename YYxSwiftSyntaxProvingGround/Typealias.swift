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
}
func example_typealias() {
    typealias men = (name:String,cars:[String])


    var man = [men]()
    var allCars = [String]()
    _ = peopleArray.map({
        $0.cars.map({
            allCars.append($0)
        })
        let aMen = men($0.name,allCars)
        man.append(aMen)
    })
    print(man)
}
