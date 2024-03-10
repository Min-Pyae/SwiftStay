//
//  AuthenticationButtonTextModifier.swift
//  SwiftStay
//
//  Created by Chris Min on 10/03/2024.
//

import SwiftUI

struct AuthenticationButtonTextModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        content
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .frame(width: 360, height: 48)
            .background(.purple)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        
    }
    
}
