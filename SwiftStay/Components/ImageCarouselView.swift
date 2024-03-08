//
//  ImageCarouselView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct ImageCarouselView: View {
    
    let rental: Rental
    
    var body: some View {
        
        TabView {
            
            ForEach(rental.images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
            
        }
        .tabViewStyle(.page)
        
    }
}

#Preview {
    ImageCarouselView(rental: RentalData.rentals[0])
}
