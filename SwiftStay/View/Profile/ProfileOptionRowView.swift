//
//  ProfileOptionRowView.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import SwiftUI

struct ProfileOptionRowView: View {
    
    var imageName: String
    var title: String
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                // OPTION IMAGE NAME
                Image(systemName: imageName)
                
                // OPTION TITLE
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            
            Divider()
            
        }
        
    }
}

#Preview {
    ProfileOptionRowView(imageName: "gear", title: "Settings")
}
