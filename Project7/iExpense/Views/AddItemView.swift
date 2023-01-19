//
//  AddItemView.swift
//  iExpense
//
//  Created by Alets on 1/18/23.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.dismiss) var dismiss
    
    @ObservedObject var expenses = ExpensesViewModel()
    
    @State private var name = ""
    @State private var type = ExpenseType.personal
    @State private var amount = 0.0
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type) {
                    ForEach(Expense.Types, id: \.self) {
                        Text($0.rawValue)
                    }
                }
                
                TextField("Amount", value: $amount, format: .currency(code: "USD"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
            .toolbar {
                Button("Save") {
                    let item = Expense(name: name, type: type.rawValue, amount: amount)
                    expenses.items.append(item)
                    
                    dismiss()
                }
            }
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(expenses: ExpensesViewModel())
    }
}
