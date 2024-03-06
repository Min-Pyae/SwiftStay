//
//  ExploreView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                SearchAndFilterBar()
                
                ScrollView {
                    LazyVStack(spacing: 30) {
                        ForEach(1...10, id: \.self) { _ in
                            ExploreItemView()
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ExploreView()
}
