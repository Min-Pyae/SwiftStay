//
//  ProfileView.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import SwiftUI

struct ProfileView: View {
    
    var body: some View {
        
        NavigationStack {
            
            // PROFILE SIGN IN VIEW
            VStack(alignment: .leading, spacing: 32) {
                
                // PROFILE TEXT
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Sign in to start planning your next trip.")
                }
                
                
                // SIGN IN BUTTON
                AuthenticationButton(buttonTitle: "Sign In")
                
                
                // SIGN UP REGISTRATION
                HStack() {
                    Text("Don't have an account?")
                    
                    NavigationLink(value: "signup") {
                        Text("Sign Up")
                            .foregroundStyle(.purple)
                            .fontWeight(.bold)
                            .underline()
                    }
                    
                }
                .font(.caption)
                
            }
            
            
            Spacer()
            
            
            // PROFILE OPTIONS
            VStack(spacing: 24) {
                
                // SETTINGS
                NavigationLink(value: "settings") {
                    ProfileOptionRowView(imageName: "gear", title: "Settings")
                }
                
                // ACCESSIBILITY
                NavigationLink(value: "accessibility") {
                    ProfileOptionRowView(imageName: "accessibility", title: "Accessibility")
                }
                
                // HELP CENTER
                NavigationLink(value: "help") {
                    ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
                }
            }
            .padding(.bottom)
            .tint(.primary)
            .navigationDestination(for: String.self, destination: { string in
                
                if string == "signup" {
                    
                    RegistrationView()
                    
                } else if string == "signin" {
                    
                    LoginView()
                    
                } else {
                    
                    Text("We're still working on it...")
                        .bold()
                    
                }
                
            })
            
        }
        .tint(.purple)
        .padding()
        
    }
    
}

#Preview {
    ProfileView()
}
