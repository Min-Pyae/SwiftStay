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
                
                // CHECKING IF SEARCH AND FILTER BAR IS PRESSED
                if showDestinationSearchView {
                    
                    // DESTINATION SEARCH VIEW
                    DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
                    
                } else {
                    
                    // SEARCH AND FILTER BAR
                    SearchAndFilterBar(location: viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    // EXPLORE LISTS
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
