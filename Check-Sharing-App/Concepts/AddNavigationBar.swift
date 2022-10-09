//
//  AddNavigationBar.swift
//  Check-Sharing-App
//
//  Created by Ajea Smith on 10/7/22.
//

import SwiftUI

struct AddNavigationBar: View {
    var body: some View {
        
        NavigationView(content: {
            Form{
                Text("Hello world")
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        })
    }
}

struct AddNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        AddNavigationBar()
    }
}
