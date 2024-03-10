//
//  CollapsableViewModifier.swift
//  SwiftStay
//
//  Created by Chris Min on 10/03/2024.
//

import SwiftUI

struct CollapsableViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        
        content
            .padding()
            .background(.collapsedPickerBackground)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 10)
        
    }
    
}
