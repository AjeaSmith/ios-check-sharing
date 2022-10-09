//
//  ContentView.swift
//  Check-Sharing-App
//
//  Created by Ajea Smith on 10/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOFPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOFPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    var totalWithTip: Double {
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        return grandTotal
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter check amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("How many people?", selection: $numberOFPeople) {
                        ForEach(2 ..< 100){ num in
                            Text("\(num)")
                        }
                    }
                    
                }
                Section {
                    Text(totalWithTip, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }header: {
                    Text("Amount with tip")
                }
                Section {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(0 ..< 101){
                            Text($0, format: .percent)
                        }
                    }.pickerStyle(.menu)
                } header: {
                    Text("How much tip do you want to leave?")
                }
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }header: {
                    Text("Amount per person")
                }
            }
            .navigationTitle("Check Sharing")
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
