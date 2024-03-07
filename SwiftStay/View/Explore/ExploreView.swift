//
//  ExploreView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView: Bool = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    
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
                            ForEach(viewModel.rentals) { rental in
                                NavigationLink(value: rental) {
                                    ExploreItemView(rental: rental)
                                }
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: Rental.self) { rental in
                ExploreDetailsView(rental: rental)
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    ExploreView()
}
