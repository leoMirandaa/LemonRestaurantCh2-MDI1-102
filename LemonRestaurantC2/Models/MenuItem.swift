//
//  MenuItem.swift
//  LemonRestaurantC2
//
//  Created by Leo Miranda on 8/16/25.
//

import Foundation

struct MenuItem: Identifiable {
    var id:UUID = UUID()
    var name: String
    var description: String
    var price: Double
}
