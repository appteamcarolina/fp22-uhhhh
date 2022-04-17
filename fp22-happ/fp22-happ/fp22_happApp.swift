//
//  fp22_happApp.swift
//  fp22-happ
//
//  Created by Bailey Van Wormer on 4/11/22.
//

import SwiftUI
import Firebase

@main
struct fp22_happApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
