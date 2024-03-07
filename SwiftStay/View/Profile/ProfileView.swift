//
//  ProfileView.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack {
            
            // PROFILE LOG IN VIEW
            VStack(alignment: .leading, spacing: 32) {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip.")
                }
                
                
                // LOG IN BUTTON
                Button(action: {
                    
                }, label: {
                    Text("Log In")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 48)
                        .background(.purple)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
                
                HStack() {
                    Text("Don't have an account?")
                    
                    Text("Sign Up")
                        .fontWeight(.bold)
                        .underline()
                }
                .font(.caption)
                
            }
            
            
            // PROFILE OPTIONS
            VStack(spacing: 24) {
                
                // SETTINGS
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                
                // ACCESSIBILITY
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                
                // HELP CENTER
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
