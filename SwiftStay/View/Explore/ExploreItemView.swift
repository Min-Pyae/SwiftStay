//
//  ExploreItemView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct ExploreItemView: View {
    var body: some View {
        VStack(spacing: 8) {
            
            // IMAGES
            ImageCarouselView()
                .frame(height: 400)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // INFORMATION
            HStack(alignment: .top) {
                
                // DETAILS
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    // PRICE
                    HStack {
                        Text("$567")
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                // RATING
                HStack(spacing: 5) {
                    Image(systemName: "star.fill")
                    
                    Text("4.6")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding(.horizontal)
    }
}

#Preview {
    ExploreItemView()
}
