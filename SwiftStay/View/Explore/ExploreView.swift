//
//  ExploreView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                if showDestinationSearchView {
                    DestinationSearchView(show: $showDestinationSearchView)
                } else {
                    // SEARCH AND FILTER BAR
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
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
