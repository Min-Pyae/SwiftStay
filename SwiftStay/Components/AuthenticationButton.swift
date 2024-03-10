//
//  LogInButton.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import SwiftUI

struct AuthenticationButton: View {
    
    var buttonTitle: String
    @State var isNavigationActive: Bool = false
    
    var body: some View {
        
        Button(action: {
            isNavigationActive = true
        }, label: {
            Text(buttonTitle)
                .modifier(AuthenticationButtonTextModifier())
        })
        .sheet(isPresented: $isNavigationActive, content: {
            LoginView()
        })
        
    }
}

#Preview {
    AuthenticationButton(buttonTitle: "Sign In")
}
