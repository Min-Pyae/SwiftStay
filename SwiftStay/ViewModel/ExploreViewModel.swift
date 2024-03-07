//
//  ExploreViewModel.swift
//  SwiftStay
//
//  Created by Chris Min on 07/03/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var rentals = [Rental]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
    }
    
    func fetchRentalData() async {
        do {
            self.rentals = try await service.fetchRentals()
        } catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
    
}
