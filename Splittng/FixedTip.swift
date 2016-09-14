//
//  FixedTip.swift
//  Splttng
//
//  Created by Milo on 9/1/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import UIKit

class FixedTip: NSObject,Tip {
    
    var amount : NSDecimalNumber
    
    init(amount:NSDecimalNumber) {
        self.amount = amount
    }
    
    func calculate(amount: NSDecimalNumber) -> NSDecimalNumber {
        return self.amount
    }
}
