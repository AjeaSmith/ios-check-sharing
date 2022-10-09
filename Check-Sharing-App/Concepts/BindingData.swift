//
//  BindingData.swift
//  Check-Sharing-App
//
//  Created by Ajea Smith on 10/7/22.
//

import SwiftUI

struct BindingData: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

struct BindingData_Previews: PreviewProvider {
    static var previews: some View {
        BindingData()
    }
}
