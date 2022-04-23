//
//  SearchViewModel.swift
//  fp22-happ
//
//  Created by Turner White on 4/23/22.
//

import Foundation
import Firebase

final class SearchViewModel: ObservableObject {
    @Published var list = [Event]()
    
    func getClubEventList() {
        
    }
}
