//
//  FlightDetailsView.swift
//  FlightTimeline
//
//  Created by Данила Братинов on 23.01.2023.
//

import SwiftUI

struct FlightDetailsView: View {
    @Binding var isPresented: Bool
    let flight: FlightInformation
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(flight.airline) Flight \(flight.number)")
                    .font(.largeTitle)
                Spacer()
                Button("Done") {
                    isPresented = false
                }
            }
            
            Text("\(flight.direction == .arrival ? "From:" : "To:") \(flight.otherAirport)")
    
            Text(flight.flightStatus)
                .foregroundColor(Color(flight.timelineColor))
            Spacer()
        }
        .font(.headline)
        .padding()
    }
}

struct FlightDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FlightDetailsView(isPresented: .constant(true), flight: FlightInformation.generateFlight())
    }
}
