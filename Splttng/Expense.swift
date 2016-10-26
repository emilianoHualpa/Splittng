//
//  Expense.swift
//  Splttng
//
//  Created by Milo on 10/25/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import Foundation

class Expense : NSObject {
    
    var history_id : Int! = nil
    var date : Date! = nil
    
    override init() {
        super.init()
        expenseDidLoad()
    }
    
    func expenseDidLoad() {
        // Initializations
    }
    
    func calculateTotalPerPerson() -> NSDecimalNumber {
        fatalError("Method should be overriden by the subclass")
    }
    
}
