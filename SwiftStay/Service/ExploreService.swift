//
//  ExploreService.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import Foundation

class ExploreService {
    func fetchRentals() async throws -> [Rental] {
        return RentalData.rentals
    }
}
