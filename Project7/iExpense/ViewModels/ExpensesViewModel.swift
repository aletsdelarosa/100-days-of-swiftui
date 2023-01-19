//
//  ExpensesViewModel.swift
//  iExpense
//
//  Created by Alets on 1/18/23.
//

import Foundation

class ExpensesViewModel: ObservableObject {
    
    @Published var items = [Expense]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([Expense].self, from: savedItems) {
                items = decodedItems
                return
            }
        }
        
        items = []
    }
}
