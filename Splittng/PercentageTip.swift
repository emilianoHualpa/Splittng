//
//  PercentageTip.swift
//  Splttng
//
//  Created by Milo on 9/1/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import UIKit

class PercentageTip: NSObject, Tip {
    
    var percentage : Int
    
    init(percentage:Int) {
        self.percentage = percentage
    }
    
    func calculate(amount: NSDecimalNumber) -> NSDecimalNumber {
        
        let nPercentage : NSDecimalNumber = NSDecimalNumber.init(long: percentage)
        
        return nPercentage.decimalNumberByMultiplyingBy(100).decimalNumberByDividingBy(amount)
    }
}
