//
//  Person.swift
//  SwiftDemo
//
//  Created by zz on 2022/3/8.
//

import Foundation



@objc public enum ScoreType : Int {
    case good = 0
    case just
    case poor
}



@objcMembers
public class Person :NSObject {
    var name : String = "zz"
    var age : Int = 0
    
    func talk(word:String) {
        print("\(word)")
    }
    
    
}
