//
//  MainView.swift
//  LemonRestaurantC2
//
//  Created by Samantha Jimenez on 09/08/25.
//

import SwiftUI

struct MainView: View {
    @State private var isLoggedIn = false
    @State private var userName = ""
    
    var body: some View {
        NavigationView{
            if isLoggedIn == true {
                VStack{
                    Text("Welcome \(userName)")
                        .font(.title)
                        .padding()
                    
                    NavigationLink("Make a Reservation",destination: ReservationForm())
                        .padding()
                    
                    //Add a link to the about view
                    NavigationLink("About us",destination:AboutView())
                        .padding()
                    
                    // add a logout button
                    Button("Logout"){
                        isLoggedIn = false
                        userName = ""
                    }
                    
                }
            }else{
                // LoginView(Binding: State , Biniding: State)
                LoginView(isLoggedIn: $isLoggedIn , userName: $userName)
                
            }
            
        }
    }
}

#Preview {
    MainView()
}
