//
//  RentalData.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import Foundation


class RentalData {
    
    static var rentals: [Rental] = [
        
        Rental(
            id: NSUUID().uuidString,
            ownerID: NSUUID().uuidString,
            owenerName: "John Smith",
            ownerimageUrl: "male-1",
            title: "Cozy Apartment near Downtown",
            rating: 4.5,
            numReviews: 29,
            type: .apartment,
            images: [
                "listing-1",
                "listing-2",
                "listing-4",
                "listing-8",
                "listing-5"
            ],
            numberOfBedrooms: 2,
            numberOfBathrooms: 3,
            numberOfBeds: 1,
            numberOfGuests: 4,
            pricePerNight: 100,
            latitude: 37.7749,
            longitude: -122.4194,
            city: "San Francisco",
            state: "CA",
            features: [.selfCheckin, .superHost],
            facilities: [.wifi, .kitchen, .tv, .laundry, .alarmSystem]
        ),
        
        Rental(
            id: NSUUID().uuidString,
            ownerID: NSUUID().uuidString,
            owenerName: "Jane Miller",
            ownerimageUrl: "female-2",
            title: "Spacious House with Garden",
            rating: 5.0,
            numReviews: 203,
            type: .house,
            images: [
                "listing-4",
                "listing-5",
                "listing-2",
                "listing-6"
            ],
            numberOfBedrooms: 3,
            numberOfBathrooms: 4,
            numberOfBeds: 2,
            numberOfGuests: 6,
            pricePerNight: 150,
            latitude: 34.0522,
            longitude: -118.2437,
            city: "Los Angeles",
            state: "CA",
            features: [.superHost],
            facilities: [.pool, .kitchen, .wifi, .tv, .laundry]
        ),
        
        Rental(
            id: NSUUID().uuidString,
            ownerID: NSUUID().uuidString,
            owenerName: "Emily Johnson",
            ownerimageUrl: "female-1",
            title: "Modern Townhouse in the Heart of the City",
            rating: 4.2,
            numReviews: 120,
            type: .townHouse,
            images: [
                "listing-7",
                "listing-8",
                "listing-9",
                "listing-1",
                "listing-2"
            ],
            numberOfBedrooms: 2,
            numberOfBathrooms: 2,
            numberOfBeds: 1,
            numberOfGuests: 3,
            pricePerNight: 120,
            latitude: 40.7128,
            longitude: -74.0060,
            city: "New York",
            state: "NY",
            features: [.selfCheckin],
            facilities: [.wifi, .office, .balcony, .kitchen, .alarmSystem]
        ),
        
        Rental(
            id: NSUUID().uuidString,
            ownerID: NSUUID().uuidString,
            owenerName: "Michael Brown",
            ownerimageUrl: "male-2",
            title: "Luxurious Villa with Ocean View",
            rating: 4.8,
            numReviews: 37,
            type: .villa,
            images: [
                "listing-10",
                "listing-1",
                "listing-2",
                "listing-3",
                "listing-4"
            ],
            numberOfBedrooms: 4,
            numberOfBathrooms: 5,
            numberOfBeds: 3,
            numberOfGuests: 8,
            pricePerNight: 300,
            latitude: 33.6844,
            longitude: -117.8265,
            city: "Newport Beach",
            state: "CA",
            features: [.superHost],
            facilities: [.pool, .kitchen, .wifi, .tv, .alarmSystem]
        ),
        
        Rental(
            id: NSUUID().uuidString,
            ownerID: NSUUID().uuidString,
            owenerName: "Chris Anderson",
            ownerimageUrl: "male-3",
            title: "Charming Cottage with Garden",
            rating: 4.6,
            numReviews: 32,
            type: .house,
            images: [
                "listing-5",
                "listing-6",
                "listing-7"
            ],
            numberOfBedrooms: 2,
            numberOfBathrooms: 2,
            numberOfBeds: 1,
            numberOfGuests: 4,
            pricePerNight: 130,
            latitude: 41.8781,
            longitude: -87.6298,
            city: "Chicago",
            state: "IL",
            features: [.selfCheckin],
            facilities: [.kitchen, .wifi, .tv, .laundry]
        ),
        
        Rental(
            id: NSUUID().uuidString,
            ownerID: NSUUID().uuidString,
            owenerName: "Sophie Miller",
            ownerimageUrl: "female-3",
            title: "Sunny Apartment with Panoramic Views",
            rating: 4.9,
            numReviews: 72,
            type: .apartment,
            images: [
                "listing-8",
                "listing-9",
                "listing-10",
                "listing-1"
            ],
            numberOfBedrooms: 1,
            numberOfBathrooms: 1,
            numberOfBeds: 1,
            numberOfGuests: 2,
            pricePerNight: 90,
            latitude: 37.3382,
            longitude: -121.8863,
            city: "San Jose",
            state: "CA",
            features: [.superHost],
            facilities: [.wifi, .kitchen, .tv]
        ),
        
        Rental(
            id: NSUUID().uuidString,
            ownerID: NSUUID().uuidString,
            owenerName: "David Clark",
            ownerimageUrl: "male-4",
            title: "Rustic Cabin Retreat in the Mountains",
            rating: 4.7,
            numReviews: 14,
            type: .house,
            images: [
                "listing-2",
                "listing-3",
                "listing-4",
                "listing-5"
            ],
            numberOfBedrooms: 3,
            numberOfBathrooms: 3,
            numberOfBeds: 2,
            numberOfGuests: 6,
            pricePerNight: 180,
            latitude: 39.5501,
            longitude: -105.7821,
            city: "Denver",
            state: "CO",
            features: [.selfCheckin, .superHost],
            facilities: [.kitchen, .wifi, .tv, .laundry, .balcony]
        )
    ]
    
}
