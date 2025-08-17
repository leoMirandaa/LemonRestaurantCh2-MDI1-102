//
//  ReservationSummaryView.swift
//  LemonRestaurantC2
//
//  Created by Samantha Jimenez on 12/08/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    @Binding var name: String
    @Binding var date: Date
    @Binding var guests: Int
    @Binding var allergyNotes: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Reservation Summary").font(.title)
            
            Text("Name \(name)")
            Text("Date \(formattedDate(date:date))")
            Text("Guest #: \(guests)")
            Text("Allergies: \(allergyNotes)")
            
        }
    }
    
    func formattedDate(date: Date)->String{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        
        return formatter.string(from: date)
    }
    
}

//#Preview {
//    ReservationSummaryView()
//}
