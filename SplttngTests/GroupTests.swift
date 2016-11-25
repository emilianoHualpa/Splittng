//
//  GroupTests.swift
//  Splttng
//
//  Created by Milo on 10/25/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import XCTest
@testable import Splttng

class GroupTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testBasicGroupExpense() {
        
        let group = Group()
        
        let nameMilo = "Milo"
        let nameVale = "Vale"
        let namePepe = "Pepe"
        
        let person1 = Person(name: nameMilo, amount: 35, detail: ["milk"])
        let person2 = Person(name: namePepe, amount: 15, detail: ["bacon"])
        let person3 = Person(name: nameVale, amount: 10, detail: ["sugar"])
        let person5 = Person(name: nameVale, amount: 20, detail: ["water"])
        let person4 = Person(name: nameMilo, amount: 10, detail: ["bread"])
        
        group.addExpensePerPerson(person: person1)
        group.addExpensePerPerson(person: person2)
        group.addExpensePerPerson(person: person3)
        group.addExpensePerPerson(person: person4)
        group.addExpensePerPerson(person: person5)
        
        XCTAssertEqual(90, group.total, "Total amount should be 90")
        XCTAssertEqual(45, group.people[nameMilo]?.amount, "\(nameMilo) amount should be 45")
        XCTAssertEqual(30, group.people[nameVale]?.amount, "\(nameVale) amount should be 30")
        XCTAssertEqual(15, group.people[namePepe]?.amount, "\(namePepe) amount should be 15")
        XCTAssertEqual(15, group.calculateTotalPerPerson(personName: nameMilo), "\(nameMilo) should receive +15")
        XCTAssertEqual(0, group.calculateTotalPerPerson(personName: nameVale), "\(nameVale) should do nothing")
        XCTAssertEqual(-15, group.calculateTotalPerPerson(personName: namePepe), "\(namePepe) should pay -15")

    }
}
