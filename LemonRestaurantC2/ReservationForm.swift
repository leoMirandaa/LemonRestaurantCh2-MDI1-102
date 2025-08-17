//
//  ReservationForm.swift
//  LemonRestaurantC2
//
//  Created by Samantha Jimenez on 07/08/25.
//

import SwiftUI

struct ReservationForm: View {
    // variable section
    @State var userName: String = ""
    @State var guestCount: Int = 0
    @State var reservationDate = Date()
    @State var allergyNotes = ""
    @State var showSummary = false
    
    var body: some View {
        NavigationStack{
            Form{
                Section(header: Text("Reservation Details")){
                    TextField("Insert your name", text:$userName)
                    
                    if userName.isEmpty {
                        Text("Please insert your name")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    
                    Stepper("Guest: \(guestCount)", value:$guestCount, in: 1...10)
                    
                    if guestCount > 5 {
                        Text("For large parties, we will contact you")
                            .foregroundColor(.yellow)
                            .font(.caption)
                    }
                    DatePicker("Date", selection: $reservationDate, displayedComponents: [.date, .hourAndMinute])
                    TextField("Allergy Notes", text: $allergyNotes)
                    
                    Button("Confirm Reservation"){
                        if !userName.isEmpty { // if not empty
                            showSummary = true
                        }
                        
                    }
                    .disabled(userName.isEmpty)
                    .navigationDestination(isPresented: $showSummary){
                        ReservationSummaryView(
                            name:$userName,
                            date: $reservationDate,
                            guests:$guestCount,
                            allergyNotes:$allergyNotes                                
                        )
                    }
                }
                
            }
        }
        .navigationTitle("Book a table")
    }
}

#Preview {
    ReservationForm()
}
