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
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("\(event.eventTitle)").font(.headline)
                    Spacer()
                    Text("Num Attending: \(event.numAttending)")
                }
                Text("\(event.eventDesc)").font(.subheadline)
                Text("Location: \(event.eventLocation.coordinate.latitude), \(event.eventLocation.coordinate.longitude)")
            }
            
            Spacer()
        }
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(event: Event(eventTitle: "Quad Chilling", eventDesc: "working on happ in the big tent at the quad with some nice weather", eventHost: "Turner", eventLocation: CLLocation(latitude: 39, longitude: -70), eventCategory: EventCategory.clubEvent, numAttending: 0, startTime: Date(), endTime: Date(),eventAddress: ""))
    }
}
