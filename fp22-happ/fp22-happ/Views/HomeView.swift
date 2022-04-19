//
//  HomeView.swift
//  fp22-happ
//
//  Created by Bailey Van Wormer on 4/11/22.
//

import SwiftUI
import MapKit

struct HomeView: View {
    var vm: AuthViewModel
    var body: some View {
        TabView {
            MapView()
                .tabItem {
                    VStack {
                        Image(systemName: "map")
                        Text("Map")
                    }
                }
                .ignoresSafeArea()
            SearchView()
                .tabItem {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                }
            }
            AccountView(vm: vm)
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
        HomeView(vm: AuthViewModel())
    }
}
