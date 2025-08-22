//
//  DessertItem.swift
//  LemonRestaurantC2
//
//  Created by Leo Miranda on 8/19/25.
//

import Foundation

struct DessertItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var price: Double
}
