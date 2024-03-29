//
//  CollapsedPickerView.swift
//  SwiftStay
//
//  Created by Chris Min on 08/03/2024.
//

import SwiftUI

struct CollapsedPickerView: View {
    
    var title: String
    var description: String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack() {
                
                // TITLE
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                // DESCRIPTION
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
            
        }
        
    }
}

#Preview {
    CollapsedPickerView(title: "When", description: "Add date")
}
