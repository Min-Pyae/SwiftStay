//
//  ExploreItemView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct ExploreItemView: View {
    
    let rental: Rental
    
    var body: some View {
        VStack(spacing: 8) {
            
            // IMAGES
            ImageCarouselView(rental: rental)
                .frame(height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // INFORMATION
            HStack(alignment: .top) {
                
                // DETAILS
                VStack(alignment: .leading) {
                    Text("\(rental.city), \(rental.state)")
                        .foregroundStyle(.black)
                        .fontWeight(.bold)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    // PRICE
                    HStack {
                        Text("$\(String(format: "%.2f", rental.pricePerNight))")
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                .fontWeight(.semibold)
                
                Spacer()
                
                // RATING
                HStack(spacing: 5) {
                    Image(systemName: "star.fill")
                    
                    Text("\(String(format: "%.1f", rental.rating))")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding(.horizontal)
    }
}

#Preview {
    ExploreItemView(rental: RentalData.rentals[0])
}
