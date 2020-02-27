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
