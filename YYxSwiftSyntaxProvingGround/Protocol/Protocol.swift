//
//  Protocol.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/2/27.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
protocol ItemStoring {
      associatedtype DataType

      var items: [DataType] { get set}
      mutating func add(item: DataType)
  }
extension ItemStoring {
       mutating func add(item: DataType) {
           items.append(item)
       }
   }
   struct NameDatabase: ItemStoring {
       var items = [String]()
   }
func exampleAssociatedtypeWithPrototype(){
 //associatedtypen表示位置的數據類型，只是先定義一個名字，具體表示的類型要在最終使用的時候進行賦值。在定義協議時，可以用associatedtype聲明一個或多個類型作為協議定義的一部分。
    var names = NameDatabase()
    names.add(item: "James")
    names.add(item: "Jess")
}

protocol Animal {
    ///動物吃什麼食物
    associatedtype Food
    ///要實作吃的方法
    func eat(_ food: Food)
}
func example_Some_returnProtocol() {
    //回傳protocol物件
   // http://aiur3908.blogspot.com/2019/10/ios-swift-opaque-result-types-some.html
    
    struct Dog: Animal {
        typealias Food = String
        
        func eat(_ food: String) {
            print("狗吃 \(food)")
        }
    }
    
    struct Cat: Animal {
        typealias Food = String
        
        func eat(_ food: String) {
            print("貓吃 \(food)")
        }
    }
    //過去寫法
    func getAnimalaa<T: Animal>() -> T {
        return Dog() as! T
    }
    let bb:Dog = getAnimalaa()
    print(bb)
    
    //但是要注意的是，若是你的Func有多種類回傳值，分別是不同的實作該Protocol是不行的。
    func getAnimal() -> some Animal {
        return Cat()
    }
    let aa = getAnimal()
    
    print(aa)
    
}
