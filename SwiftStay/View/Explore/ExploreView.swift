//
//  ExploreView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                // SEARCH AND FILTER BAR
                SearchAndFilterBar()
                
                // EXPLORE LIST
                ScrollView {
                    LazyVStack(spacing: 30) {
                        ForEach(1...10, id: \.self) { list in
                            NavigationLink(value: list) {
                                ExploreItemView()
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: Int.self) { list in
                ExploreDetailsView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    ExploreView()
}
