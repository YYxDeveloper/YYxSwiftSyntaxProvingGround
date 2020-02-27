//
//  Sequence+Numeric.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/2/27.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
extension Sequence where Element: Numeric {
    func doublingAll() -> [Element] {
        return map { $0 * 2 }
    }
}
func exampleNumericProtocol() {
    let observations = [1.5, 2.0, 3.25, 4.875, 5.5]
    let doubledObservations = observations.doublingAll()
    // doubledObservations == [3.0, 4.0, 6.5, 9.75, 11.0]
    print(doubledObservations)
}
