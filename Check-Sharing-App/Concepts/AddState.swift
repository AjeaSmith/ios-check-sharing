//
//  AddState.swift
//  Check-Sharing-App
//
//  Created by Ajea Smith on 10/7/22.
//

import SwiftUI

struct AddState: View {
    // use @State for simple properties stored in one view. Highly recommended to use private
    @State private var count: Int = 1
    
    var body: some View {
        Button("Increase: \(count)") {
            count += 1
        }
    }
}

struct AddState_Previews: PreviewProvider {
    static var previews: some View {
        AddState()
    }
}
