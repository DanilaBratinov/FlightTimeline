//
//  UserProfileView.swift
//  FlightTimeline
//
//  Created by Данила Братинов on 23.01.2023.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        Image(systemName: "person.circle")
            .resizable()
            .frame(width: 120, height: 120)
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
