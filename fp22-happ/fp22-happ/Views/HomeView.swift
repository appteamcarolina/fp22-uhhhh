//
//  HomeView.swift
//  fp22-happ
//
//  Created by Bailey Van Wormer on 4/11/22.
//

import SwiftUI
import MapKit

struct HomeView: View {
    var body: some View {
        TabView {
            MapView(coordinate: CLLocationCoordinate2D(latitude: 35.9132, longitude: -79.0558))
                .tabItem {
                    VStack {
                        Image(systemName: "map")
                        Text("Map")
                    }
                }.ignoresSafeArea()
            SearchView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                }
            }
            AccountView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Account")
                }
            }
        }.accentColor(.black)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
