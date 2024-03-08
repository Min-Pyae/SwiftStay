//
//  rental.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import Foundation

struct Rental: Identifiable, Codable, Hashable {
    let id: String
    
    // OWNER INFO
    let ownerID, owenerName, ownerimageUrl: String
    
    // listing info
    let title: String
    var rating: Double
    var numReviews: Int
    let type: RentalType
    var images: [String]
    
    // ROOMS
    let numberOfBedrooms, numberOfBathrooms, numberOfBeds: Int
    
    // PRICING
    let numberOfGuests: Int
    var pricePerNight: Double
    
    // LOCATION
    let latitude, longitude: Double
    let city: String
    let state: String
    
    // RENTAL FEATURES
    var features: [RentalFeature]
    
    // RENTAL FACILITIES
    var facilities: [RentalFacility]
}


// RENTAL FEATURE
enum RentalFeature: Int, Codable, Identifiable, Hashable {
    case selfCheckin
    case superHost

    var id: Int {
        return self.rawValue
    }

    var title: String {
        switch self {
        case .selfCheckin: "Self Check-in"
        case .superHost: "Superhost"
        }
    }

    var subTitle: String {
        switch self {
        case .selfCheckin: "Check yourself in with the keypad."
        case .superHost: "Superhosts are experienced, highly rated hosts who are committed to providing great stays for guests"
        }
    }

    var imageName: String {
        switch self {
        case .selfCheckin: "door.left.hand.open"
        case .superHost: "medal"
        }
    }
}


// RENTAL FACILITY
enum RentalFacility: Int, Codable, Identifiable, Hashable {
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony

    var id: Int {
        return self.rawValue
    }

    var title: String {
        switch self {
        case .pool: "Pool"
        case .kitchen: "Kitchen"
        case .wifi: "Wifi"
        case .laundry: "Laundry"
        case .tv: "TV"
        case .alarmSystem: "Alarm System"
        case .office: "Office"
        case .balcony: "Balcony"
        }
    }

    var imageName: String {
        switch self {
        case .pool: "figure.pool.swim"
        case .kitchen: "fork.knife"
        case .wifi: "wifi"
        case .laundry: "washer"
        case .tv: "tv"
        case .alarmSystem: "checkerboard.shield"
        case .office: "pencil.and.ruler.fill"
        case .balcony: "building"
        }
    }
}


// RENTAL TYPE
enum RentalType: Int, Codable, Identifiable, Hashable {
    case apartment
    case house
    case townHouse
    case villa

    var description: String {
        switch self {
        case .apartment: "Apartment"
        case .house: "House"
        case .townHouse: "Town House"
        case .villa: "Villa"
        }
    }

    var id: Int {
        return self.rawValue
    }
}

 
