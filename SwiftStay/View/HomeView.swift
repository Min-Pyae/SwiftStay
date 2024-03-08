//
//  ContentView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct HomeView: View {
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
            
            // PROFILE VIEW
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }
        }
    }
}

#Preview {
    HomeView()
}
