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
    
    
    /*
     Computed Properties
     
     Computed property is a property that doesn't store a value directly.
     Instead, it calculates its value every time it's accessed, using custom logic you define.
     
     Syntax
     
     var propertyName: Type {
     return a calculated value
     }
     */
    
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
        ),
        
        MenuItem(
            name: "Lasagna",
            description: "Lasagna description",
            price: 12.99
        ),
        
        MenuItem(
            name: "Tacos",
            description: "Hot and spicy",
            price: 4.99,
        ),
        
        MenuItem(
            name: "Ramen",
            description: "A delicious dish",
            price: 19.99
        )
    ]
    
    
    // Computed property
    var sortedMenuItems: [MenuItem] {
        menuItems.sorted {$0.price < $1.price}
    }
    
    // Assignment#3
    //The number of premium items (price ≥ $10)
    // OP 1
    var premiumCount: Int {
        let premiumFilter = menuItems.filter { item in
            item.price >= 10
        }
        
        return premiumFilter.count
    }
    
    // OP2
    var premiumCount2: Int {
        menuItems.filter {$0.price >= 10 }.count
    }
    
    //The number of regular items (price < $10)
    // OP 1
    var regularCount: Int {
        let regularItems = menuItems.filter { item in
            item.price < 10
        }
        
        return regularItems.count
    }
    
    //OP 2
    var regularCount2: Int {
        menuItems.filter { $0.price < 10}.count
    }
    
    //The total price of all currently visible menu items (filtered or not)
    var totalPrice: Double {
        let total = menuItems.reduce(0.0) { accumulator, item in
            accumulator + item.price
        }
        
        return total
    }
    
    // Average price
    var averagePrice: Double {
        let prices = menuItems.map { item in
            item.price
        }
        
        let total = prices.reduce(0.0) { accumulator, price in
            accumulator + price
        }
        
        let average = total / Double(prices.count)
        
        return average
    }
    
    // Average price (Returns String)
    var averagePrice2: String {
        let prices = menuItems.map { item in
            item.price
        }
        
        let total = prices.reduce(0.0) { accumulator, price in
            accumulator + price
        }
        
        let average = total / Double(prices.count)
        
        //        return average
        
        return String(format: "%.2f", average)
        
    }

    
    @State private var showMessage:Bool = false
    @State private var showThankYouMessage:Bool = false
    @State private var showDesserts:Bool = false
    
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
            
            //Assignment#3
            Text("Average price: $\(averagePrice, specifier: "%.2f")")
                .foregroundColor(.gray)
                .font(.title3)
            
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
                
                Button("View Desserts"){
                    showDesserts.toggle()
                }
                .padding()
                .background(.green.opacity(0.4))
                .cornerRadius(12)
                .foregroundColor(.black)
                
                .sheet(isPresented: $showDesserts){
                    DessertView()
                }
                
            }
            
//            List(menuItems){ item in
            List(sortedMenuItems){ item in
                MenuItemView(item: item)
            }
            
            // Assignment#3
            Text("Premium: \(premiumCount) | Regular: \(regularCount) | total: $\(totalPrice, specifier: "%.2f")")
                .padding()
                .background(.yellow.opacity(0.2))
                .cornerRadius(8)
                
            
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
