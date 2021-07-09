//
//  Example+Dictionary.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by 呂子揚 on 2021/7/9.
//  Copyright © 2021 young.lu. All rights reserved.
//

import Foundation

func example_dictionary_compactMapValues() {
    let d: [String: String] = ["a": "1", "b": "2", "c": "three"]
    let r5 = d.compactMapValues(Int.init)
    // r5 == ["a": 1, "b": 2]
    print(r5)
}
