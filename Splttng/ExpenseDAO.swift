//
//  ExpenseDao.swift
//  Splttng
//
//  Created by Milo on 11/7/16.
//  Copyright © 2016 ar.com.milohualpa. All rights reserved.
//

import Foundation

protocol ExpenseDAO {
    func getAllExpenses() -> Array<Expense>
    func getExpense(byId: Int) -> Expense
    func removeExpense(byId: Int) -> Bool
    func saveExpense(_: Expense) -> Bool
}
