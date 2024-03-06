//
//  ExploreDetailsView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI
import MapKit

struct ExploreDetailsView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            
            ZStack(alignment: .topLeading) {
                ImageCarouselView()
                    .frame(height: 400)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background(
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        )
                        .padding(35)
                })
            }
            
            
            VStack(alignment: .leading, spacing: 6) {
                
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack() {
                    Image(systemName: "star.fill")
                    
                    Text(" 4.86 ")
                    
                    Text(" - ")
                    
                    Text("28 reviews")
                        .underline()
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                
                Text("Miami, Florida")
                    .font(.footnote)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // HOST INFO VIEW
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Entire villa hosted by ")
                        .font(.headline)
                    
                    Text("John Smith")
                        .font(.headline)
                        .padding(.bottom, 3)
                    
                    HStack {
                        Text("4 guests - ")
                        Text("4 bedrooms - ")
                        Text("4 beds - ")
                        Text("4 baths")
                    }
                    .font(.caption2)
                }
                
                Spacer()
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                
            }
            .padding()
            
            Divider()
            
            // FEATURES
            VStack(alignment: .leading, spacing: 16) {
                ForEach(1 ..< 3) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhost are experienced, highly rated hosts who are commited to providing great stars for guests,")
                                .font(.caption)
                        }
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            // BEDROOM VIEW
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 32) {
                    ForEach(1 ..< 5) { bedroom in
            
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Image(systemName: "bed.double")
                            
                            Text("Bedroom \(bedroom)")
                                .font(.caption)
                                .fontWeight(.semibold)
                        }
                        .padding()
                        .frame(width: 132, height: 100, alignment: .leading)
                        .overlay {
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(lineWidth: 1.0)
                                .foregroundStyle(.gray)
                        }
                    }
                }
            }
            .padding()
            
            Divider()
            
            // FACILITIES
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                
                ForEach(1 ..< 5) { facility in
                    HStack {
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        
                        Text("Wifi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            // MAP VIEW
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you will be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
        }
        .ignoresSafeArea()
        .padding(.bottom, 70)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote)
                        
                        Text("Oct 18 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    // RESERVE BUTTON
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(width: 140, height: 40)
                            .background(Color(.purple))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }

                }
                .padding(.horizontal, 30)
            }
            .background(Color(.white))
        }
    }
}

#Preview {
    ExploreDetailsView()
}
