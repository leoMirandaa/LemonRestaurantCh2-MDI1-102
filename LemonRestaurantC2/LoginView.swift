//
//  LoginView.swift
//  LemonRestaurantC2
//
//  Created by Samantha Jimenez on 09/08/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @Binding var userName: String
    
    var body: some View {
        NavigationStack{
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:50)
                
                TextField("Enter the user name", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Login"){
                    if userName == "Sam"{
                        isLoggedIn = true
                    }
                
                }
            }
        }
    }
}

//
//#Preview {
//    LoginView()
//}
