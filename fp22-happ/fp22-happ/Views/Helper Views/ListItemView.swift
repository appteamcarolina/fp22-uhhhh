//
//  ListItemView.swift
//  fp22-happ
//
//  Created by Turner White on 4/23/22.
//

import SwiftUI
import MapKit

struct ListItemView: View {
    var event: Event
    var body: some View {
        Text("\(event.eventTitle)")
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(event: Event(eventTitle: "Test", eventDesc: "test desc", eventHost: "Turner", eventLocation: CLLocation(latitude: 39, longitude: -70), eventCategory: EventCategory.clubEvent, numAttending: 0, startTime: Date(), endTime: Date()))
    }
}
