//
//  Group.swift
//  Splttng
//
//  Created by Milo on 10/25/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import Foundation

class Group: Expense {
    
    var people : [Person]
    
    init(people:[Person]) {
        self.people = people
    }
    
    override func calculateTotalPerPerson() -> NSDecimalNumber {
        //TODO
        return NSDecimalNumber.init(value: 0)
    }
}
