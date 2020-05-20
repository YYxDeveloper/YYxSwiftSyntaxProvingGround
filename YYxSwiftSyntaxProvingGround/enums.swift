//
//  enums.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/3/2.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation

class SimpleChineseSecretary {
    enum digittype:CaseIterable{case tenThousands,thousands,hundreds,tens,units}
   static let digits:[String] = ["万","千","百","十","个"]
    let digitSentences:[String] = ["万个","千个","百个","十个","个"]
   

}
enum digittype{case tenThousands,thousands,hundreds,tens,units}
func getWitchSimpleChineseDigit(type:digittype) -> (singleText:String,sentence:String){
    //["万个", "千个", "百个", "十个", "个"]
    //["万", "千", "百", "十", "个"]
    switch type {
    case .tenThousands:
        return ("万","万个")
        
    case .thousands:
        return ("千","千个")
        
    case .hundreds:
        return ("百","百个")
        
    case .tens:
        return ("十","十个")
        
    case .units:
        return ("个","个")
        
    }
    
}
func exampleEnumWithTupe(){
    //    print(getWitchSimpleChineseDigit(type: .hundreds).sentence)
     let simpleChineseDigits:[(singleText:String,sentence:String)] = [("万","万个"),("千","千个"),("百","百个"),("十","十个"),("个","个")]
    let titles = Array(simpleChineseDigits)
    print(titles)
}

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
