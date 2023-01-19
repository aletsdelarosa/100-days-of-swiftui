//
//  Expenses.swift
//  iExpense
//
//  Created by Alets on 1/18/23.
//

import Foundation

enum ExpenseType: String, CaseIterable, Codable {
    case personal = "Personal"
    case business = "Business"
}

class Expense: Identifiable, Codable {
    let name: String
    let type: String
    let amount: Double
    let id: UUID
    
    static var Types = ExpenseType.allCases
    
    init(name: String, type: String, amount: Double, id: UUID = UUID()) {
        self.name = name
        self.type = type
        self.amount = amount
        self.id = id
    }
}
