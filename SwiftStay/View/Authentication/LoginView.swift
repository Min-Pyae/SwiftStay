//
//  LoginView.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                //DismissButton()
                
                VStack (alignment: .leading, spacing: 20) {
                    
                    // WELCOME TEXTS
                    Text("Hello.")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text("Welcome to SwiftStay!")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(Color(.purple))
                        .padding(.bottom, 20)
                    
                    
                    // LOGIN FORM
                    VStack(spacing: 30) {
                        CustomTextField(image: "envelope", placeholderText: "Enter your email", isSureField: false, text: $email)
                        
                        CustomTextField(image: "lock", placeholderText: "Enter your password", isSureField: true, text: $password)
                    }
                    
                }
                
                // FORGOT PASSWORD BUTTON
                NavigationLink(destination: Text("We're still working on it...")) {
                    HStack {
                        
                        Spacer()
                        
                        Text("Forgot Password?")
                            .foregroundStyle(.purple)
                            .font(.subheadline)
                            .bold()
                        
                    }
                }
                .padding(.vertical, 20)
                
                
                // SIGN IN BUTTON
               // AuthenticationButton(buttonTitle: "Sign In")
                
                Spacer()
                
                // SIGN UP REGISRTATION
                NavigationLink(destination: RegistrationView()) {
                    HStack {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .foregroundStyle(.purple)
                }
            }
            .padding(.horizontal, 30)
            .padding(.top, 20)
        }
        .tint(.purple)
    }
}

#Preview {
    LoginView()
}

