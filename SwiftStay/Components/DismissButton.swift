//
//  DismissButton.swift
//  SwiftStay
//
//  Created by Chris Min on 08/03/2024.
//

import SwiftUI

struct DismissButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        Button(action: {
            dismiss()
        }, label: {
            Image(systemName: "chevron.left")
                .foregroundStyle(.foreground)
                .background(
                    Circle()
                        .fill(.dismissButtonBackground)
                        .frame(width: 32, height: 32)
                )
                .padding(.horizontal, 30)
                .padding(.vertical, 55)
        })
        
    }
}

#Preview {
    DismissButton()
}
