//
//  ExploreDetailsView.swift
//  SwiftStay
//
//  Created by Chris Min on 06/03/2024.
//

import SwiftUI
import MapKit

struct ExploreDetailsView: View {
    
    @State private var position: MapCameraPosition
    
    let rental: Rental
    
    
    init(rental: Rental) {
        self.rental = rental
        
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: rental.latitude,
                longitude: rental.longitude
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 0.1,
                longitudeDelta: 0.1
            )
        )
        
        self._position = State(initialValue: .region(region))
    }
    
    
    var body: some View {
        
        ScrollView {
            
            ZStack(alignment: .topLeading) {
                
                // IMAGE CAROUSEL VIEW
                ImageCarouselView(rental: rental)
                    .frame(height: 400)
                
                // DISMISS BUTTON
                DismissButton()
                
            }
            
            
            VStack(alignment: .leading, spacing: 10) {
                
                // RENTAL TITLE
                Text(rental.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                // RATING AND REVIEWS
                HStack() {
                    Image(systemName: "star.fill")
                    
                    Text("\(String(format: "%.1f", rental.rating))")
                    
                    Text(" - ")
                    
                    Text("28 reviews")
                        .underline()
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                
                // LOCATION
                Text("\(rental.city), \(rental.state)")
                    .font(.footnote)
                
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // HOST INFO VIEW
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Entire villa hosted by")
                        .font(.headline)
                    
                    Text(rental.owenerName)
                        .font(.headline)
                        .padding(.bottom, 3)
                    
                    HStack {
                        Text("\(rental.numberOfGuests) guests - ")
                        Text("\(rental.numberOfBedrooms) bedrooms - ")
                        Text("\(rental.numberOfBeds) beds - ")
                        Text("\(rental.numberOfBathrooms) baths")
                    }
                    .font(.caption2)
                }
                
                Spacer()
                
                Image(rental.ownerimageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                
            }
            .padding()
            
            Divider()
            
            // FEATURES
            VStack(alignment: .leading, spacing: 16) {
                ForEach(rental.features) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: feature.imageName)
                        
                        VStack(alignment: .leading) {
                            Text(feature.title)
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text(feature.subTitle)
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
                    ForEach(1 ... rental.numberOfBedrooms, id: \.self) { bedroom in
                        
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
                
                ForEach(rental.facilities) { facility in
                    HStack {
                        Image(systemName: facility.imageName)
                            .frame(width: 32)
                        
                        Text(facility.title)
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
                
                Map(position: $position)
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
            
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 70)
        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack {
                    
                    // PRICE
                    VStack(alignment: .leading) {
                        Text("$\(String(format: "%.2f", rental.pricePerNight))")
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
            .backgroundStyle(.reserveBackground)
        }
        
    }
}

#Preview {
    ExploreDetailsView(rental: RentalData.rentals[0])
}
