//
//  main.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by young.lu on 2020/2/26.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation

//about swift5.1
//exampleUniversalSelf()

//about NumericProtocol
//exampleNumericProtocol()

//example_Reduce_ToNumbersSum()
//example_Flatmap_unwrapOptional()

//exampleTypealias()


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
example_Some_returnProtocol()
