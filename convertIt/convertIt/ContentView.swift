//
//  ContentView.swift
//  convertIt
//
//  Created by Alets on 1/15/23.
//

import SwiftUI

struct ContentView: View {
    
    enum TemperatureUnits: String {
        case celsius = "Celsius"
        case Fahrenheit = "Fahrenheit"
        case Kelvin = "Kelvin"
    }
    
    @State private var inputUnit = TemperatureUnits.celsius
    @State private var outputUnit = TemperatureUnits.Fahrenheit
    @State private var amount: Double = 0
    
    @FocusState private var amountIsFocused: Bool
    
    private var total: Double {
        switch inputUnit {
        case .celsius:
            switch outputUnit {
            case .celsius:
                return amount
            case .Fahrenheit:
                return amount * 9/5 + 32
            case .Kelvin:
                return amount + 273.15
            }
        case .Fahrenheit:
            switch outputUnit {
            case .celsius:
                return (amount - 32) * 5/9
            case .Fahrenheit:
                return amount
            case .Kelvin:
                return (amount - 32) * 5/9 + 273.15
            }
        case .Kelvin:
            switch outputUnit {
            case .celsius:
                return amount - 273.15
            case .Fahrenheit:
                return (amount - 273.15) * 9/5 + 32
            case .Kelvin:
                return amount
            }
        }
    }
    
    private var units = [
        TemperatureUnits.celsius,
        TemperatureUnits.Fahrenheit,
        TemperatureUnits.Kelvin
    ]
    
    var body: some View {
        NavigationView {
            Form {
                Section("Input unit") {
                    Picker("TInput unit", selection: $inputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section("Output unit") {
                    Picker("Output unit", selection: $outputUnit) {
                        ForEach(units, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                Section("Amount to convert") {
                    TextField("Amount to convert", value: $amount, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                }
                Section("Result") {
                    Text("\(String(format: "%.2f", total))º \(outputUnit.rawValue)")
                }
            }
            .navigationTitle("Convert it")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
