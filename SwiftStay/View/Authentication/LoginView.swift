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
                
                VStack (alignment: .leading, spacing: 20) {
                    
                    // WELCOME TEXTS
                    Text("Hello.")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text("Welcome to SwiftStay")
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
                NavigationLink(destination: Text("Hello")) {
                    HStack {
                        
                        Spacer()
                        
                        Text("Forgot Password?")
                            .font(.subheadline)
                            .bold()
                        
                    }
                }
                .padding(.vertical, 20)
                
                
                // SIGN IN BUTTON
                SignInButton()
                
                Spacer()
                
                // SIGN UP REGISRTATION
                NavigationLink(destination: Text("Still working on it...")) {
                    HStack {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .padding(.horizontal, 30)
            .padding(.top, 20)
        }
    }
}

#Preview {
    LoginView()
}

