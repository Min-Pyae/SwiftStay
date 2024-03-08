//
//  ExploreViewModel.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    @Published var rentals = [Rental]()
    @Published var searchLocation = ""
    
    private let service: ExploreService
    private var allRentals = [Rental]() // UNFILTERED RENTALS
    
    
    init(service: ExploreService) {
        self.service = service
        
        Task {
            await fetchRentalData()
        }
    }
    
    // FUNCTION FOR FETCHING RENTAL DATA
    func fetchRentalData() async {
        do {
            self.rentals = try await service.fetchRentals()
            self.allRentals = rentals
        } catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    
    
    // FUNCTION FOR FILTERING RENTALS BY LOCATION
    func filterRentalsByLocation() {
        let filteredRentals = rentals.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.rentals = filteredRentals.isEmpty ? allRentals : filteredRentals
    }
    
}
