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
    var body: some View {
    
        ZStack {
            
            Map(coordinateRegion: $vm.region,showsUserLocation: true).onAppear {
                vm.checkIfLocationServicesIsEnabled()
            }
            
            Button {
                // Pull up event sheet
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
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
