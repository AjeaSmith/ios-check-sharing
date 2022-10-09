//
//  CreateViewsByLoops.swift
//  Check-Sharing-App
//
//  Created by Ajea Smith on 10/7/22.
//

import SwiftUI

struct CreateViewsByLoops: View {
    let students = ["James", "Bob", "Chris", "Larry", "Mary"]
    @State private var selectedStudent = "James"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) { data in
                        Text(data)
                    }
                }
            }
        }
        Text("hey")
    }
}

struct CreateViewsByLoops_Previews: PreviewProvider {
    static var previews: some View {
        CreateViewsByLoops()
    }
}
