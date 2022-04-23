//
//  SearchViewModel.swift
//  fp22-happ
//
//  Created by Turner White on 4/23/22.
//

import Foundation
import Firebase
import MapKit

final class SearchViewModel: ObservableObject {
    @Published var list = [Event]()
    init() {
        getClubEventList()
    }
    
    func getClubEventList() {
        let db = Firestore.firestore()
        db.collection("globalEvents").document("clubEvents").collection("eventList").getDocuments {snapshot, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            if let snapshot = snapshot {
                DispatchQueue.main.async {
                    self.list = snapshot.documents.map { d in
                        let position = d["eventLocation"] as? GeoPoint
                        let eventLocation = CLLocation(latitude: position?.latitude ?? 39.0, longitude: position?.longitude ?? -78.0)
                        let newEvent = Event(eventTitle: d["eventTitle"] as? String ?? "",
                                             eventDesc: d["eventDesc"] as? String ?? "",
                                             eventHost: d["eventHost"] as? String ?? "",
                                             eventLocation: eventLocation,
                                             eventCategory: d["eventCategory"] as? EventCategory ?? EventCategory.clubEvent,
                                             numAttending: d["numAttending"] as? Int ?? 0,
                                             startTime: Date(timeIntervalSince1970: d["startTime"] as? Double ?? 0.0),
                                             endTime: Date(timeIntervalSince1970: d["endTime"] as? Double ?? 0.0))
                        //print("success")
                        return newEvent
                    }
                }
                
            }
        }
    }
}
