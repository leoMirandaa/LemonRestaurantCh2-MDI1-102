//
//  Customer.swift
//  LemonRestaurantC2
//
//  Created by Leo Miranda on 8/21/25.
//

import Foundation

struct Customer {
    var name: String
    var email: String
    var isLoyaltyMember: Bool
    var favoriteDishes: [String]
    
    //   Add a method called customerSummary() that returns a string summary like:
    func customerSummary() -> String {
        let loyalty = isLoyaltyMember ? "is a loyalty member" : "is not a loyalty member"
        
        let dishes = favoriteDishes.joined(separator: ", ")
        
        return "\(name) \(loyalty). Favorite dishes: \(dishes)"
    }
}
