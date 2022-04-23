//
//  FirebaseService.swift
//  fp22-happ
//
//  Created by Turner White on 4/16/22.
//

import Foundation
import FirebaseAuth
import Firebase
import CoreLocation
import MapKit

class AuthViewModel: ObservableObject {
    let auth = Auth.auth()
    
    @Published var signedIn = false
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { [weak self]
            result, error in
            guard result != nil, error == nil else {
                return
            }
            
            //Success
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }
    
    func signUp(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { [weak self]
            result, error in
            guard result != nil, error == nil else {
                return
            }
            
            //Success
            DispatchQueue.main.async {
                self?.signedIn = true
            }
            
        }
    }
    func signOut() {
        try? auth.signOut()
        self.signedIn = false
    }
    
}

class firestoreManager: ObservableObject{
    
    init() {
        getGlobalEventData()
    }
    
    @Published var eventList = [Event]()
    @Published var eventLocationList = [CLLocationCoordinate2D]()
    func getGlobalEventData() {
        let db = Firestore.firestore()
        //for category in EventCategory.allCases {
            db.collection("globalEvents").document("clubEvents").collection("eventList").getDocuments { snapshot, error in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                if let snapshot = snapshot {
                    DispatchQueue.main.async {
                        self.eventList = snapshot.documents.map { d in
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
    
    func addEvent(event: Event) {
        guard let userID = Auth.auth().currentUser?.uid else {return}
        let db = Firestore.firestore()
        db.collection("globalEvents").document("\(event.eventCategory.rawValue)s").collection("eventList")
            .addDocument(data: ["endTime":event.endTime.timeIntervalSince1970,
                                "eventCategory":event.eventCategory.rawValue,
                                "eventDesc":event.eventDesc,
                                "eventHost":userID,
                                "eventLocation":GeoPoint(latitude:event.eventLocation.coordinate.latitude,longitude: event.eventLocation.coordinate.longitude),
                                "eventTitle":event.eventTitle,
                                "numAttending":event.numAttending,
                                "startTime":event.startTime.timeIntervalSince1970
                               ]) { error in
                if error == nil {
                    self.getGlobalEventData()
                }
            }
        
    }
    
    
}

