//
//  CheckTests.swift
//  SplttngTests
//
//  Created by Milo on 9/6/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import XCTest
import Splttng
@testable import Splttng

class CheckTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNoTip() {
        
        let checkAmount = NSDecimalNumber.init(value: 200 as Int)
        let numberOfPeople = 4
        let tip = NoTip()
        
        let chk = Check(amount: checkAmount, numberOfPeople: numberOfPeople, tip: tip)
                
        let tipAmount = chk.tip.calculate(amount: checkAmount)
        
        XCTAssertEqual(4, chk.numberOfPeople, "Should be 4")
        XCTAssertEqual(200, chk.amount, "Should be 200")
        XCTAssertEqual(0, tipAmount, "Tip should return 0")
        XCTAssertEqual(50, chk.calculateTotalPerPerson(), "Should be 50 per person")
    }
    
    func testPercentTip() {
        
        let checkAmount = NSDecimalNumber.init(value: 100 as Int)
        let numberOfPeople = 4
        let tip = PercentageTip(percentage: 20)
        
        let chk = Check(amount: checkAmount, numberOfPeople: numberOfPeople, tip: tip)
        
        let tipAmount = chk.tip.calculate(amount: checkAmount)
        
        XCTAssertEqual(4, chk.numberOfPeople, "Should be 4")
        XCTAssertEqual(100, chk.amount, "Should be 100")
        XCTAssertEqual(20, tipAmount, "Tip should return 20")
        XCTAssertEqual(30, chk.calculateTotalPerPerson(), "Should be 30 per person")
        
    }
    
    func testFixedTip() {
        
        let checkAmount = NSDecimalNumber.init(value: 120 as Int)
        let numberOfPeople = 4
        let tip = FixedTip(amount: 20)
        
        let chk = Check(amount: checkAmount, numberOfPeople: numberOfPeople, tip: tip)
        
        let tipAmount = chk.tip.calculate(amount: checkAmount)
        
        XCTAssertEqual(4, chk.numberOfPeople, "Should be 4")
        XCTAssertEqual(120, chk.amount, "Should be 120")
        XCTAssertEqual(20, tipAmount, "Tip should return 20")
        XCTAssertEqual(35, chk.calculateTotalPerPerson(), "Should be 35 per person")
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
