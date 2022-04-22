//
//  Event.swift
//  fp22-happ
//
//  Created by Turner White on 4/16/22.
//

import Foundation
import CoreLocation

enum EventCategory: String, Equatable, CaseIterable {
    case partyEvent = "partyEvent",
         concertEvent = "concertEvent",
         sportEvent = "sportEvent",
         companyEvent = "companyEvent",
         speakerEvent = "speakerEvent",
         foodEvent = "foodEvent",
         religiousEvent = "religiousEvent",
         clubEvent = "clubEvent",
         generalEvent = "generalEvent"
}

struct Event: Identifiable{
    var id: String {eventHost}
    var eventTitle: String
    var eventDesc: String
    var eventHost: String
    var eventLocation: CLLocation
    var eventCategory: EventCategory
    var numAttending: Int
    var startTime: Date
    var endTime: Date
    
}
