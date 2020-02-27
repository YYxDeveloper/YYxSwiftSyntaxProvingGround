//
//  feature.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/2/26.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
class NetworkManager {
    class var maximumActiveRequests: Int {
        return 4
    }

    func printDebugData() {
        print("Maximum network requests: \(NetworkManager.maximumActiveRequests).")
    }
}
class ThrottledNetworkManager: NetworkManager {
    override class var maximumActiveRequests: Int {
        return 99999
    }
    override func printDebugData() {
        print("Maximum network requests: \(Self.maximumActiveRequests).")
       }
}

func exampleUniversalSelf() {
    //u can override static property now
    //https://www.hackingwithswift.com/articles/182/whats-new-in-swift-5-1
    let aa = ThrottledNetworkManager()
    aa.printDebugData()
}
