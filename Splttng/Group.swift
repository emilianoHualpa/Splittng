//
//  Group.swift
//  Splttng
//
//  Created by Milo on 10/25/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import Foundation

class Group: Expense {
    
    var people : [String: Person]
    var total : NSDecimalNumber
    
    override init() {
        self.people = [:]
        self.total = NSDecimalNumber.init(value: 0)
    }
    
    /*
     * This method add an expense for a person, if the name of the person already exists on the Dictionary, it won't duplicate.
     * The amount will be updated adding the amount to the existing name (person).
     */
    func addExpensePerPerson(person : Person) {
        
        if (self.people[person.name] != nil) {
            if let existingPerson = self.people[person.name] {
                existingPerson.amount = existingPerson.amount.adding(person.amount)
                if let detail = person.detail.first {
                    existingPerson.detail.append(detail)
                }
            }
        } else {
            self.people[person.name] = person
        }
        
        self.total = self.total.adding(person.amount)
    }
    
    /*
     * The total per person is calculated in the following way:
     * All the money the person expended, substracting the whole total divided by the number of people.
     */
    func calculateTotalPerPerson(personName : String) -> NSDecimalNumber {
        
        //Check if the person exists on the Dictionary
        guard let p = self.people[personName] else{
            return 0.00
        }
        //Get the total of people
        let peopleCount = NSDecimalNumber.init(value: self.people.count)

        return (p.amount).subtracting(self.total.dividing(by: peopleCount))
    }
}
