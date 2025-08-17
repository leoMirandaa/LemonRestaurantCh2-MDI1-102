//
//  MenuItemView.swift
//  LemonRestaurantC2
//
//  Created by Leo Miranda on 8/16/25.
//

import SwiftUI

struct MenuItemView: View {
    var item: MenuItem
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading){
                Text(item.name)
                    .font(.headline)
                
                Text("$ \(item.price, specifier: "%.2f")")
                    .foregroundColor(Color.secondary)
            }
            
            Spacer()
            
            if item.price > 10 {
                Text("Is premium!")
            }else if item.price < 7 {
                Text("$\(item.price, specifier:"%.2f")")
                    .foregroundColor(.green)
            }
        }
    }
}

/*
#Preview {
    MenuItemView()
}
*/
