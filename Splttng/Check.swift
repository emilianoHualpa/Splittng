//
//  Check.swift
//  Splttng
//
//  Created by Milo on 8/29/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import Foundation

class Check: Expense {
    
    var amount : NSDecimalNumber
    var numberOfPeople : Int
    var tip : Tip
    
    init(amount:NSDecimalNumber, numberOfPeople:Int, tip:Tip) {
        self.amount = amount
        self.numberOfPeople = numberOfPeople
        self.tip = tip
    }
    
    override func calculateTotalPerPerson() -> NSDecimalNumber {
        
        let peopleAmount = NSDecimalNumber.init(value: numberOfPeople as Int)
        
        let total = amount.adding(tip.calculate(amount: amount)).dividing(by: peopleAmount)
        
        return total
    }

}
