//
//  MapView.swift
//  fp22-happ
//
//  Created by Bailey Van Wormer on 4/14/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @StateObject private var vm = MapViewModel()
    
    @State private var showEventSheet: Bool = false
    
    @State var eventName: String = ""
    @State var eventAddress: String = ""
    @State private var date = Date()
    
    var body: some View {
    
        ZStack {
            
            Map(coordinateRegion: $vm.region,showsUserLocation: true).onAppear {
                vm.checkIfLocationServicesIsEnabled()
            }
            
            Button {
                showEventSheet.toggle()
            } label: {
                
                ZStack {
                    
                    Circle()
                        .foregroundColor(.white)
                    .frame(width: 75, height: 75, alignment: .bottomTrailing)
                    
                    Image(systemName: "plus")
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                }
            }
            .frame(width: 350, height: 750, alignment: .bottomTrailing)
            .sheet(isPresented: $showEventSheet, onDismiss: didDismiss) {
                // Add code for sheet UI
                VStack {
                    
                    Text("Add Event")
                        .font(.title)
                        .bold()
                    
                    Text("Name:")
                        .font(.headline)
                        .bold()
                    
                    TextField("Enter Event Name", text: $eventName)
                        .textFieldStyle(.roundedBorder)
                        .padding([.horizontal, .bottom])
                    
                    Text("Date Range")
                        .font(.headline)
                        .bold()
                    
                    DatePicker("Start Date", selection: $date, displayedComponents: [.date])
                    
                    DatePicker("End Date", selection: $date, displayedComponents: [.date])
                    
                    Text("Location")
                        .font(.headline)
                        .bold()
                    
                    TextField("Enter Event Address", text: $eventAddress)
                        .textFieldStyle(.roundedBorder)
                        .padding([.horizontal, .bottom])
                    
                    Text("Category")
                        .font(.headline)
                        .bold()
                    
//                    Picker("Event Category (Choose one)", selection: <#T##Binding<_>#>, content: <#T##() -> _#>)
                    
                    
                    
                }
            }
        }
    }
    
    func didDismiss() {
        // Handle the dismissing action
    }
    
//    enum Category: String, CaseIterable, Identifiable {
//        case Sports
//        case Concerts
//        case Professional
//
//        var id: String { self.rawValue }
//    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
