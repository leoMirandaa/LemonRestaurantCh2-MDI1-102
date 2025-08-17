//
//  AboutView.swift
//  LemonRestaurantC2
//
//  Created by Samantha Jimenez on 05/08/25.
//

import SwiftUI

struct AboutView: View {
    
    let userName = "Samantha"
    @State private var orders = 0
    @State private var userName2 = ""
    @State private var reservationCount = 0
    var body: some View {
        VStack{
            Text("Welcome \(userName) to Little Lemon!")
                .font(.title)
                .padding()
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("You have ordered \(orders) times")
            Button("Order again"){
                orders += 1
            }
            //challenge: add another button to reset orders to 0
            Button("Reset"){
                  orders = 0
            }
            
            // mini form
            TextField("Enter your name", text: $userName2)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Hi, \(userName2)")
            
            Button("Add reservation"){
                reservationCount += 1
            }
            Text("Reservations: \(reservationCount)")
                .padding()
            Text(String(repeating: "🍽️",count:reservationCount))
                .padding()
            
        }
        .navigationTitle("About us")
    }
}

#Preview {
    AboutView()
}
