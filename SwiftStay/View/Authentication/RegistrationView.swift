//
//  RegistrationView.swift
//  SwiftStay
//
//  Created by Chris Min on 08/03/2024.
//

import SwiftUI

struct RegistrationView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack {
            
            VStack (alignment: .leading, spacing: 20) {
                
                // WELCOME TEXTS
                Text("Get Started.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Create your account")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.purple)
                    .padding(.bottom, 20)
                
                
                // REGISRTATION FORM
                VStack(spacing: 30) {
                    
                    CustomTextField(image: "person", placeholderText: "Enter your fullname", isSureField: false, text: $email)
                    
                    CustomTextField(image: "person", placeholderText: "Enter your username", isSureField: false, text: $email)
                    
                    CustomTextField(image: "envelope", placeholderText: "Enter your email", isSureField: false, text: $email)
                    
                    CustomTextField(image: "lock", placeholderText: "Enter your password", isSureField: true, text: $password)
                    
                }
                .padding(.bottom)
                
            }
            
            
            // SIGN IN BUTTON
            AuthenticationButton(buttonTitle: "Sign Up")
            
            Spacer()
            
        }
        .padding(.horizontal, 30)
        .padding(.top, 20)
    }
    
}

#Preview {
    RegistrationView()
}
