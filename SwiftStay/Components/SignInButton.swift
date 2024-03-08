//
//  LogInButton.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import SwiftUI

struct SignInButton: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Sign In")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .frame(width: 360, height: 48)
                .background(.purple)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        })
    }
}

#Preview {
    SignInButton()
}