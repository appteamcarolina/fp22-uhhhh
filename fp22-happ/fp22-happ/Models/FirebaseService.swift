//
//  FirebaseService.swift
//  fp22-happ
//
//  Created by Turner White on 4/16/22.
//

import Foundation
import FirebaseAuth
import Firebase

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

class firestoreManager {
    func getGlobalEventData() {
        let db = Firestore.firestore()
        db.collection("")
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

