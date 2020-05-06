//
//  enums.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/3/2.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
func exampleOfEnumInit() {
    enum DisplayOrderType: Int, CaseIterable {
      case alphabetical = 0
      case favoriteFirst = 1
      case checkInFirst = 2
          
      init(type: Int) {
          switch type {
          case 0: self = .alphabetical
          case 1: self = .favoriteFirst
          case 2: self = .checkInFirst
          default: self = .alphabetical
          }
      }
    
      var text: String {
          switch self {
          case .alphabetical: return "Alphabetical"
          case .favoriteFirst: return "Show Favorite First"
          case .checkInFirst: return "Show Check-in First"
          }
      }
    }
    
    
     let selectedOrder = DisplayOrderType.alphabetical
    print(selectedOrder.text)
}
func exampleEnumWithAssociatedValuesParameter(){
    //https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html
    //Associated Values

    enum Barcode {
        case upc(Int, Int, Int, Int)
        case qrCode(String)
    }
    
    var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//    productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

//    switch productBarcode {
//    case let .upc(numberSystem, manufacturer, product, check):
//        print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
//    case let .qrCode(productCode):
//        print("QR code: \(productCode).")
//    }
    //上下同意，揭示幫參數命名
    switch productBarcode {
    case .upc(let numberSystem, let manufacturer, let product, let check):
        print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
    case .qrCode(let productCode):
        print("QR code: \(productCode).")
    }
}
