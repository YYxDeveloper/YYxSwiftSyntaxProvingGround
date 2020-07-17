//
//  String.swift
//  YYxSwiftSyntaxProvingGround
//
//  Created by Young Lu on 2020/7/16.
//  Copyright © 2020 young.lu. All rights reserved.
//

import Foundation
func exampleFilterStringToArray2() {
    let test = "12345,23456\n34567,    45678,\n 56789"
//        let test = "12345,23456,34567\n,45678,56789"
//    let test = "12345,23456,34567"
//    let test = "12345,23456,,,34567"
//    print(test)
      let str = test.replacingOccurrences(of: " ", with: "")
    //    print(str)
    let str1 = str.replacingOccurrences(of: "\n", with: ",")
    print(str1)
    
    let arr = str1.split(separator: ",")
    print(arr)
    
    let regexStr = "^\\d{5}(\\,\\d{5}){0,}$"
                let pp = NSPredicate(format: "SELF MATCHES %@" , regexStr)

                if pp.evaluate(with: test) {
                    print("right")
                }else{
                    print("worng")
                }
}
func  exampleFilterStringToArray()  {
    let test = "12345,23456\n34567,    45678,\n 56789"
    
    
//   let a = "0.0,1.1,2.2"
//    let b = test.split(separator: ",")
//
//    print(b)
//
//    var aa = "A*B*C*D*E*F"
//
//    print("分割前:\(aa)")
//
//    var bb:CharacterSet=NSCharacterSet(charactersIn:"*") as CharacterSet
//
//    print("分割後:\(aa.components(separatedBy: bb)))")
    // String literal
   
    
    let text2 = test.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range:nil)
    let text3 = text2.replacingOccurrences(of: " ", with: "", options: NSString.CompareOptions.literal, range:nil)
    let text4 = text3.replacingOccurrences(of: ",", with: "", options: NSString.CompareOptions.literal, range:nil)

    
//    let trimmedString = text2.trimmingCharacters(in: .whitespaces)

    
//    print(trimmedString)

//    print(text2)
    print(text4)

    let cc3 = text2.split(separator: ",")
//
//    let qq = String(cc3.filter { !" \n\t\r".contains($0) })
//
    print(cc3)
    
    
  let x = "1234523456345674567856789"
  let aaa = x.separate(every:5, with: ",")
    let b = aaa.split(separator: ",")
      //  "Line1Line2"
    print(aaa)
    print(b)
}


extension String {
    func separate(every stride: Int = 4, with separator: Character = " ") -> String {
        return String(enumerated().map { $0 > 0 && $0 % stride == 0 ? [separator, $1] : [$1]}.joined())
    }
}
