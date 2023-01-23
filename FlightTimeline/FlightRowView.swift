//
//  FlightRowView.swift
//  FlightTimeline
//
//  Created by Данила Братинов on 23.01.2023.
//

import SwiftUI

struct FlightRowView: View {
    @State private var isPresented = false
    let flight: FlightInformation
    
    var body: some View {
        Button(action: { isPresented.toggle() }) {
            HStack {
                Text("\(flight.airline) \(flight.number)")
                    .frame(width: 120, alignment: .leading)
                Text(flight.otherAirport)
                    .frame(alignment: .leading)
                Spacer()
                Text(flight.flightStatus)
                    .frame(alignment: .trailing)
            }
            .padding(.horizontal)
        }
        .sheet(isPresented: $isPresented) {
            FlightDetailsView(isPresented: $isPresented, flight: flight)
        }
    }
}
struct FlightRowView_Previews: PreviewProvider {
    static var previews: some View {
        FlightRowView(flight: FlightInformation.generateFlight())
    }
}
