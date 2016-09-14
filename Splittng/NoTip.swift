//
//  NoTip.swift
//  Splttng
//
//  Created by Milo on 9/1/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import UIKit

class NoTip: NSObject, Tip {
    func calculate(amount: NSDecimalNumber) -> NSDecimalNumber {
        return 0.0
    }

}
