//
//  CustomTextField.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import SwiftUI

struct CustomTextField: View {
    
    var image: String
    var placeholderText: String
    var isSureField: Bool
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack (spacing: 20) {
                
                // IMAGE
                Image(systemName: image)
                    .frame(width:20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                // TEXT FIELD
                if isSureField {
                    SecureField(placeholderText, text: $text)
                } else {
                    TextField(placeholderText, text: $text)
                }
                    
            }
            .padding(.bottom, 10)
            
            Divider()
        }
        .padding(.horizontal, 10)
    }
}

//#Preview {
//    CustomTextField(image: <#String#>, placeholderText: <#String#>, isSureField: <#Bool#>, text: <#Binding<String>#>)
//}
