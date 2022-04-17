//
//  MapViewModel.swift
//  fp22-happ
//
//  Created by Turner White on 4/16/22.
//

import Foundation
import MapKit

enum MapDetails {
    static let defaultCenter = CLLocationCoordinate2D(latitude: 35.9132, longitude: -79.0558)
    static let defaultSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
}

final class MapViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager?
    @Published var region = MKCoordinateRegion(center:MapDetails.defaultCenter, span:MapDetails.defaultSpan)
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
        } else {
            print("Location not enabled")
        }
    }
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
            
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Location is restricted, likely due to parental controls")
        case .denied:
            print("Location permission denied, go to settings and enable location usage.")
        case .authorizedAlways, .authorizedWhenInUse:
            locationManager.startUpdatingLocation()
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MapDetails.defaultSpan)
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}
