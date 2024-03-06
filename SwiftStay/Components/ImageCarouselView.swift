//
//  ImageCarouselView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct ImageCarouselView: View {
    var body: some View {
        TabView {
            ForEach(0...3, id: \.self) { image in
                Rectangle()
                    .foregroundStyle(.cyan)
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ImageCarouselView()
}
