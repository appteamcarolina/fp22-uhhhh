//
//  NewEventSheetView.swift
//  fp22-happ
//
//  Created by Turner White on 4/21/22.
//

import SwiftUI
import CoreLocation
import FirebaseAuth

struct NewEventSheetView: View {
    @Binding var showEventSheet: Bool
    @State var vm: MapViewModel
    @State var fireManager: firestoreManager
    @State var eventTitle = ""
    @State var eventDesc = ""
    //eventHost
    @State var eventLocation = CLLocation(latitude: 39, longitude: -70)
    @State var eventCategory = EventCategory.clubEvent
    @State var startTime: Date = Date()
    @State var endTime: Date = Date()
    @State var eventAddress: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                
                Group {
                    Text("Create Event")
                        .font(.title)
                        .bold()
                        .padding()
                    
                    Text("Event Info")
                        .font(.headline)
                        .bold()
                        .padding()
                    
                    TextField("Enter a title for your event", text: $eventTitle)
                        .textFieldStyle(.roundedBorder)
                        .padding([.horizontal, .bottom])
                    TextField("Enter a description for your event", text: $eventDesc).textFieldStyle(.roundedBorder).padding([.horizontal,.bottom])
                    
                    HStack {
                        Text("Select a category for your event").foregroundColor(.secondary)
                        
                        Picker(selection: $eventCategory,label: Text("Select a category for your event")) {
                            ForEach(Array(EventCategory.allCases), id: \.self) {
                                Text($0.rawValue)
                            }
                        }.labelStyle(.titleAndIcon).pickerStyle(.menu)
                    }
                }
                
                Group {
                    Text("Time Info")
                        .font(.headline)
                        .bold()
                        .padding()
                    
                    
                    DatePicker("Start of event", selection: $startTime, displayedComponents: [.date,.hourAndMinute])
                        .padding()
                    
                    DatePicker("End of event", selection: $endTime, displayedComponents:[.date,.hourAndMinute])
                        .padding()
                }
                Text("Location")
                    .font(.headline)
                    .bold()
                    .padding()
                
                TextField("Enter Event Address", text: $eventAddress)
                    .textFieldStyle(.roundedBorder)
                    .padding([.horizontal, .bottom])
                
                
                Button {
                    guard let userID = Auth.auth().currentUser?.uid else {return}
                    
                    let geo = CLGeocoder()
                    geo.geocodeAddressString(eventAddress, completionHandler: { placemarks,error in
                        if let error = error {
                            print("Unable to Forward Geocode Address (\(error))")
                            return
                        }
                        
                        var location: CLLocation?
                        
                        if let placemarks = placemarks, placemarks.count > 0 {
                            location = placemarks.first?.location
                        }
                        
                        guard let location = location else {
                            print("couldn't find location")
                            return
                        }
                        
                        self.eventLocation = location
                        
                        
                        let event = Event(eventTitle: eventTitle, eventDesc: eventDesc, eventHost: userID , eventLocation: eventLocation, eventCategory: eventCategory, numAttending: 0, startTime: startTime, endTime: endTime)
                        fireManager.addEvent(event: event)
                        showEventSheet.toggle()
                    })
                } label: {Text("Create Event")}
            }
            
        }
    }
}

struct NewEventSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NewEventSheetView(showEventSheet: .constant(true), vm: MapViewModel(),fireManager: firestoreManager())
    }
}
