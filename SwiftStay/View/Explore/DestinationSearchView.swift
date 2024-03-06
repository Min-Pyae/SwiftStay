//
//  DestinationSearchView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State var destination: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            
            // DISMISS BUTTON
            Button(action: {
                withAnimation(.snappy) {
                    show.toggle()
                }
            }, label: {
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.gray)
            })
            
            
            // SEARCH BAR
            VStack(alignment: .leading) {
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack() {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    
                    TextField("Search destinations", text: $destination)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay {
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1.0)
                        .foregroundStyle(.gray)
                    
                }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 10)
            
            // DATE SELECTION VIEW
            CollapsedPickerView(title: "When", buttonTitle: "Add dates")
            
            // GUESTS ADDITION VIEW
            CollapsedPickerView(title: "Who", buttonTitle: "Add guests")
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}

struct CollapsedPickerView: View {
    
    var title: String
    var buttonTitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack() {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(buttonTitle)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
            
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 10)
    }
}
