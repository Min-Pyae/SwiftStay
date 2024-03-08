//
//  WishListsView.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import SwiftUI

struct WishListsView: View {
    var body: some View {
        
        NavigationStack {
            
            VStack(alignment: .leading, spacing: 32) {
                
                // SIGN IN TEXT
                VStack(alignment: .leading, spacing: 8) {
                    
                    Text("Sign in to view your wishlists")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlist once you've logged in")
                        .font(.footnote)
        
                }
                .padding()
                
                // SIGN IN BUTTON
                AuthenticationButton(buttonTitle: "Sign In")
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
            
        }
    }
}

#Preview {
    WishListsView()
}
