//
//  EventInfoView.swift
//  fp22-happ
//
//  Created by Turner White on 4/23/22.
//

import SwiftUI
import MapKit

struct EventInfoView: View {
    var event: Event
    var body: some View {
        Text(event.eventTitle)
    }
}

struct EventInfoView_Previews: PreviewProvider {
    static var previews: some View {
        EventInfoView(event: Event(eventTitle: "Quad Chilling", eventDesc: "working on happ in the big tent at the quad with some nice weather", eventHost: "Turner", eventLocation: CLLocation(latitude: 39, longitude: -70), eventCategory: EventCategory.clubEvent, numAttending: 0, startTime: Date(), endTime: Date(),
                      eventAddress: ""))
    }
}
