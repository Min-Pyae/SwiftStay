//
//  ContentView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            // EXPLORE VIEW
            ExploreView()
                .tabItem {
                    Label("Explore", systemImage: "magnifyingglass")
                }
            
            
            // WISHLISTS VIEW
            WishListsView()
                .tabItem {
                    Label("Explore", systemImage: "heart.fill")
                }
            
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
