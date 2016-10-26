//
//  Person.swift
//  Splttng
//
//  Created by Milo on 10/25/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import Foundation

class Person: NSObject {
    var name : String
    var amount : NSDecimalNumber
    
    init(name:String, amount: NSDecimalNumber) {
        self.name = name
        self.amount = amount
    }
}
