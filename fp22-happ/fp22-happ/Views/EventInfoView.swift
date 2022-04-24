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
        ScrollView(.vertical) {
            VStack {
                
                Text("Event Information")
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Divider()
                
                Text("Event Name")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top)
                    .padding(.horizontal)
                    .padding(.bottom, 5.0)
                    .foregroundColor(.gray)
                
                Text(event.eventTitle)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                    .padding(.horizontal)
                
                Text("Event Host")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top)
                    .padding(.horizontal)
                    .padding(.bottom, 5.0)
                    .foregroundColor(.gray)
                
                Text(event.eventHost)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                    .padding(.horizontal)
                
                Text("Event Address")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top)
                    .padding(.horizontal)
                    .padding(.bottom, 5.0)
                    .foregroundColor(.gray)
                
                Text(
    """
    555 Paul Hardin Drive \
    Chapel Hill, NC 27514
    """
                )
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                    .padding(.horizontal)
                
                Text("Event Description")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top)
                    .padding(.horizontal)
                    .padding(.bottom, 5.0)
                    .foregroundColor(.gray)
                
                Text(event.eventDesc)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                    .padding(.horizontal)
                
            }
            
            VStack {
                Text("Number Attending")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top)
                    .padding(.horizontal)
                    .padding(.bottom, 5.0)
                    .foregroundColor(.gray)
                
                Text(String(event.numAttending))
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                    .padding(.horizontal)
            }
        }
        
        
        Spacer()
    }
}

struct EventInfoView_Previews: PreviewProvider {
    static var previews: some View {
        EventInfoView(event: Event(eventTitle: "Quad Chilling", eventDesc: "working on happ in the big tent at the quad with some nice weather", eventHost: "Turner", eventLocation: CLLocation(latitude: 39, longitude: -70), eventCategory: EventCategory.clubEvent, numAttending: 0, startTime: Date(), endTime: Date(),
                      eventAddress: ""))
    }
}