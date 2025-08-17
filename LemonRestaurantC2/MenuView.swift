//
//  MenuView.swift
//  LemonRestaurantC2
//
//  Created by Leo Miranda on 8/14/25.
//

import SwiftUI

struct MenuView: View {
    /*
    let menuItems = [
        "Pizza": 9.99,
        "Pasta": 10.50,
        "Salad": 6.00,
        "Soup": 4.75,
        "Steak": 14.99,
        "Chocolate Cake": 5.75
    ]
     */
    
    @State private var showMessage:Bool = false
    @State private var showThankYouMessage:Bool = false
    
    let menuItems = [
        MenuItem(
            name: "Pizza",
            description: "Cheesy and hot",
            price: 9.0
        ),
        
        MenuItem(
            name: "Steak",
            description: "Grilled to perfection",
            price: 15.0
        ),
        
        MenuItem(
            name: "Pasta",
            description: "Spaghetti",
            price: 6.0
        ),
        
        MenuItem(
            name: "Caesar Salad",
            description: "Romaine lettuce with creamy Caesar dresssing",
            price: 10.99
        )
    ]
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                
                Text("Today's Menu")
                    .font(.largeTitle)
            }
            .padding()
            
            // VStack
            VStack(spacing: 20) {
                Toggle("Show an special text", isOn: $showMessage)
                    .padding()
                
                if showMessage {
                    Text("You unlocked a surprise!")
                        .font(.title3)
                        .foregroundColor(.green)
                }
                
                // Assignment#1
                Toggle("Show thank your message", isOn: $showThankYouMessage)
                    .padding()
                
                if showThankYouMessage {
                    Text("Thanks for visiting Little Lemon!")
                        .foregroundColor(.blue)
                        .italic()
                }
                
            }
            
            List(menuItems){ item in
                MenuItemView(item: item)
            }
            
            /*List {
                ForEach(menuItems.sorted(by: {$0.key > $1.key}), id: \.key){(name, price) in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(name)
                                .font(.headline)
                            
                            Text("$ \(price, specifier:"%.2f")")
                                .foregroundColor(.secondary)
                            
                            if price < 7 {
                                Text("$\(price, specifier:"%.2f")")
                                    .foregroundColor(.green)
                            }
                        }
                    }
                }
            }*/
            
        }
    }
}

#Preview {
    MenuView()
}
