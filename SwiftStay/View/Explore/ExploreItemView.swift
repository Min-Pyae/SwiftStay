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
            TabView {
                ForEach(0...3, id: \.self) { image in
                    Rectangle()
                }
            }
            .frame(height: 400)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            // INFORMATION
            HStack(alignment: .top) {
                
                // DETAILS
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    // PRICE
                    HStack {
                        Text("$567")
                        Text("night")
                    }
                }
                
                Spacer()
                
                // RATING
                HStack(spacing: 5) {
                    Image(systemName: "star.fill")
                    
                    Text("4.6")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ExploreItemView()
}
