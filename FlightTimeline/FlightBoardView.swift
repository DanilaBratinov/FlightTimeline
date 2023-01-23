//
//  FlightBoardView.swift
//  FlightTimeline
//
//  Created by Данила Братинов on 23.01.2023.
//

import SwiftUI

struct FlightBoardView: View {
    
    @State private var hideCancelled = false
    
    let boardName: String
    let flightInfo: [FlightInformation]
    
    private var shownFlights: [FlightInformation] {
        hideCancelled
        ? flightInfo.filter({ $0.status != .cancelled})
        : flightInfo
    }
    
    var body: some View {
        List(shownFlights) { flight in
            FlightRowView(flight: flight)
        }
        .listStyle(.plain)
        .navigationTitle(boardName)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Toggle("Hide cancelled", isOn: $hideCancelled)
            }
        }
    }
}

struct FlightBoardView_Previews: PreviewProvider {
    static var previews: some View {
        FlightBoardView(boardName: "Flight Board", flightInfo: FlightInformation.generateFlights())
    }
}
