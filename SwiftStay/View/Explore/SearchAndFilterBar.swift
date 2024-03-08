//
//  SearchAndFilterBar.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct SearchAndFilterBar: View {
    
    var location: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 3) {
                Text(location.isEmpty ? "Where to?": location)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("\(location.isEmpty ? "Anywhere - " : "") Any Week - Add guests")
                    .font(.caption2)
            }
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding()
        .overlay {
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray))
                .shadow(color: .black.opacity(0.5), radius: 2)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchAndFilterBar(location: "New York")
}
