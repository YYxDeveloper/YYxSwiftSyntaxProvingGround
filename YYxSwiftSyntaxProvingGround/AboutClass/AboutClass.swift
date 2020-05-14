//
//  AboutClass.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by Young Lu on 2020/5/14.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
class Jedi {
    var lightsaberColor = "Blue"
}


class Sith: Jedi {
    override var lightsaberColor : String {
        get {
            return "Red"
        }
        set {
            // nothing, because only red is allowed
        }
    }
}
//https://stackoverflow.com/questions/26691935/overriding-a-stored-property-in-swift
func exampleOvrrideClassProperty(){
    let j1 = Jedi()
    let j2 = Sith()

    print(j1.lightsaberColor)
    print(j2.lightsaberColor)

}
